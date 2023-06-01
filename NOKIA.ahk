;Auto Hotkey script that simulate old NOKIA phone's numpad

;      HP Pavilion Laptop 15-cs3xxx Numpad
;    +---------+--------+---------+---------+
;    | NumLock |    /   |    *    |    -    |
;    +---------+--------+---------+---------+
;    | 7 abc   | 8 def  | 9 ghi   |         |
;    +---------+--------+---------+    +    |
;    | 4 jkl   | 5 mno  | 6 pqrs  |         |
;    +---------+--------+---------+---------+
;    | 1 tuv   | 2 wxyz | 3 UPPER |         |
;    +---------+--------+---------+  Enter  |
;    | 0   S P A C E    | . BACK  |         |
;    +------------------+---------+---------+
;       p/s: I sucks at ASCII art (┬┬﹏┬┬)

;Settings
cooldown := 300 ;Key change cooldown [>100] "below maybe unusable"
UPPER := 0 ;UPPERCASE switch(default off) [0;1] "off ; on"

;Key's last press timeline
a_last_press := 0
b_last_press := 0
c_last_press := 0
d_last_press := 0
e_last_press := 0
f_last_press := 0
g_last_press := 0
h_last_press := 0
i_last_press := 0

;Key's switch counter
a_count :=0
b_count :=0
d_count :=0
d_count :=0
e_count :=0
f_count :=0
g_count :=0
h_count :=0
i_count :=0

;Numpad 0 >> Space, reset all timeline
NumpadIns::
    Send {Space}
    a_last_press := 0
    b_last_press := 0
    c_last_press := 0
    d_last_press := 0
    e_last_press := 0
    f_last_press := 0
    g_last_press := 0
    h_last_press := 0
    i_last_press := 0
return

;Numpad 3 >> UPPERCASE switch
NumpadPgDn::
    switch UPPER
    {
        case 0:
            UPPER :=1
        case 1:
            UPPER :=0
    }
return

;Numpad Dot >> Backspace
NumpadDel::Send {Backspace}

;Numpad 7 >> abc
NumpadHome::
    b_last_press := 0
    c_last_press := 0
    d_last_press := 0
    e_last_press := 0
    f_last_press := 0
    g_last_press := 0
    h_last_press := 0
    i_last_press := 0
    switch UPPER
    {
        case 0:
            Send a
            if (A_TickCount - a_last_press < cooldown)
            {
                switch a_count
                {
                    case 0:
                        Send {Backspace 2}b
                        a_last_press := A_TickCount
                        a_count += 1
                    case 1:
                        Send {Backspace 2}c
                        a_last_press := A_TickCount
                        a_count += 1
                    case 2:
                        Send {Backspace 2}a
                        a_last_press := A_TickCount
                        a_count := 0
                }
            }
            else
            {
                a_last_press := A_TickCount
                a_count := 0
            }
        case 1:
            Send A
            if (A_TickCount - a_last_press < cooldown)
            {
                switch a_count
                {
                    case 0:
                        Send {Backspace 2}B
                        a_last_press := A_TickCount
                        a_count += 1
                    case 1:
                        Send {Backspace 2}C
                        a_last_press := A_TickCount
                        a_count += 1
                    case 2:
                        Send {Backspace 2}A
                        a_last_press := A_TickCount
                        a_count := 0
                }
            }
            else
            {
                a_last_press := A_TickCount
                a_count := 0
            }
    }
return

;Numpad 8 >> def
NumpadUp::
    a_last_press := 0
    c_last_press := 0
    d_last_press := 0
    e_last_press := 0
    f_last_press := 0
    g_last_press := 0
    h_last_press := 0
    i_last_press := 0
    switch UPPER
    {
        case 0:
            Send d
            if (A_TickCount - b_last_press < cooldown)
            {
                switch b_count
                {
                    case 0:
                        Send {Backspace 2}e
                        b_last_press := A_TickCount
                        b_count += 1
                    case 1:
                        Send {Backspace 2}f
                        b_last_press := A_TickCount
                        b_count += 1
                    case 2:
                        Send {Backspace 2}d
                        b_last_press := A_TickCount
                        b_count := 0
                }
            }
            else
            {
                b_last_press := A_TickCount
                b_count := 0
            }
        case 1:
            Send D
            if (A_TickCount - b_last_press < cooldown)
            {
                switch b_count
                {
                    case 0:
                        Send {Backspace 2}E
                        b_last_press := A_TickCount
                        b_count += 1
                    case 1:
                        Send {Backspace 2}F
                        b_last_press := A_TickCount
                        b_count += 1
                    case 2:
                        Send {Backspace 2}D
                        b_last_press := A_TickCount
                        b_count := 0
                }
            }
            else
            {
                b_last_press := A_TickCount
                b_count := 0
            }
    }
