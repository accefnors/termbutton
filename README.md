# Usage
- Click the termbutton icon
  - If no files are selected, it will open a new terminal window in the active Finder window's directory
  - If a file is selected, it will open the a new terminal window in the file's parent directory
  - If the selected file is a directory, it will open a new terminal window inside that directory
  - If multiple files are selected it will do the above for each file

# Installation

## Getting the app

- Download the [latest release](https://github.com/acefnors/termbutton/releases/latest)
- Extract the zip file to its permanent location (e.g. `/Applications/`)

**or**
- Download the [applescript file](https://raw.githubusercontent.com/acefnors/termbutton/main/termbutton.applescript)
- Open it with Script Editor
- Select `File` -> `Export...` -> `File format` -> `Application` and then `Save`

## Adding app to the Finder's toolbar

- Hold `cmd ⌘` and drag the .app to the Finder toolbar

# Customization

## Emulator
termbutton opens paths through Terminal.app by default.
Enter the following commands into your terminal to use a different terminal emulator.

|App|Command|
|---|---|
|iTerm|`defaults write acefnors.termbutton terminal iTerm`|
|kitty|`defaults write acefnors.termbutton terminal kitty`|
|Terminal (default)|`defaults write acefnors.termbutton terminal Terminal`|

## Icon

termbutton's icon in the Finder's toolbar can be modified by changing the app's icon. Select termbutton.app, press `cmd ⌘` + `i` to open the app's `Get Info` panel, then drag the new icon onto the old one.
I am personally using those provided by [OpenInTerminal](https://github.com/Ji4n1ng/OpenInTerminal) (a more feature-rich app which, at the time of writing, does not properly work with kitty), which can be found [here](https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v1.2.4/Icons.zip).
