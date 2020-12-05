#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

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
CapsLock & \::Send !^+{\}

; *CapsLock::
;   Send, {LCtrl down}{LShift down}{LAlt down}
;   KeyWait, CapsLock
;   Send, {LCtrl up}{LShift up}{LAlt up}
;   return

; CapsLock & ~UUu::
; SetKeyDelay -1
; Send, {Blind}{Alt down}{Ctrl down}{Shift down}
; Send, {u}
; KeyWait, CapsLock
; Send, {Alt up}{Ctrl up}{Shift up}
; return

; >!CapsLock::
; Send, {Shift}
; Send, {Alt Up}
; Send, {Escape}
; return

; CapsLock::
;   Send, {LCtrl down}{LShift down}{LAlt down}
;   KeyWait, CapsLock
;   Send, {LCtrl up}{LShift up}{LAlt up}
;   return

; *CapsLock::
;   SetKeyDelay -1
;   Send {Blind}{Ctrl Down}{Alt Down}{Shift Down}
; return

; *CapsLock up::
;   SetKeyDelay -1
;   Send {Blind}{Ctrl Up}{Alt Up}{Shift Up}
;   return

; ~CapsLock & j::
; Send {Blind}{Ctrl Up}{Alt Up}{Shift Up}
; Send {Down}
; return

; ~CapsLock & k::
; Send {Blind}{Ctrl Up}{Alt Up}{Shift Up}
; Send {Up}
; return

; ~CapsLock & h::
; Send {Blind}{Ctrl Up}{Alt Up}{Shift Up}
; Send {Left}
; return

; ~CapsLock & l::
; Send {Blind}{Ctrl Up}{Alt Up}{Shift Up}
; Send {Right}
; return
