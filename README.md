# Mouse-Window-Tabber
Use only your mouse to switch between the open applications / windows instead of the `ALT + TAB` shortcut **without overriding the functionality of your mouse buttons**.

This is a simple AHK script generated using ChatGPT, that I use regularly without even noticing it. I'm so used to this, that when I switch to other PC, my muscle memory makes me use it automatically. Then I would often realise not every PC has this script. It helped me a lot and I thought of sharing it here for others to use and modify to their needs.

## Usage
1. Hold the forward mouse button for 200ms.
2. Scroll the mouse wheel up to tab forward through windows.
3. Scroll the mouse wheel down to tab backwards.
4. Release the forward mouse button to switch to the selected window.

> Note: Your mouse must have a forward button for the default configuration. Refer to the [Customization](#customization) section to modify the trigger keys to your needs.

## How it works
* Holding the forward mouse button simulates `ALT` being held down.
* Scrolling up simulates pressing `TAB`.
* Scrolling down simulates `SHIFT + TAB`.
* Releasing the forward button selects the highlighted window.


## Setup
1. Install **AHK v1.1** (not v2.0) from their [website](https://www.autohotkey.com).
2. Download this repository.
3. Open the `WindowTabber.ahk` file to keep running the script in the background.

**Recommended:** To launch automatically on startup, paste the `WindowTabber.ahk` file as shortcut in your startup folder:

    C:\Users\[YourUsername]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

## Customization
You can customize the triggers to your needs and convenience. Refer to the [AHK Key List](https://www.autohotkey.com/docs/v1/KeyList.htm) for available keys.

* **Trigger Key:** Replace `XButton2` with another key/mouse button.
* **Hold Duration:** Change `200` in the `SetTimer` function to adjust timing.
* **Next Window Trigger:** Replace `WheelUp` with another key/mouse button.
* **Previous Window Trigger:** Replace `WheelDown` with another key/mouse button.
## Pros and Cons
**Pros**
- No need to use keyboard.
- No need to override your mouse buttons functionality.
- Easy setup.
- Simple and lightweight script.
- Easy to modify to your needs.
- Works on Windows 7, 8, 10 and 11.
- Open source and free to use.

**Cons**
- Requires AHK to be installed.
- Only works on Windows.
- May conflict with other AHK scripts if not managed properly.
- Addictive to use.

## License

This project is open source under the MIT License.