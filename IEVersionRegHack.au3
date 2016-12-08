Func __IEVersionRegHack($CleanUpAfterwards = True)
    __IEVersionRegHack_Perform(True)
    If $CleanUpAfterwards Then
        OnAutoItExitRegister("__IEVersionRegUnHack")
    EndIf
EndFunc

Func __IEVersionRegUnHack()
    __IEVersionRegHack_Perform(False)
EndFunc

Func __IEVersionRegHack_Perform($Write)
    Local $_ ; just an unused var
    Local $ExeName = _PathSplit(@AutoItExe, $_, $_, $_, $_)[3] & ".exe"
    Local $KeyName = _
        "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer" & _
        "\Main\FeatureControl\FEATURE_BROWSER_EMULATION"
    If $Write Then
        RegWrite($KeyName, $ExeName, "REG_DWORD", 11001)
    Else
        RegDelete($KeyName, $ExeName)
    EndIf
EndFunc
