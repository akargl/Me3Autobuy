;Window Mode 1024x768
;Pack Coordinates
RCP_x = 160
RCP_y = 440
VP_x = 160
VP_y = 490
SP_x = 160
SP_y = 540
PSP_x = 160
PSP_y = 590
;scroll down thrice
JEP_x = 160
JEP_y = 490
AP_x = 160
AP_y = 540
RP_x = 160
RP_y = 590

Buy_Confirmation_x = 445
Buy_Confirmation_y = 422

Buy_Credits_x = 400
Buy_Credits_y = 400

Continue_x = 884
Continue_y = 647


Gui, Add, Text,, Recruit Packs:
Gui, Add, Text,, Veteran Packs:
Gui, Add, Text,, Spectre Packs:
Gui, Add, Text,, Premium Spectre Packs:
Gui, Add, Text,, Jumpo Equipment Packs:
Gui, Add, Text,, Arsenal Packs:
Gui, Add, Text,, Reserve Packs:
Gui, Add, Edit, w40 Number vRCP ym, 0  ; The ym option starts a new column of controls.
Gui, Add, Edit, w40 Number vVP, 0
Gui, Add, Edit, w40 Number vSP, 0
Gui, Add, Edit, w40 Number vPSP, 0
Gui, Add, Edit, w40 Number vJEP, 0
Gui, Add, Edit, w40 Number vAP, 0
Gui, Add, Edit, w40 Number vRP, 0
Gui, Add, Button, default xm, OK
Gui, Show,, ME3 Autobuy
return ;End auto-execution, wait for user input

GuiClose:
ExitApp
ButtonOK:
Gui, submit
IfWinExist Mass Effect 3
{   
    WinActivate Mass Effect 3

    Loop %RCP%
    {
        Sleep 500
        Click %RCP_x% %RCP_y% 2
        Sleep 500
        Click %Buy_Confirmation_x% %Buy_Confirmation_y%
        Sleep 10000
        Click %Continue_x% %Continue_y%
        Sleep 500
    }
    Loop %VP%
    {
        Sleep 500
        Click %VP_x% %VP_y% 2
        Sleep 500
        Click %Buy_Credits_x% %Buy_Credits_y%
        Sleep 10000
        Click %Continue_x% %Continue_y%
        Sleep 500
    }
    Loop %SP%
    {
        Sleep 500
        Click %SP_x% %SP_y% 2
        Sleep 500
        Click %Buy_Credits_x% %Buy_Credits_y%
        Sleep 10000
        Click %Continue_x% %Continue_y%
        Sleep 500
    }
    Loop %PSP%
    {
        Sleep 500
        Click %PSP_x% %PSP_y% 2
        Sleep 500
        Click %Buy_Credits_x% %Buy_Credits_y%
        Sleep 10000
        Click %Continue_x% %Continue_y%
        Sleep 500
    }
    Loop %JEP%
    {
        Click %JEP_x% %JEP_y% 0
        Click WheelDown
        Click WheelDown
        Click WheelDown
        Sleep 500
        Click %JEP_x% %JEP_y% 2
        Sleep 500
        Click %Buy_Credits_x% %Buy_Credits_y%
        Sleep 10000
        Click %Continue_x% %Continue_y%
        Sleep 500
    }
    Loop %AP%
    {
        Click %AP_x% %AP_y% 0
        Click WheelDown
        Click WheelDown
        Click WheelDown
        Sleep 500
        Click %AP_x% %AP_y% 2
        Sleep 500
        Click %Buy_Credits_x% %Buy_Credits_y%
        Sleep 10000
        Click %Continue_x% %Continue_y%
        Sleep 500
    }
    Loop %RP%
    {
        Click %RP_x% %RP_y% 0
        Click WheelDown
        Click WheelDown
        Click WheelDown
        Sleep 500
        Click %RP_x% %RP_y% 2
        Sleep 500
        Click %Buy_Credits_x% %Buy_Credits_y%
        Sleep 10000
        Click %Continue_x% %Continue_y%
        Sleep 500
    }
}
else
{
    MsgBox, "Mass Effect 3 is not running"
}
ExitApp