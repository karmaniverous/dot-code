#Requires AutoHotkey v2.0

; This is the key combo.
#!.::
{
    ; Is the current window an Explorer window?
    if (WinGetClass("A") == "CabinetWClass") {
        ; Cache the current clipboard contents.
        clipboard := A_Clipboard

        ; Clear the clipboard & copy selected files.
        A_Clipboard := ""
        Send "^c"
        ClipWait(0.5)

        ; If no files are selected...
        if (A_Clipboard == "") {
            ; Get the current window's ID.
            hwnd := WinGetID("A")

            ; Find the current window's COM object.
            for window in ComObject("Shell.Application").Windows{
                if (window && window.hwnd && window.hwnd == hwnd)
                    ; Get the current folder's path.
                    path := window.Document.Folder.Self.Path
            }
        }

        else {
            ; Quote & space-concatenate selected files.
            path := '"' . StrReplace(A_Clipboard, "`n", '" "') . '"'
        }

        ; Restore the clipboard.
        A_Clipboard := clipboard     
        
        ; Run code.
        exe := '"' . StrReplace(A_AppData, "Roaming", "Local\Programs\Microsoft VS Code\code") . '"'
        Run(exe . " " . path)
    }
}
