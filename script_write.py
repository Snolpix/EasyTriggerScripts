import keyboard

def send_backtick():
    keyboard.write("`")

keyboard.add_hotkey('ctrl+shift', send_backtick)

keyboard.wait('esc')