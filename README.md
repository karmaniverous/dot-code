# dot-code for Windows

An [AutoHotKey](https://www.autohotkey.com/) script that launches VS Code with the open folder or selected files in File Explorer when you type `Alt-Win-.`.

## Installing

1. Download & install AutoHotKey v2 from the [AHK home page]((https://www.autohotkey.com/)).

1. Type `Win-R` and enter `shell:startup` in the dialog to open your startup apps folder.

1. Download [`dot-code.ahk`](./dot-code.ahk) and copy it into your startup apps folder.

1. Restart your machine.

## Using

Open a directory (say a code repository) in File Explorer. Type `Alt-Win-.` without selecting any files, and the entire directory will open in VS Code.

Now select one or more files. When you type `Alt-Win-.`, only the selected files will open in VS Code.
