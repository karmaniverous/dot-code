# `dot-code` for Windows

An [AutoHotKey](https://www.autohotkey.com/) script that launches VS Code from File Explorer when you type `Alt-Win-.`.

## Why?

I use VS Code as my primary editor. I'm constantly in & out of code repos & single files, and I think the File Explorer context menu is a giant pain in the behind.

This is just better: pick one or more artifacts and hit an easy key combo. Done!

## Installing `dot-code`

1. Download & install AutoHotKey v2 from the [AHK home page](https://www.autohotkey.com/).

1. Type `Win-R` and enter `shell:startup` in the dialog to open your startup apps folder.

1. Do you have a User or System VS Code installation? Download either [`dot-code-user.ahk`](./dot-code-user.ahk) or [`dot-code-system.ahk`](./dot-code-system.ahk) and copy it into your startup apps folder.

1. Restart your machine.

## Using `dot-code`

Open a directory (say a code repository) in File Explorer. Type `Alt-Win-.` without selecting any files or subdirectories, and the entire directory will open in VS Code.

Open a parent directory containing multiple code repos. Select a repo folder, type `Alt-Win-.`, and only the selected repo will open in VS Code.

Now open a repo and select one or more files. When you type `Alt-Win-.`, only the selected files will open in VS Code.

## Changing the HotKey

The key combination is articulated in [this line](https://github.com/karmaniverous/dot-code/blob/a69919bb80c55caef8834d57475c7f1b3072e1c8/dot-code.ahk#L4) of the script, specifically the `#!.` before the trailing `::`.

To change the key combo, just replace `#!.` with your own combo. See [the AutoHotKey docs](https://www.autohotkey.com/docs/v2/Hotkeys.htm) for more help.
