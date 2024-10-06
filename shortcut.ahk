F12::Send {Volume_Up}
F11::Send {Volume_Down}
F10::Send {Volume_Mute}
F8::Send {Media_Play_Pause}
#IF GetKeyState("LWin", "LCtrl")
j::Left
k::Right
h::Up
#if
^#h:: Send {Backspace}
^#w:: Send ^{Backspace}
^#+n:: Send ^{PgUp}
^#+p:: Send ^{PgDn}
^#n:: Send {Down}
^#p:: Send {Up}
^#j:: Send ^#{Left}
^#k:: Send ^#{Right}
#h:: Send #{Up}
^#a:: Send {Home}
^#e:: Send {End}

SC07D:: Backspace
PrintScreen:: Home
Insert:: End