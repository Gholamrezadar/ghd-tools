;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; AHK Things ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Lil' Help ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; How to add to startup? copy the script -> Win+R(run) -> shell:startup -> paste shortcut
; shell:startup is something like "C:\Users\[user]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

; Don't forget to change all the [HARDCODE]s in this script to your directories

; #	    			Win
; ! 				Alt
; ^ 				Ctrl
; +	    			Shift
; <!				Left Alt

; *#c   			Win+C, Shift+Win+C, Ctrl+Win+C, etc. will all trigger this hotkey.
; ~RButton & C		You pressed C while holding down the right mouse button and click will still happen.
; *LWin::Send {LControl down}

; Title Generator python code : " Title ".center(140, ";")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Launch apps with hotkeys ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Win+Shift+B => Launches Sublime text [HARDCODE]
#+B::Run "C:\Program Files\Sublime Text 3\sublime_text.exe"

; ScrollLock => Launches Sublime text [HARDCODE]
ScrollLock::Run "C:\Program Files\Sublime Text 3\sublime_text.exe"

; Win+Shift+C => Launches VS Code [HARDCODE]
#+C::Run "C:\Users\Reza\AppData\Local\Programs\Microsoft VS Code\code.exe"

; Win+Shift+V => Launches CMD as admin
RunAs, Administrator, 123
#+V::Run cmd.exe
RunAs

; PAUSE => Launches CMD as admin
RunAs, Administrator, 123
PAUSE::Run cmd.exe
RunAs

; Tooltip example
#!H::
ToolTip, Timed ToolTip`nThis will be displayed for 1 second.
SetTimer, RemoveToolTip, -1000
return

RemoveToolTip:
ToolTip
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Windows hotkeys ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Virtual Desktops ;;
; f7 => previous virtual desktop
f7::Send ^#{Left}

; f8 => next virtual desktop
f8::Send ^#{Right}

;; Switch between instances/windows of an application ;;
; Ctrl+Win+1 <=> Win+1
#1::Send ^#{1}
^#1::Send #{1}

; Ctrl+Win+2 <=> Win+2
#2::Send ^#{2}
^#2::Send #{2}

; Ctrl+Win+3 <=> Win+3
#3::Send ^#{3}
^#3::Send #{3}

; Ctrl+Win+4 <=> Win+4
#4::Send ^#{4}
^#4::Send #{4}

; Ctrl+Win+5 <=> Win+5
#5::Send ^#{5}
^#5::Send #{5}

; Ctrl+Win+6 <=> Win+6
#6::Send ^#{6}
^#6::Send #{6}

; Ctrl+Win+7 <=> Win+7
#7::Send ^#{7}
^#7::Send #{7}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Application specific hotkeys ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Chrome ;;
#IfWinActive ahk_exe chrome.exe

; f1 => previous tab
f1::Send ^+{tab}

; f2 => next tab
f2::Send ^{tab}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

