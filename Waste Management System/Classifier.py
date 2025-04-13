from gpiozero import Button, LED
from picamera2 import Picamera2
from time import sleep
from ultralytics import YOLO
from PIL import Image
import numpy as np
import os
from datetime import datetime
import cv2

print("Starting program...")

# Create input, output, and camera objects
button = Button(2)
print("Button initialized on GPIO 2")

blue_led = LED(27)   # Recyclable
green_led = LED(22)  # Biological
red_led = LED(23)    # Metal
white_led = LED(24)  # Status light
print("LEDs initialized on GPIOs 27, 22, 23, 24")

# Create a folder to store images
image_folder = '/home/prashil/Pictures/captured_images'
os.makedirs(image_folder, exist_ok=True)
print(f"Image folder created: {image_folder}")

try:
    # Initialize camera
    camera = Picamera2()
    
    # Load YOLO model
    model_path = '/home/prashil/ML model/TLmodel/best.pt'
    model = YOLO(model_path)
    
    # Configure camera
    camera.configure(camera.create_still_configuration(
        main={"size": (4608, 2592), "format": "RGB888"}))
    camera.start()
    print("Camera initialized and started")
except Exception as e:
    print(f"Error initializing camera or model: {e}")
    exit(1)

# Labels matching YOLOv8's order (0=metal, 1=trash, 2=recyclable)
labels = ['metal', 'recyclable','trash']
print(f"Labels loaded: {labels}")

def capture_and_predict():
    print("Capturing image and predicting")
    white_led.blink(0.1, 0.1)
    sleep(2)
    print("Capturing...")
    white_led.on()
    
    # Generate unique filenames
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    original_filename = f"{timestamp}_original.jpg"
    original_path = os.path.join(image_folder, original_filename)
    
    # Capture and save original image
    camera.capture_file(original_path)
    print(f"Original image saved to {original_path}")
    
    try:
        # Make prediction using YOLO
        results = model.predict(source=original_path, verbose=False)[0]
        predicted_idx = int(results.probs.top1)
        confidence = float(results.probs.top1conf)
        result = labels[predicted_idx]
        
        # Save prediction results
        result_filename = f"{timestamp}_result.txt"
        result_path = os.path.join(image_folder, result_filename)
        with open(result_path, 'w') as result_file:
            result_file.write(f"Prediction: {result}\n")
            result_file.write(f"Confidence: {confidence:.4f}\n")
        
        print(f"Prediction complete. Result: {result} (Confidence: {confidence:.4f})")
        
    except Exception as e:
        print(f"Error during prediction: {e}")
        result = "error"
    
    white_led.off()
    return result

def led_select(label):
    print(f"LED select function called with label: {label}")
    if label == "recyclable":
        blue_led.on()
        sleep(5)
        blue_led.off()
    elif label == "trash":
        green_led.on()
        sleep(5)
        green_led.off()
    elif label == "metal":
        red_led.on()
        sleep(3)
        red_led.off()
    print("LED selection complete")

# Main Function
print("Entering main loop")
button_state = False  # Track previous button state
print("Waiting for button press...")  # Print only once at the start

try:
    while True:
        current_button_state = button.is_pressed
        
        # Only trigger when button state changes from not pressed to pressed
        if current_button_state and not button_state:
            print("Button pressed")
            result = capture_and_predict()
            led_select(result)
            print("Waiting for button press...")  # Print after completing the operation
        
        # Update button state
        button_state = current_button_state
        
        if not button.is_pressed:
            white_led.on()
        sleep(0.1)  # Small delay to prevent CPU overuse
        
except KeyboardInterrupt:
    print("Program interrupted by user")
except Exception as e:
    print(f"An error occurred: {e}")
    import traceback
    traceback.print_exc()
finally:
    print("Cleaning up...")
    camera.stop()
    print("Camera stopped")
    print("Program ended")