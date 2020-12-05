#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; CapsLock functions as modifier when held and combined with other keys.
; It behaves normally when pressed alone.
; Multiple hotkeys have been defined instead of simply
; having CapsLock remapped to function as modifier, as this
; allows more flexibility and more consistent behavior.

#InstallKeybdHook

#UseHook
>+CapsLock::Escape

>!CapsLock::
Send, {Shift}
Send, {Alt Up}
Send, {Escape}

CapsLock & j::down
CapsLock & k::up
CapsLock & h::left
CapsLock & l::right
CapsLock & 0::home
CapsLock & `;::end
CapsLock & u::Send !^+{u}
CapsLock & i::Send !^+{i}
CapsLock & d::Send ^{Delete}
CapsLock & ,::Send ^{PgUp}
CapsLock & .::Send ^{PgDn}
CapsLock & /::Send !^+{/}
CapsLock & [::Send {PgUp}
CapsLock & ]::Send {PgDn}
