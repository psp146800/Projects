#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "sleep.h"
#include "PmodGYRO.h"
#include "PmodOLED.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

PmodGYRO gyroDevice;
PmodOLED oledDevice;
XGpio BTNInst;
XScuGic INTCInst;

#define MODE_CIRCLE 0
#define MODE_GYRO_DATA 1
#define MODE_OFF 2
#define SHAPE_CIRCLE 0
#define SHAPE_TRIANGLE 1
#define SHAPE_RECTANGLE 2
#define SHAPE_OVAL 3
#define SHAPE_DIAMOND 4

static int current_mode = MODE_OFF;
static int current_shape = SHAPE_CIRCLE;


#define CIRCLE_RADIUS 8
#define MIN_RADIUS 1
#define MAX_RADIUS 200
#define MAX_X (127 - 2*CIRCLE_RADIUS)
#define MAX_Y (31 - 2*CIRCLE_RADIUS)

#define INTC_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID XPAR_AXI_GPIO_0_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
#define BTN_INT XGPIO_IR_CH1_MASK

static int btn_value;
static int circleX;
static int circleY;
static int circleRadius = 10;
static float shapeRotation = 0.0;
static float rotationVelocity = 0.0;
const u8 orientation = 0x0;
const u8 invert = 0x0;

void DemoInitialize(void);
void DemoRun(void);
void DemoCleanup(void);
void EnableCaches(void);
void DisableCaches(void);
void DrawFilledCircle(int centerX, int centerY);
void DrawTriangle(int centerX, int centerY);
void DrawRectangle(int centerX, int centerY);
void DrawOval(int centerX, int centerY);
void DrawDiamond(int centerX, int centerY);
void DrawCurrentShape(int centerX, int centerY);
void InitializeOLED(void);
void DisplayGyroData(void);
static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
static int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);
void BTN_Intr_Handler(void *InstancePtr);
void OLED_DrawLine(PmodOLED *InstancePtr, int x1, int y1, int x2, int y2);
void OLED_DrawTo(PmodOLED *InstancePtr, int x, int y);

int main(void) {
    DemoInitialize();
    DemoRun();
    DemoCleanup();
    return 0;
}

void BTN_Intr_Handler(void *InstancePtr) {
    XGpio_InterruptDisable(&BTNInst, BTN_INT);
    if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) != BTN_INT) {
        return;
    }
    btn_value = XGpio_DiscreteRead(&BTNInst, 1);

    if(btn_value & 0x01) {
        current_mode = MODE_CIRCLE;
        OLED_Clear(&oledDevice);
        circleX = 128/2;
        circleY = 32/2;
        circleRadius = CIRCLE_RADIUS;

        OLED_SetCursor(&oledDevice, 0, 0);
        OLED_PutString(&oledDevice, "Visual Mode");
        OLED_SetCursor(&oledDevice, 0, 2);
        OLED_PutString(&oledDevice, "Btns2 for Shape");
        OLED_SetCursor(&oledDevice, 0, 3);
        OLED_PutString(&oledDevice, "Btn3 for Reset");
        OLED_Update(&oledDevice);

        usleep(1500000);
        OLED_Clear(&oledDevice);
        DrawCurrentShape(circleX, circleY);
    }
    else if(btn_value & 0x02) {
        current_mode = MODE_GYRO_DATA;
        OLED_Clear(&oledDevice);
        OLED_SetCursor(&oledDevice, 0, 2);
        OLED_PutString(&oledDevice, "Data Mode");
        OLED_Update(&oledDevice);
        usleep(1500000);
        OLED_Clear(&oledDevice);


        DisplayGyroData();
    }
    else if(btn_value & 0x04 && current_mode == MODE_CIRCLE) {
        current_shape = (current_shape + 1) % 5;
        if (current_shape != SHAPE_CIRCLE) {
        	circleRadius = CIRCLE_RADIUS;
        }
        OLED_Clear(&oledDevice);
        DrawCurrentShape(circleX, circleY);
    }
    else if(btn_value & 0x08 && current_mode == MODE_CIRCLE) {
        circleX = 128/2;
        circleY = 32/2;
        circleRadius = CIRCLE_RADIUS;
        shapeRotation = 0.0;
        rotationVelocity = 0.0;
        OLED_Clear(&oledDevice);
        DrawCurrentShape(circleX, circleY);
    }

    XGpio_InterruptClear(&BTNInst, BTN_INT);
    XGpio_InterruptEnable(&BTNInst, BTN_INT);
}

