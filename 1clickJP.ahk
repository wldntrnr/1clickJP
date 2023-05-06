; The idea behind this is simple - we're "pressing" a language shortcut for Japanese (Shift+Ctrl+1)
; and then "pressing" a key that works as a Kana button
; which is located somewhere on Japanese keyboards (idk I don't have one).

; I used a Capslock button since it is fairly useless to me.
; You can use any keys/combination you like, just replace mine with yours.
; + is Shift, ^ is Ctrl, ! is Alt, # is the Windows key

Capslock::         ; Our Japanese layout. The hotkey is Capslock, replace with your button to remap
Send, +^1          ; "Pressing" a language shortcut (Shift+Ctrl+1), needs to be set in Windows. Replace with your key combination to remap
Send {vk16sc1F2}   ; "Pressing" a magic button that switches A to あ or does nothing if あ is already on,
return			   ; and since we only want あ we're totally fine with it

; An alternative way: Cycling through layouts using Tab.
; Delete or comment the below section if you don't need it
Tab::						; The hotkey is Tab, replace with your button to remap
Send {Alt down}{Shift}{Alt up}	; Sending Shift+Alt, the default combination for layout switch
Send {vk16sc1F2}				; Switch to hiragana if Japanese (if not, does nothing)
return