return

;Numpad 9 >> ghi
NumpadPgUp::
    a_last_press := 0
    b_last_press := 0
    d_last_press := 0
    e_last_press := 0
    f_last_press := 0
    g_last_press := 0
    h_last_press := 0
    i_last_press := 0
    switch UPPER
    {
        case 0:
            Send g
            if (A_TickCount - c_last_press < cooldown)
            {
                switch d_count
                {
                    case 0:
                        Send {Backspace 2}h
                        c_last_press := A_TickCount
                        d_count += 1
                    case 1:
                        Send {Backspace 2}i
                        c_last_press := A_TickCount
                        d_count += 1
                    case 2:
                        Send {Backspace 2}g
                        c_last_press := A_TickCount
                        d_count := 0
                }
            }
            else
            {
                c_last_press := A_TickCount
                d_count := 0
            }
        case 1:
            Send G
            if (A_TickCount - c_last_press < cooldown)
            {
                switch d_count
                {
                    case 0:
                        Send {Backspace 2}H
                        c_last_press := A_TickCount
                        d_count += 1
                    case 1:
                        Send {Backspace 2}I
                        c_last_press := A_TickCount
                        d_count += 1
                    case 2:
                        Send {Backspace 2}G
                        c_last_press := A_TickCount
                        d_count := 0
                }
            }
            else
            {
                c_last_press := A_TickCount
                d_count := 0
            }
    }
return

;Numpad 4 >> jkl
NumpadLeft::
    a_last_press := 0
    b_last_press := 0
    c_last_press := 0
    e_last_press := 0
    f_last_press := 0
    g_last_press := 0
    h_last_press := 0
    i_last_press := 0
    switch UPPER
    {
        case 0:
            Send j
            if (A_TickCount - d_last_press < cooldown)
            {
                switch d_count
                {
                    case 0:
                        Send {Backspace 2}k
                        d_last_press := A_TickCount
                        d_count += 1
                    case 1:
                        Send {Backspace 2}l
                        d_last_press := A_TickCount
                        d_count += 1
                    case 2:
                        Send {Backspace 2}j
                        d_last_press := A_TickCount
                        d_count := 0
                }
            }
            else
            {
                d_last_press := A_TickCount
                d_count := 0
            }
        case 1:
            Send J
            if (A_TickCount - d_last_press < cooldown)
            {
                switch d_count
                {
                    case 0:
                        Send {Backspace 2}K
                        d_last_press := A_TickCount
                        d_count += 1
                    case 1:
                        Send {Backspace 2}L
                        d_last_press := A_TickCount
                        d_count += 1
                    case 2:
                        Send {Backspace 2}J
                        d_last_press := A_TickCount
                        d_count := 0
                }
            }
            else
            {
                d_last_press := A_TickCount
                d_count := 0
            }
    }
return

;Numpad 5 >> mno
NumpadClear::
    a_last_press := 0
    b_last_press := 0
    c_last_press := 0
    d_last_press := 0
    f_last_press := 0
    g_last_press := 0
    h_last_press := 0
    i_last_press := 0
    switch UPPER
    {
        case 0:
            Send m
            if (A_TickCount - e_last_press < cooldown)
            {
                switch e_count
                {
                    case 0:
                        Send {Backspace 2}n
                        e_last_press := A_TickCount
                        e_count += 1
                    case 1:
                        Send {Backspace 2}o
                        e_last_press := A_TickCount
                        e_count += 1
                    case 2:
                        Send {Backspace 2}m
                        e_last_press := A_TickCount
                        e_count := 0
                }
            }
            else
            {
                e_last_press := A_TickCount
                e_count := 0
            }
        case 1:
            Send M
            if (A_TickCount - e_last_press < cooldown)
            {
                switch e_count
                {
                    case 0:
                        Send {Backspace 2}N
                        e_last_press := A_TickCount
                        e_count += 1
                    case 1:
                        Send {Backspace 2}O
                        e_last_press := A_TickCount
                        e_count += 1
                    case 2:
                        Send {Backspace 2}M
                        e_last_press := A_TickCount
                        e_count := 0
                }
            }
            else
            {
                e_last_press := A_TickCount
                e_count := 0
            }
    }
return