void DrawCurrentShape(int centerX, int centerY) {
    OLED_ClearBuffer(&oledDevice);

    // Calculate how much of the shape is visible
    int shapeSize = circleRadius * 2;

    // For non-circle shapes
    if (current_shape != SHAPE_CIRCLE) {
        // For each shape, we calculate whether it intersects the screen boundaries
        int startX = centerX - shapeSize / 2;
        int endX = centerX + shapeSize / 2;
        int startY = centerY - shapeSize / 2;
        int endY = centerY + shapeSize / 2;

        // Check if part of the shape is within the screen boundaries
        if (startX < 0) startX = 0;
        if (endX > 127) endX = 127;
        if (startY < 0) startY = 0;
        if (endY > 31) endY = 31;

        // Only draw if part of the shape is visible
        if (startX <= endX && startY <= endY) {
            switch(current_shape) {
                case SHAPE_TRIANGLE:
                    DrawTriangle(centerX, centerY);
                    break;
                case SHAPE_RECTANGLE:
                    DrawRectangle(centerX, centerY);
                    break;
                case SHAPE_OVAL:
                    DrawOval(centerX, centerY);
                    break;
                case SHAPE_DIAMOND:
                    DrawDiamond(centerX, centerY);
                    break;
            }
        }
    } else {
        DrawFilledCircle(centerX, centerY);
    }

    OLED_Update(&oledDevice);
}



float sign(int x1, int y1, int x2, int y2, int x3, int y3) {
    return (x1 - x3) * (y2 - y3) - (x2 - x3) * (y1 - y3);
}

int isPointInTriangle(int px, int py, int x1, int y1, int x2, int y2, int x3, int y3) {
    float d1 = sign(px, py, x1, y1, x2, y2);
    float d2 = sign(px, py, x2, y2, x3, y3);
    float d3 = sign(px, py, x3, y3, x1, y1);

    int neg = (d1 < 0) || (d2 < 0) || (d3 < 0);
    int pos = (d1 > 0) || (d2 > 0) || (d3 > 0);

    return !(neg && pos);
}



void DrawTriangle(int centerX, int centerY) {
	 OLED_ClearBuffer(&oledDevice);
	    int size = (int)(circleRadius * 1.5);

	    // Calculate rotated points
	    float cosA = cos(shapeRotation);
	    float sinA = sin(shapeRotation);

	    int x1 = centerX + (int)(size * sinA);
	    int y1 = centerY - (int)(size * cosA);
	    int x2 = centerX - (int)(size * (cosA + sinA)/2);
	    int y2 = centerY + (int)(size * (cosA - sinA)/2);
	    int x3 = centerX + (int)(size * (cosA - sinA)/2);
	    int y3 = centerY + (int)(size * (cosA + sinA)/2);

	    // Draw the three lines of the triangle
	    OLED_DrawLine(&oledDevice, x1, y1, x2, y2);
	    OLED_DrawLine(&oledDevice, x2, y2, x3, y3);
	    OLED_DrawLine(&oledDevice, x3, y3, x1, y1);
}
void OLED_DrawLine(PmodOLED *InstancePtr, int x1, int y1, int x2, int y2) {
    int dx = abs(x2 - x1);
    int dy = abs(y2 - y1);
    int sx = (x1 < x2) ? 1 : -1;
    int sy = (y1 < y2) ? 1 : -1;
    int err = dx - dy;

    while (1) {
        OLED_MoveTo(InstancePtr, x1, y1);
        OLED_DrawPixel(InstancePtr);

        if (x1 == x2 && y1 == y2) break;

        int e2 = 2 * err;
        if (e2 > -dy) {
            err -= dy;
            x1 += sx;
        }
        if (e2 < dx) {
            err += dx;
            y1 += sy;
        }
    }
}

