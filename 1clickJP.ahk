; The idea behind this is simple - we're using a shortcut for Japanese
; and then "pressing" a button that works as Kana button
; which is present on Japanese keyboards (so you don't have to buy one).

; I used F1-F3 and Capslock since they are fairly useless to me.
; You can use any keys/combination you like, just replace mine with yours.
; + is Shift, ^ is Ctrl, ! is Alt, # is the Windows key

F1::               ; Our first layout, for example English. The hotkey is F1.
Send, +^1         ; "Pressing" a layout shortcut (Ctrl+Alt+1), shortcuts need to be set in Windows settings
return

F2::               ; Our second layout, for example Spanish. The hotkey is F2.
Send, +^2          ; "Pressing" a key shortcut (Ctrl+Alt+2)
return

F3::               ; Our Japanese layout. The hotkey is F3.
Send, +^3          ; "Pressing" a key shortcut (Ctrl+Alt+3)
Send {vk16sc1F2}   ; "Pressing" a button which is our hero, it switches A to あ or does nothing if あ is already on,
return			   ; and since we only want あ it's a perfect behavior

; An alternative way: Cycling through layouts using Capslock
CapsLock::						; The hotkey is Capslock
Send {Alt down}{Shift}{Alt up}	; Sending Shift+Alt, the default combination for layout switch
Send {vk16sc1F2}				; Switch to hiragana if Japanese (does nothing on non-IME layouts such as English or Spanish)
return