;Numpad 6 >> pqrs
NumpadRight::
    a_last_press := 0
    b_last_press := 0
    c_last_press := 0
    d_last_press := 0
    e_last_press := 0
    g_last_press := 0
    h_last_press := 0
    i_last_press := 0
    switch UPPER
    {
        case 0:
            Send p
            if (A_TickCount - f_last_press < cooldown)
            {
                switch f_count
                {
                    case 0:
                        Send {Backspace 2}q
                        f_last_press := A_TickCount
                        f_count += 1
                    case 1:
                        Send {Backspace 2}r
                        f_last_press := A_TickCount
                        f_count += 1
                    case 2:
                        Send {Backspace 2}s
                        f_last_press := A_TickCount
                        f_count += 1
                    case 3:
                        Send {Backspace 2}p
                        f_last_press := A_TickCount
                        f_count := 0
                }
            }
            else
            {
                f_last_press := A_TickCount
                f_count := 0
            }
        case 1:
            Send P
            if (A_TickCount - f_last_press < cooldown)
            {
                switch f_count
                {
                    case 0:
                        Send {Backspace 2}Q
                        f_last_press := A_TickCount
                        f_count += 1
                    case 1:
                        Send {Backspace 2}R
                        f_last_press := A_TickCount
                        f_count += 1
                    case 2:
                        Send {Backspace 2}S
                        f_last_press := A_TickCount
                        f_count += 1
                    case 3:
                        Send {Backspace 2}P
                        f_last_press := A_TickCount
                        f_count := 0
                }
            }
            else
            {
                f_last_press := A_TickCount
                f_count := 0
            }
    }
return

;Numpad 1 >> tuv
NumpadEnd::
    a_last_press := 0
    b_last_press := 0
    c_last_press := 0
    d_last_press := 0
    e_last_press := 0
    f_last_press := 0
    g_last_press := 0
    i_last_press := 0
    switch UPPER
    {
        case 0:
            Send t
            if (A_TickCount - h_last_press < cooldown)
            {
                switch h_count
                {
                    case 0:
                        Send {Backspace 2}u
                        h_last_press := A_TickCount
                        h_count += 1
                    case 1:
                        Send {Backspace 2}v
                        h_last_press := A_TickCount
                        h_count += 1
                    case 2:
                        Send {Backspace 2}t
                        h_last_press := A_TickCount
                        h_count := 0
                }
            }
            else
            {
                h_last_press := A_TickCount
                h_count := 0
            }
        case 1:
            Send T
            if (A_TickCount - h_last_press < cooldown)
            {
                switch h_count
                {
                    case 0:
                        Send {Backspace 2}U
                        h_last_press := A_TickCount
                        h_count += 1
                    case 1:
                        Send {Backspace 2}V
                        h_last_press := A_TickCount
                        h_count += 1
                    case 2:
                        Send {Backspace 2}T
                        h_last_press := A_TickCount
                        h_count := 0
                }
            }
            else
            {
                h_last_press := A_TickCount
                h_count := 0
            }
    }
return

;Numpad 2 >> wxyz
NumpadDown::
    a_last_press := 0
    b_last_press := 0
    c_last_press := 0
    d_last_press := 0
    e_last_press := 0
    f_last_press := 0
    g_last_press := 0
    h_last_press := 0
    switch UPPER
    {
        case 0:
            Send w
            if (A_TickCount - i_last_press < cooldown)
            {
                switch i_count
                {
                    case 0:
                        Send {Backspace 2}x
                        i_last_press := A_TickCount
                        i_count += 1
                    case 1:
                        Send {Backspace 2}y
                        i_last_press := A_TickCount
                        i_count += 1
                    case 2:
                        Send {Backspace 2}z
                        i_last_press := A_TickCount
                        i_count += 1
                    case 3:
                        Send {Backspace 2}w
                        i_last_press := A_TickCount
                        i_count := 0
                }
            }
            else
            {
                i_last_press := A_TickCount
                i_count := 0
            }
        case 1:
            Send W
            if (A_TickCount - i_last_press < cooldown)
            {
                switch i_count
                {
                    case 0:
                        Send {Backspace 2}X
                        i_last_press := A_TickCount
                        i_count += 1
                    case 1:
                        Send {Backspace 2}Y
                        i_last_press := A_TickCount
                        i_count += 1
                    case 2:
                        Send {Backspace 2}Z
                        i_last_press := A_TickCount
                        i_count += 1
                    case 3:
                        Send {Backspace 2}W
                        i_last_press := A_TickCount
                        i_count := 0
                }
            }
            else
            {
                i_last_press := A_TickCount
                i_count := 0
            }
    }
return