void OLED_DrawTo(PmodOLED *InstancePtr, int x, int y) {
    int x1, y1;
    OLED_GetPos(InstancePtr, &x1, &y1);
    OLED_DrawLine(InstancePtr, x1, y1, x, y);
    OLED_MoveTo(InstancePtr, x, y);
}

void DrawRectangle(int centerX, int centerY) {
	  int height = circleRadius * 0.8;
	  int width = circleRadius * 1.5;
	  float cosA = cos(shapeRotation);
	  float sinA = sin(shapeRotation);

	  // Define the four corners of the rectangle
	  int points[4][2] = {
	        {-width, -height},  // Top left
	        {width, -height},   // Top right
	        {width, height},    // Bottom right
	        {-width, height}    // Bottom left
	    };

	  OLED_ClearBuffer(&oledDevice);
	  // Rotate and draw each point
	  for(int i = 0; i < 4; i++) {
		  int x1 = points[i][0];
		  int y1 = points[i][1];
		  int x2 = points[(i+1)%4][0];
		  int y2 = points[(i+1)%4][1];

		  // Rotate points
		  int rotX1 = centerX + (x1 * cosA - y1 * sinA);
		  int rotY1 = centerY + (x1 * sinA + y1 * cosA);
		  int rotX2 = centerX + (x2 * cosA - y2 * sinA);
		  int rotY2 = centerY + (x2 * sinA + y2 * cosA);

		  // Draw line between points
		  OLED_DrawLine(&oledDevice, rotX1, rotY1, rotX2, rotY2);
	  }
}
void DrawDiamond(int centerX, int centerY) {
	int height = circleRadius * 1.8;  
	int width = circleRadius * 1.2;   
	float cosA = cos(shapeRotation);
	float sinA = sin(shapeRotation);

	// Define the four points of the diamond with adjusted proportions
	int points[4][2] = {
			{0, -height},    // Top point
	        {width, 0},      // Right point
	        {0, height},     // Bottom point
	        {-width, 0}      // Left point
	};

	OLED_ClearBuffer(&oledDevice);

	// Draw the diamond's edges
	for(int i = 0; i < 4; i++) {
		int x1 = points[i][0];
		int y1 = points[i][1];
		int x2 = points[(i+1)%4][0];
		int y2 = points[(i+1)%4][1];

		// Rotate points
		int rotX1 = centerX + (x1 * cosA - y1 * sinA);
		int rotY1 = centerY + (x1 * sinA + y1 * cosA);
		int rotX2 = centerX + (x2 * cosA - y2 * sinA);
		int rotY2 = centerY + (x2 * sinA + y2 * cosA);

		OLED_DrawLine(&oledDevice, rotX1, rotY1, rotX2, rotY2);
	}
}

void DrawOval(int centerX, int centerY) {
    int a = circleRadius * 1.5;
    int b = circleRadius * 0.8;
    float cosA = cos(shapeRotation);
    float sinA = sin(shapeRotation);

    OLED_ClearBuffer(&oledDevice);
    // Draw oval using parametric equations
    for(float t = 0; t < 2*M_PI; t += 0.1) {
        int x = a * cos(t);
        int y = b * sin(t);

        // Rotate point
        int rotX = centerX + (x * cosA - y * sinA);
        int rotY = centerY + (x * sinA + y * cosA);

        if(t == 0) {
            OLED_MoveTo(&oledDevice, rotX, rotY);
        } else {
            OLED_DrawTo(&oledDevice, rotX, rotY);
        }
    }
}




