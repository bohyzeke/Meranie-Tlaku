Attribute VB_Name = "Kripto"
'==============================================================
' Definicia premennych
'==============================================================



Const ttt = 80
Const off = 20

Dim codeATemp(CodeLen) As Integer

'==============================================================
' Funkcia Generoanie meniaceho klucaA
'==============================================================

 Function generateCodeATemp()
    Randomize 5
  Dim codeATemp(CodeLen) As Byte
  Dim i As Integer
  
    codeATemp(0) = CInt(Int((ttt * Rnd()) + off))
    codeATemp(1) = CInt(Int((ttt * Rnd()) + off))
    codeATemp(2) = CInt(Int((ttt * Rnd()) + off))
    codeATemp(3) = CInt(Int((ttt * Rnd()) + off))
    
    For i = 0 To 3
    generateCodeATemp = generateCodeATemp & codeATemp(i)
    Next i

End Function


Function splitCodeTemp(code As String, key As Integer)
'Print
  Dim i As Integer
  Dim codeTemp(CodeLen) As Byte
  Dim CodeLen2 As Byte
  CodeLen2 = Len(code) \ 2
  If CodeLen <> CodeLen2 Then
    Exitus
    For i = 1 To 4
        codeTemp(i) = 10
    Next i
    splitCodeTemp = codeTemp
    Exit Function
  End If
  
  i = 1
  For i = 1 To CodeLen
    codeTemp(CodeLen - i) = code Mod 100
    code = code \ 100
  Next i
    
  splitCodeTemp = codeTemp

End Function


'==============================================================
' Funkcia na overenie klucov
'==============================================================

Function VerifyCodeB(CodB As String, Reg As Boolean) ' Verifikacia kodu A a B
  Dim temp As String
  Dim SplitA() As Byte
  Dim SplitB() As Byte
  Dim tempA As String
  Dim tempB As String
  Dim EEE As String
  Dim CodeBl As Integer
  
  If CodB = "" Then
    CodeB = GetSetting(App.ProductName, "Application", "CB", "") ' Ziskanie code B z registra
  Else
    CodeB = CodB
  End If
  

  CodeA = getCodeA(keytype)
  Debug.Print CodeA
  temp = CodeA
 
  tempB = CodeB
  CodeBl = Len(CodeB)
  If (CodeB = "") Or (CodeBl > 8) Or (CodeBl < 6) Then      'Ak sa nenasiel kod B v registroch
    frmRegister1.Visible = True
    FrmMain.Blokuj      ' Spustenie Funkcie na blokovanie applikacie
    If Reg Then Exitus

    Exit Function
  End If
  

  
  SplitA = splitCodeTemp(temp, keytype)
  SplitB = splitCodeTemp(CodeB, keytype)
  
  If SplitB(0) <> ((SplitA(0) Mod 11) * 4) Then
    FrmMain.Blokuj
    Debug.Print "Hodnota 1 vadna"
    If Reg Then Exitus
    Exit Function
  End If
  If SplitB(1) <> ((SplitA(1) Mod 13) * 3) Then
    FrmMain.Blokuj
    Debug.Print "Hodnota 2 vadna"
    If Reg Then Exitus
    Exit Function
  End If
  If SplitB(2) <> ((SplitA(2) Mod 17) * 2) Then
    FrmMain.Blokuj
    Debug.Print "Hodnota 3 vadna"
    If Reg Then Exitus
    Exit Function
  End If
  If SplitB(3) <> ((SplitA(3) Mod 19) * 1) Then
    FrmMain.Blokuj
    'Debug.Print "Hodnota 4 vadna"
    If Reg Then Exitus
    Exit Function
  End If
  
  
  '' sem pride odblokoanie applikacie
  FrmMain.Odblokuj
  
  
  
  If Reg Then
    Call SaveSetting(App.ProductName, "Reg", "RegName", frmRegister1.TextRegName.Text)
    Call SaveSetting(App.ProductName, "Application", "CB", tempB)
        FrmAbout1.LabelRegister.Caption = "Applikacia zaregistrovana pre spolocnost " & frmRegister1.TextRegName.Text
   Debug.Print "Vsetko OK"
    If frmRegister1.Visible Then
      frmRegister1.Enabled = False
      frmRegister1.Visible = False
      Unload frmRegister1
    End If
    
    If FrmMain.Visible And FrmAbout1.Visible = False Then FrmMain.Enabled = True
    If FrmAbout1.Visible Then FrmAbout1.Enabled = True
    
    MsgBox ("Registracia bola uspesna")
  Else
    If frmRegister1.Visible Then
      frmRegister1.Visible = False
      Unload frmRegister1
     
    End If
    If FrmMain.Visible And FrmAbout1.Visible = False Then
       FrmMain.Enabled = True
       FrmMain.Show
    End If

    If FrmAbout1.Visible Then FrmAbout1.Enabled = True

    EEE = GetSetting(App.ProductName, "Reg", "RegName", "")
    
    If EEE = "" Then
      FrmAbout1.LabelRegister = "Neregistrovana Trial vezia"
    Else
      FrmAbout1.LabelRegister.Caption = "Applikacia zaregistrovana pre spolocnost " & EEE
    End If
      
    
  End If
    
  

End Function

'==============================================================
' Funkcia ziskanie kluca A
'==============================================================

Function getCodeA(keytype As Integer)
  Select Case keytype
    Case 2
      getCodeA = generateCodeATemp             ' generovanie docasneho cisla
    Case 1
      getCodeA = HDSerialNumber           ' ziskanie cisla hdd
      
    Case Else
      getCodeA = HDSerialNumber           ' ziskanie cisla hdd C
  End Select
End Function



'==============================================================
' Funkcia ziskanie Serioveho cisla HDD
'==============================================================
Function HDSerialNumber() As String
  Dim fsObj2 As Object
  Dim Hodnota As String
  Dim PocetHD, i As Integer
  Dim NHD As String
  Dim CisloHD As String
  
  
  Dim drv As Object
    Set fsObj2 = CreateObject("Scripting.FileSystemObject")
    Set drv = fsObj2.Drives("C")

    Hodnota = Left(Hex(drv.SerialNumber), 4) _
                     & Right(Hex(drv.SerialNumber), 4)
    PocetHD = Len(Hodnota)
    
    For i = 1 To PocetHD
        NHD = CInt("&H" & (Right(Hodnota, 1)))
        If CisloHD = "" Then
            CisloHD = NHD
        Else
            CisloHD = CisloHD + (NHD * 10 ^ (i - 1))
        End If
        Hodnota = Left(Hodnota, PocetHD - i)
    Next i
'    Debug.Print Right(CisloHD, 8)
    HDSerialNumber = Right(CisloHD, 8)
End Function

Function Exitus()
Dim ee2 As Integer
  ee2 = MsgBox("Registracne cislo je nespravne !", , "Chyba")
End Function
 


