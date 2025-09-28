#UseHook
#InstallMouseHook
ForwardHeld := false
ForwardTimerActive := false
OnExit, ReleaseAlt

; — 1) Forward pressed: start 200 ms timer —
$XButton2::
    ForwardTimerActive := true
    SetTimer, EnterAltMode, -200
return

; — 2) Forward released: cancel or exit Alt mode —
$XButton2 Up::
    SetTimer, EnterAltMode, Off
    if (ForwardHeld) {
        Send, {Alt Up}          ; exit Alt-held mode
        ForwardHeld := false
    } else {
        Send, {XButton2}        ; quick-tap: normal Forward
    }
    ForwardTimerActive := false
return

; — 3) After 200 ms, hold Alt and flip into scroll-tab mode —
EnterAltMode:
if (ForwardTimerActive) {
    Send, {Alt Down}
    ForwardHeld := true
}
return

; — ONLY while Alt mode is active —
#If ForwardHeld

; Scroll up ⇒ Alt+Tab (next)
*WheelUp::
    SendInput, {Blind}{Tab}
return

; Scroll down ⇒ Alt+Shift+Tab (previous)
*WheelDown::
    SendInput, {Blind}+{Tab}
return

; Suppress all other Wheel events so pages don’t scroll
*WheelLeft::return
*WheelRight::return

#If  ; end context

; Cleanup: ensure Alt isn't left logically down if the script exits unexpectedly.
ReleaseAlt:
    ; If we think we're in ForwardHeld mode, or Alt is logically down, release Alt.
    if (ForwardHeld || GetKeyState("Alt")) {
        Send, {Alt Up}
        ForwardHeld := false
        ForwardTimerActive := false
    }
return