void DrawFilledCircle(int centerX, int centerY) {
	 OLED_ClearBuffer(&oledDevice);

	    for(int y = -circleRadius; y <= circleRadius; y++) {
	        for(int x = -circleRadius; x <= circleRadius; x++) {
	            float distance = x*x + y*y;
	            if(distance <= circleRadius*circleRadius &&
	               distance >= (circleRadius*circleRadius*0.7)) {  
	                // Skip the exact cardinal points
	                if (!((x == 0 && (y == circleRadius || y == -circleRadius)) ||
	                     (y == 0 && (x == circleRadius || x == -circleRadius)))) {
	                    int drawX = centerX + x;
	                    int drawY = centerY + y;
	                    if(drawX >= 0 && drawX < 128 && drawY >= 0 && drawY < 32) {
	                        OLED_MoveTo(&oledDevice, drawX, drawY);
	                        OLED_DrawPixel(&oledDevice);
	                    }
	                }
	            }
	        }
	    }
}

void DisplayGyroData(void) {
    int16_t xAxis = GYRO_getX(&gyroDevice)/100;
    int16_t yAxis = GYRO_getY(&gyroDevice)/100;
    int16_t zAxis = GYRO_getZ(&gyroDevice)/100;
    OLED_ClearBuffer(&oledDevice);
    char str[32];
    OLED_SetCursor(&oledDevice, 0, 0);
    sprintf(str, "X: %d", xAxis);
    OLED_PutString(&oledDevice, str);
    OLED_SetCursor(&oledDevice, 0, 1);
    sprintf(str, "Y: %d", yAxis);
    OLED_PutString(&oledDevice, str);
    OLED_SetCursor(&oledDevice, 0, 2);
    sprintf(str, "Z: %d", zAxis);
    OLED_PutString(&oledDevice, str);
    OLED_Update(&oledDevice);
}

void DemoRun(void) {
    circleX = MAX_X/2;
    circleY = MAX_Y/2;
    int16_t xAxis, yAxis, zAxis;

    while(1) {
        if(GYRO_Int2Status(&gyroDevice) != 0) {
            switch(current_mode) {
                case MODE_CIRCLE:
                    xAxis = GYRO_getX(&gyroDevice);
                    yAxis = GYRO_getY(&gyroDevice);
                    zAxis = GYRO_getZ(&gyroDevice);

                    circleX -= (xAxis / 2000);
                    circleY += (yAxis / 4000);

                    if (current_shape == SHAPE_CIRCLE) {
                           circleRadius += (zAxis / 4000);
                           if(circleRadius < MIN_RADIUS) circleRadius = MIN_RADIUS;
                           if(circleRadius > MAX_RADIUS) circleRadius = MAX_RADIUS;
                       } else if (abs(zAxis > 1000 || zAxis < -1000)) {
                    	   rotationVelocity = - (zAxis / 19000.0) * 0.3;
                    	   shapeRotation += rotationVelocity;
                       }


                    if(circleX < -circleRadius) circleX = 127 + circleRadius;
                    else if(circleX > 127 + circleRadius) circleX = -circleRadius;
                    if(circleY < -circleRadius) circleY = 31 + circleRadius;
                    else if(circleY > 31 + circleRadius) circleY = -circleRadius;


                    DrawCurrentShape(circleX, circleY);
                    break;
                case MODE_GYRO_DATA:
                    DisplayGyroData();
                    break;
                case MODE_OFF:
                    break;
            }
        }
        usleep(50000);
    }
}

