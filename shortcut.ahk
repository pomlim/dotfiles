; # Window
; ! Alt
; ^ Ctrl
; + Shift
F12::Send {Volume_Up}
F11::Send {Volume_Down}
F10::Send {Volume_Mute}
F8::Send {Media_Play_Pause}
; Window and program control
#IF GetKeyState("LWin", "LCtrl")
h::Down
z::Down
#if
#j:: Send #{Left}
#k:: Send #{Right}
^#j:: Send ^#{Left}
^#o:: Send ^#{Right}
^#+j:: Send ^{PgUp}
^#+k:: Send ^{PgDn}
#m:: Send #{Up}
#q:: Send #{Up}
^#l::Send {Media_Play_Pause}
^#z::Send {Media_Play_Pause}
; Cursor navigate inspired by emacs and linux keybinding
^#a:: Send {Home}
^#e:: Send {End}
^#n:: Send {Down}
^#p:: Send {Up}
^#f:: Send {Right}
^#b:: Send {Left}
^#h:: Send {Backspace}
^#w:: Send ^{Backspace}
^#d:: Send {Delete}
^#k:: Send +{End}{Delete}
^#u:: Send +{Home}{Delete}
^#v:: Send {PgDn}
!#v:: Send {PgUp}
^#!a:: Send ^{Home}
^#!e:: Send ^{End}
; Selection with emacs keybinding
#+a:: Send +{Home}
#+e:: Send +{End}
^#+f:: Send +{Right}
#+f:: Send ^+{Right}
!#f:: Send ^{Right}
^#+b:: Send +{Left}
#+b:: Send ^+{Left}
!#b:: Send ^{Left}
^#!+a:: Send +^{Home}
^#!+e:: Send +^{End}
; For only left hand keybinding
^#q:: Send {Enter}
^#s:: Send {Backspace}
^#m:: Send {Enter}
^#c:: Send !{F4}
^#x:: Send {F2}
; For noteboook and Japanese layout
SC07D:: Backspace
PrintScreen:: Home
Insert:: End
; Change input language layout
^#0:: SetDefaultKeyboardLang(0x0409) ; english
^#-:: 
    IMEGetstate := IME_CHECK("A")
    SetDefaultKeyboardLang(0x0411)
    if (IMEGetstate = 0){
        Send, {vkF2sc070}
    }
^#9:: SetDefaultKeyboardLang(0x041E) ; thai

IMEGetstate:
        DetectHiddenWindows, ON
	WinGet, vcurrentwindow, ID, A
        vgetdefault := DllCall("imm32.dll\ImmGetDefaultIMEWnd", "Uint", vcurrentwindow)
	DetectHiddenWindows, Off
	return

IME_CHECK(WinTitle){   
    WinGet, hWnd, ID, %WinTitle%
    Return Send_ImeControl(ImmGetDefaultIMEWnd(hWnd), 0x005, "")
}

Send_ImeControl(DefaultIMEWnd, wParam, lParam){
    DetectSave := A_DetectHiddenWindows       
    DetectHiddenWindows,ON                           
    SendMessage 0x283, wParam,lParam,,ahk_id %DefaultIMEWnd%
    if (DetectSave <> A_DetectHiddenWindows)
        DetectHiddenWindows,%DetectSave%
        return ErrorLevel
    }

ImmGetDefaultIMEWnd(hWnd){
    return DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hWnd, Uint)
    }

; https://autohotkey.com/boards/viewtopic.php?f=6&t=18519
SetDefaultKeyboardLang(LocaleID){
	Static SPI_SETDEFAULTINPUTLANG := 0x005A, SPIF_SENDWININICHANGE := 2	
	Lan := DllCall("LoadKeyboardLayout", "Str", Format("{:08x}", LocaleID), "Int", 0)
	VarSetCapacity(binaryLocaleID, 4, 0)
	NumPut(LocaleID, binaryLocaleID)
	DllCall("SystemParametersInfo", "UInt", SPI_SETDEFAULTINPUTLANG, "UInt", 0, "UPtr", &binaryLocaleID, "UInt", SPIF_SENDWININICHANGE)	
	WinGet, windows, List
	Loop % windows {
		PostMessage 0x50, 0, % Lan, , % "ahk_id " windows%A_Index%
	}
}