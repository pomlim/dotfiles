F12::Send {Volume_Up}
F11::Send {Volume_Down}
F10::Send {Volume_Mute}
F8::Send {Media_Play_Pause}
#IF GetKeyState("LWin", "LCtrl")
j::Left
k::Right
#if
^#h:: Send {Backspace}
^#w:: Send ^{Backspace}
^#d:: Send {Delete}
^#+j:: Send ^{PgUp}
^#+k:: Send ^{PgDn}
^#j:: Send ^#{Left}
^#k:: Send ^#{Right}
#h:: Send #{Down}
#m:: Send #{Up}
^#a:: Send {Home}
^#e:: Send {End}
^#n:: Send {Down}
^#p:: Send {Up}
^#f:: Send {Right}
^#b:: Send {Left}
^#l::Send {Media_Play_Pause}
^#z::Send {Media_Play_Pause}
#+a:: Send +{Home}
#+e:: Send +{End}
^#+f:: Send +{Right}
#+f:: Send ^+{Right}
!#f:: Send ^{Right}
^#+b:: Send +{Left}
#+b:: Send ^+{Left}
!#b:: Send ^{Left}
^#q:: Send {Enter}
^#s:: Send {Backspace}
^#m:: Send {Enter}
^#c:: Send !{F4}
^#x:: Send {F2}

SC07D:: Backspace
PrintScreen:: Home
Insert:: End