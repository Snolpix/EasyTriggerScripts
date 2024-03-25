# ScriptWrite Hotkey Utility

## Introduction

I embarked on this project out of sheer curiosity and the desire to create something during my spare time. It might seem trivial to some, but the idea was to simplify a specific task that I thought was unnecessarily complicated. 

This utility allows for the execution of the backtick character ("`") using a simple keyboard shortcut: CTRL + SHIFT (or SHIFT + CTRL, depending on your preference). The goal was to streamline this action to a simple gesture, making it more accessible and faster for anyone who might find it useful.

## How to Use

To get started, simply run the provided batch file (`manage_script_write.bat`). This script handles everything from setting up the necessary Python environment (by installing the required packages) to compiling the Python script into an executable and setting it up for automatic execution at startup.

The process has been greatly simplified to ensure ease of use:
1. Run the batch file.
2. Choose to install the required pip packages.
3. Convert the `.py` script to an executable.
4. Set the program to run automatically at startup, or remove it from startup if desired.
5. For Close Press `ctrl+alt+q`

## Important Note on Antivirus Detection

The antivirus report the file ".exe" might flag the executable as a potential virus, specifically identifying it as "Wacatac.B!ml". This is a known false positive, often triggered by the `--noconsole` option used during the compilation process. 

There is no need to worry if you encounter this warning. It's simply an overly cautious response from the antivirus software. If this occurs, please consider adding an exception for this utility in your antivirus settings to allow it to run without interference.

## Conclusion

While the project might seem simplistic or straightforward, it was a delightful challenge to create something that could potentially enhance someone's daily workflow, even in a small way. I hope you find it as useful as I intended it to be. Enjoy!
