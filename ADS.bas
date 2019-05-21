Attribute VB_Name = "ADS"


Public Sub ADSinit()

On Error GoTo errFunc
    Dim client As TcAdsDll.TcClient
    Dim netId As AmsNetId
    '===Nastavenie ADS pripojenia a plc
    Set client = CreateObject("TcAdsDll.TcClient")
    netId.b(0) = Net.n(1)
    netId.b(1) = Net.n(2)
    netId.b(2) = Net.n(3)
    netId.b(3) = Net.n(4)
    netId.b(4) = Net.n(5)
    netId.b(5) = Net.n(6)
    
    
    Exit Sub
errFunc:
    MsgBox "ErrorADSinit: (0x" & Format(Hex(Err.Number), "00000000") & "), " & Err.Description
End Sub