void InitializeOLED(void) {
    OLED_Begin(&oledDevice, XPAR_PMODOLED_0_AXI_LITE_GPIO_BASEADDR, XPAR_PMODOLED_0_AXI_LITE_SPI_BASEADDR, orientation, invert);
    OLED_DisplayOff(&oledDevice);
    OLED_Clear(&oledDevice);
    usleep(100000);
    OLED_SetCharUpdate(&oledDevice, 0);
    OLED_SetDrawMode(&oledDevice, OledModeSet);
    OLED_DisplayOn(&oledDevice);
    OLED_Clear(&oledDevice);
    OLED_Update(&oledDevice);
}

int InterruptSystemSetup(XScuGic *XScuGicInstancePtr) {
    XGpio_InterruptEnable(&BTNInst, BTN_INT);
    XGpio_InterruptGlobalEnable(&BTNInst);
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, XScuGicInstancePtr);
    Xil_ExceptionEnable();
    return XST_SUCCESS;
}

int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr) {
    XScuGic_Config *IntcConfig;
    int status;
    IntcConfig = XScuGic_LookupConfig(DeviceId);
    status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
    if(status != XST_SUCCESS) return XST_FAILURE;
    status = InterruptSystemSetup(&INTCInst);
    if(status != XST_SUCCESS) return XST_FAILURE;
    status = XScuGic_Connect(&INTCInst, INTC_GPIO_INTERRUPT_ID, (Xil_ExceptionHandler)BTN_Intr_Handler, (void *)GpioInstancePtr);
    if(status != XST_SUCCESS) return XST_FAILURE;
    XGpio_InterruptEnable(GpioInstancePtr, 1);
    XGpio_InterruptGlobalEnable(GpioInstancePtr);
    XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);
    return XST_SUCCESS;
}

void DemoInitialize(void) {
    int status;
    EnableCaches();
    status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
    if (status != XST_SUCCESS) {
            return;
        }
    XGpio_SetDataDirection(&BTNInst, 1, 0xFF);

    GYRO_begin(&gyroDevice, XPAR_PMODGYRO_0_AXI_LITE_SPI_BASEADDR, XPAR_PMODGYRO_0_AXI_LITE_GPIO_BASEADDR);
    GYRO_setThsXH(&gyroDevice, 0x0F);
    GYRO_setThsYH(&gyroDevice, 0x0F);
    GYRO_setThsZH(&gyroDevice, 0x0F);
    GYRO_enableInt1(&gyroDevice, GYRO_INT1_XHIE);
    GYRO_enableInt2(&gyroDevice, GYRO_REG3_I2_DRDY);

    InitializeOLED();
    status = IntcInitFunction(INTC_DEVICE_ID, &BTNInst);

    OLED_ClearBuffer(&oledDevice);
    OLED_SetCursor(&oledDevice, 0, 0);
    OLED_PutString(&oledDevice, "Modes");
    OLED_SetCursor(&oledDevice, 0, 2);
    OLED_PutString(&oledDevice, "Btn0-Visual Mode");
    OLED_SetCursor(&oledDevice, 0, 3);
    OLED_PutString(&oledDevice, "Btn1-Data Mode");
    OLED_Update(&oledDevice);
    usleep(2000000);
}

void DemoCleanup(void) {
    OLED_Clear(&oledDevice);
    OLED_Update(&oledDevice);
    GYRO_end(&gyroDevice);
    OLED_End(&oledDevice);
    DisableCaches();
}

void EnableCaches(void) {
    #ifdef __MICROBLAZE__
    #ifdef XPAR_MICROBLAZE_USE_DCACHE
        Xil_DCacheEnable();
    #endif
    #ifdef XPAR_MICROBLAZE_USE_ICACHE
        Xil_ICacheEnable();
    #endif
    #endif
}

void DisableCaches(void) {
    #ifdef __MICROBLAZE__
    #ifdef XPAR_MICROBLAZE_USE_DCACHE
        Xil_DCacheDisable();
    #endif
    #ifdef XPAR_MICROBLAZE_USE_ICACHE
        Xil_ICacheDisable();
    #endif
    #endif
}
