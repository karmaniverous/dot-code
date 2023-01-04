# `dot-code` for Windows

An [AutoHotKey](https://www.autohotkey.com/) script that launches VS Code with the open folder or selected files in File Explorer when you type `Alt-Win-.`.

## Why?

I use VS Code as my primary editor. I'm constantly in & out of code repos & single files, and I think the File Explorer context menu is a giant pain in the behind.

This is just better: pick one or more artifacts and hit an easy key combo. Done!

## Installing `dot-code`

1. Download & install AutoHotKey v2 from the [AHK home page]((https://www.autohotkey.com/)).

1. Type `Win-R` and enter `shell:startup` in the dialog to open your startup apps folder.

1. Download [`dot-code.ahk`](./dot-code.ahk) and copy it into your startup apps folder.

1. Restart your machine.

## Using `dot-code`

Open a directory (say a code repository) in File Explorer. Type `Alt-Win-.` without selecting any files, and the entire directory will open in VS Code.

Now select one or more files. When you type `Alt-Win-.`, only the selected files will open in VS Code.

## Changing the HotKey

The key combination is articulated in [this line](https://github.com/karmaniverous/dot-code/blob/f1a1a8e2d52fbce63cc9964834f564584ba98860/dot-code.ahk#L3) of the script, specifically the `#!.` before the trailing `::`.

To change the key combo, just replace `#!.` with your own combo. See [the AutoHotKey docs](https://www.autohotkey.com/docs/v2/Hotkeys.htm) for more help.
