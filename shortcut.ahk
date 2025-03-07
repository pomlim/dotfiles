; # Window, ! Alt, ^ Ctrl, + Shift
; ---------------------------------------------------------
; Control_Media
; Window_and_program_control
; Cursor_navigate_inspired_by_emacs_and_linux_keybinding
; Selection_with_emacs_keybinding
; For_only_left_hand_keybinding
; For_noteboook_and_Japanese_layout
; For_type_symbol_comfortable
; Change_input_language_layout
; ---------------------------------------------------------

; Control_Media
F12::Send {Volume_Up}
F11::Send {Volume_Down}
F10::Send {Volume_Mute}
F8::Send {Media_Play_Pause}
; Window_and_program_control
+#j:: Send #{Left}
+#k:: Send #{Right}
+#m:: Send #{Up}
+#h:: Send #{Down}
^#i:: Send ^#{Left}
^#o:: Send ^#{Right}
^#q:: Send #{Up}
+#q:: Send #{Down}
^#x:: Send ^{PgUp}
^#c:: Send ^{PgDn}
^+#x:: Send ^+{PgUp}
^+#c:: Send ^+{PgDn}
!#z:: Send ^+{Volume_Up}
!#x:: Send ^+{Volume_Down}
^+#s:: Send ^+{Volume_Mute}
+#d:: Send !{Left}
+#f:: Send !{Right}
^#l::Send {Media_Play_Pause}
^#z::Send {Media_Play_Pause}
^#3:: Send !{Space}<
; Cursor_navigate_inspired_by_emacs_and_linux_keybinding
^#a:: Send {Home}
^#e:: Send {End}
^#n:: Send {Down}
^#p:: Send {Up}
^#f:: Send {Right}
^#b:: Send {Left}
^#h:: Send {Backspace}
^#w:: Send ^{Backspace}
^#d:: Send {Delete}
!#d:: Send ^{Delete}
^#k:: Send +{End}{Delete}
^#u:: Send +{Home}{Delete}
^#v:: Send {PgDn}
#v:: Send {PgUp}
+^#a:: Send ^{Home}
+^#e:: Send ^{End}
^#m:: Send {Enter}
^#j:: Send +{Enter}
#f:: Send ^{Right}
#b:: Send ^{Left}
; Selection_with_emacs_keybinding
#+a:: Send +{Home}
#+e:: Send +{End}
^#+f:: Send +{Right}
^#+b:: Send +{Left}
!#f:: Send ^+{Right}
!#b:: Send ^+{Left}
^+#p:: Send +{Up}
^+#n:: Send +{Down}
^#g:: Send +^{Home}
+#g:: Send +^{End}
; For_only_left_hand_keybinding
#q:: Send {Enter}
^#s:: Send {Backspace}
+#c:: Send !{F4}
+#x:: Send {F2}
#w:: Send {Up}
#s:: Send {Down}
#a:: Send {Left}
#d:: Send {Right}
^#!+a:: Send +^{Home}
^#!+e:: Send +^{End}
; For_noteboook_and_Japanese_layout
SC07D:: Backspace
PrintScreen:: Home
Insert:: End
; For_type_symbol_comfortable
#o::Send, {SC034} ; .
+#o::Send, +{SC034} ; >
#i::Send, {SC033} ; ,
+#i::Send, +{SC033} ; <
#u::Send, +{SC028} ; "
+#u::Send, {SC027} ; ;
#y::Send, {SC02B} ; \
+#y::Send, +{SC02B} ; |
#8::Send, +{SC027} ; :
#9::Send, {SC01A} ; [
#0::Send, {SC01B} ; ]
+#9::Send, +{SC01A} ; {
+#0::Send, +{SC01B} ; }
#p:: Send, {SC035} ; /
+#p:: Send, +{SC035} ; ?
!^#p:: Send #{SC019} ; Display
#j:: Send, +{SC01A} ; {
#k:: Send, +{SC01B} ; }
#h:: Send, {SC028} ; '
#c:: Send, +{SC027} ; :
#m:: Send, +{SC007} ; ^
#n::Send, +{SC006} ; %
+#n::Send, +{SC004} ; #
#-:: Send, {SC029} ; `
+#-:: Send, +{SC029} ; ~
#=:: Send, +{SC005} ; $
+#=:: Send, +{SC008} ; &
#z:: Send, +{SC009} ; *
+#z:: Send, +{SC004} ; #
^#1:: Send, {SC00D} ; =
^#2:: Send, +{SC028} ; "
+#1:: Send, +{SC00A} ; (
+#2:: Send, +{SC00B} ; )
!#a:: Send, +{SC00D} ; +
!#s:: Send, {SC00C} ; -

; Change_input_language_layout 
^#0:: SetDefaultKeyboardLang(0x0409) ; english
^#9:: SetDefaultKeyboardLang(0x041E) ; thai
^#-:: 
    IMEGetstate := IME_CHECK("A")
    SetDefaultKeyboardLang(0x0411)
    if (IMEGetstate = 0){
        Send, {vkF2sc070}
    }
    return
return
#1:: SetDefaultKeyboardLang(0x0409) ; english
#2:: 
    IMEGetstate := IME_CHECK("A")
    SetDefaultKeyboardLang(0x0411)
    if (IMEGetstate = 0){
        Send, {vkF2sc070}
    }
    return
#3:: SetDefaultKeyboardLang(0x041E) ; thai

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
