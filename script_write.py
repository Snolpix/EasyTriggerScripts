import keyboard
import time

def send_backtick():
    keyboard.write("`")

def quit_program():
    global running
    running = False

keyboard.add_hotkey('ctrl+shift', send_backtick)
keyboard.add_hotkey('ctrl+alt+q', quit_program)

running = True
while running:
    time.sleep(1)
