; NUM_Row
; QWERTY_Row
; YUIOP_Row
; ASDFG_Row
; HJKL_Row
; ZXCVB_Row
; NM_Row
#If GetKeyState("SC076", "P")
; NUM_Row
Esc:: Send, {0}                             ; Number_0
1:: Send, +{F5}                             ; PowerPoint show current slide
+1:: Send, ^{Up}                            ; Go to top cell in Excel
^1:: Send ^+{SC033}                         ; Decrease font size in PowerPoint
2:: Send, ^{Home}                           ; Navigate cursor to top
+2:: Send, {SC007}                          ; Number_6
^2:: Send, #{Left}                          ; Resize window to left
3:: Send, ^{End}                            ; Navigate cursor to bottom
^3:: Send, #{Right}                         ; 
+3:: Send, {SC008}
4:: Send {LWin}                             ; Windows key
^4:: Send !{Esc}                            ; Alt+Esc
+4:: Send {SC009}                           ; Scancode
5:: Send +{SC00C}                           ; _
+5:: Send {SC00A}                           ; 9
^5:: Send {SC00C}                           ; -
7:: Send +{SC07D}                           ; |
+7:: Send {SC07D}                           ; \
^7:: Send +{SC027}
!7:: Send +{SC002}
8:: Send {SC01B}                            ; [
^8:: Send +{SC028}                          ; Shift + scancode
+8:: Send {SC004}                           ; Scancode
!8:: Send +{SC028}
9:: Send {SC02B}                            ; ]
^9:: Send ^{Home}                           ; Ctrl+Home
+9:: Send {SC005}                           ; Scancode
!9:: Send +{SC027}
0:: Send {SC028}                            ; :
^0:: Send ^{End}
+0:: Send {SC00B}                           ; Scancode
; QWERTY_Row
tab:: Send #{Tab}                           ; Win+Tab
^tab:: Send +{F10}                          ; Shift+F10
!tab:: Send ^{Enter}                        ; Ctrl+Enter
q:: Send {Enter}                            ; Enter
^q:: Send ^+{SC034}               ; Increase font size in PowerPoint
!q:: Send +{Enter}                ; Shift+Enter
w:: Send {Up}                     ; Up arrow
^w:: Send ^{Backspace}            ; Ctrl+Backspace
+w:: Send #{x}                    ; Win+X
!w:: Send +{SC034}                ; Shift + scancode
e:: Send !{SC029}                   ; Win+Space
^e:: Send {End}                   ; End
+e:: Send +{End}                  ; Shift+End
!e:: Send +{End}                  ; Shift+End
r:: Send {F2}                     ; Rename
^r:: Send #{Up}                   ; Win+Up
+r:: Send #{Down}                 ; Win+Down
!r:: Send +{SC00A}                ; Shift + scancode
t:: Send +{SC00D}                ; Shift + scancode
^t:: Send {F5}                    ; Refresh
+t:: Send +{Esc}                  ; Shift+Esc
; YUIOP_Row
y:: Send +{SC004}                ; |
+y:: Send +{SC002}                ; Shift + scancode
^y:: Send +{Insert}               ; Paste
u:: Send +{SC003}                ; "
^u:: Send +{Home}{Delete}         ; Delete before cursor
+u:: Send +{SC02B}                 ; }
!u:: Send +{SC029}                ; ~
i:: Send {SC033}                  ; ,
^i:: Send +{SC033}                ; <
+i:: Send {SC006}                 ; 5
!i:: Send ^#{Left}                ; Left_windows
o:: Send {SC034}                  ; Scancode
^o:: Send +{SC034}                ; Shift + scancode
+o:: Send {SC007}                 ; Scancode
!o:: Send ^#{Right}               ; Ctrl+Win+Right
p:: Send {SC035}                  ; Scancode
^p:: Send {Up}                    ; Up arrow
+p:: Send {SC008}                  ; Scancode
!p:: Send +{Up}                   ; Shift+Up
; ASDFG_Row
a:: Send {Left}                  ; Left
^a:: Send {Home}                  ; Home
+a:: Send +{Home}                ; Shift+Home
!a:: Send +^{Home}               ; Shift+Ctrl+Home
s:: Send {Down}                  ; Down
^s:: Send {Backspace}             ; Backspace
+s:: Send #+s                     ; Win+Shift+S (snip tool)
!s:: Send +{SC033}                ; Shift + scancode
d:: Send {Right}                   ; Win+Space
^d:: Send {Delete}                ; Delete
+d:: Send {PgDn}                  ; PageDown
!d:: Send ^{Delete}              ; Ctrl+Delete
f:: Send ^{Right}                ; Ctrl+Right
^f:: Send {Right}                 ; Right
+f:: Send ^+{Right}              ; Ctrl+Shift+Right
!f:: Send +{Right}                ; Shift+Right
g:: Send {SC00D}                  ; Scancode
^g:: Send ^+g                     ; Ctrl+Shift+G
+g:: Send {SC033}                  ; Scancode
; HJKL_Row
h:: Send +{SC073}                ; _
+h:: Send {SC00D}                ; ^
^h:: Send {Backspace}             ; Backspace
!h:: Send #{Left}                 ; Window_to_left
j:: Send {SC00C}                  ; Scancode
^j:: Send +{Enter}               ; Shift+Enter
+j:: Send {SC002}                  ; Scancode
!j:: Send #{Down}                 ; Win+Down
k:: Send {SC028}                  ; Scancode
^k:: Send +{End}{Delete}          ; Select-to-end & delete
+k:: Send {SC003}                  ; Scancode
!k:: Send #{Up}                   ; Win+Up
l:: Send +{SC008}                ; @
^l:: Send +{SC006}                           ; %
+l:: Send +{SC01A}                           ; `
!l:: Send #{Right}                ; Win+Right
; ZXCVB_Row
z:: Send +{SC028}                ; Shift + scancode
^z:: Send +{SC004}               ; Shift + scancode
+z:: Send {SC034}                 ; Scancode
!z:: Send ^+{PgUp}               ; Ctrl+Shift+PageUp
x:: Send !{Left}                 ; Alt+Left
^x:: Send ^{PgUp}                ; Ctrl+PageUp
+x:: Send !{Right}               ; Alt+Right
!x:: Send ^+{PgDn}               ; Ctrl+Shift+PageDown
c:: Send {Esc}                   ; Escape
^c:: Send ^{PgDn}                ; Ctrl+PageDown
+c:: Send !{F4}                  ; Alt+F4
!c:: Send +{SC00B}               ; Shift + scancode
v:: Send #{Space}                  ; PageUp
^v:: Send +{Insert}               ; Shift+Insert
+v:: Send {PgUp}                 ; Scancode
b:: Send ^{Left}                ; Ctrl+Left
^b:: Send {Left}                 ; Left
+b:: Send ^+{Left}              ; Ctrl+Shift+Left
!b:: Send +{Left}                 ; Shift+Left
; NM_Row
n:: Send +{SC00C}                  ; Scancode
^n:: Send {Down}                 ; Down
+n:: Send +{SC01B}                ; {
!n:: Send +{Down}                ; Shift+Down
m:: Send {SC027}                ; ^
+m:: Send +{SC00D}                ; $
^m:: Send {Enter}                 ; Enter
!m:: Send ^{Enter}               ; Ctrl+Enter
space:: Send +{SC035}                ; ^
^space:: Send +{SC005}                ; ^
return
#If
+0:: Send +{SC028}               ; * 
SC03D::Reload  ; F3
SC040::ExitApp 
SC11D::Volume_Up
SC15D::Volume_Down
SC070::Volume_Mute
SC079::Media_Play_Pause

; F1
SC03B:: 
    AdjustScreenBrightness(-10)
return

; F2
SC03C::
    AdjustScreenBrightness(+10)
return

AdjustScreenBrightness(step)
{
    service := "winmgmts:{impersonationLevel=impersonate}!\\.\root\WMI"
    monitors := ComObjGet(service).ExecQuery("SELECT * FROM WmiMonitorBrightness WHERE Active=TRUE")
    methods  := ComObjGet(service).ExecQuery("SELECT * FROM WmiMonitorBrightnessMethods WHERE Active=TRUE")
    for m in monitors {
        curr := m.CurrentBrightness
        break
    }
    new := curr + step
    if (new < 0)
        new := 0
    if (new > 100)
        new := 100
    for m in methods {
        m.WmiSetBrightness(1, new)
        break
    }
}