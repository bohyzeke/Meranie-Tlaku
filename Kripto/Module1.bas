Attribute VB_Name = "Hlavny"

'Definicia Snimacov a ich hodnot

Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
'Public Declare Sub InitCommonControls Lib "comctl32" ()

Dim XMouse As Single
Dim YMouse As Single
Type SENSOR
    Name As String
    LiColor As Long
    Type As Integer
    Max  As Long
    Min  As Long
    Pen As Long
    YLast As Long
    YNew As Long
End Type
Public Const PocetSnimacov = 8
Public Snimac(PocetSnimacov) As SENSOR ' definicia poctu snimacov
Public PIC1(PocetSnimacov) As SENSOR

Type aHodnoty
    Time As String
    S(PocetSnimacov) As Integer
 End Type
 Public aNacita() As aHodnoty
 

'Definicia Ads komunikacie
Type ADS
    n(6) As Integer
    Port As Integer
End Type
Public Net As ADS

'Definicie Globalnych premmennych
Type GlobalVar
    temp As String
    IniFile As String
    NetPort As Integer
    StartTim As String
    EndTim As String
    SetSize As Long
End Type
Public GV As GlobalVar
Public Prvocisla(50) As Integer
Public Const CodeLen = 4
Public codeATemp(CodeLen), codeBTemp(CodeLen) As Byte
Public CodeA, CodeB As String
Public CodeL As Integer

'==============================================================
'Hlavny program
'==============================================================

Public Sub Main()
    
    'Call Kripto.PrimeNo                 'naplnenie pola prvocisel 0-100
    
    Call VerifyCodeB("40303005")        ' overenie kodu
    GV.IniFile = App.Path & "\SETTINGS.INI"     ' Subor z nastaveniami programu
    
    LoadIni                    ' Ziskanie nastaveni z ini suboru
    FrmMain.Visible = True      ' Zobrazenie hlavneho formulara

End Sub

' Funkcia na nahranie nastavenia z INI Suboru
Public Function LoadIni()
  
    
    Dim i As Byte
    i = 0
    For i = 0 To UBound(Snimac)
    If GetINISetting("Snimac" & i, "Name", GV.IniFile) = "" Then
        Snimac(i).Name = "Snimac" & i
    Else
        Snimac(i).Name = GetINISetting("Snimac" & i, "Name", GV.IniFile)
    End If
    
    If GetINISetting("Snimac" & i, "Color", GV.IniFile) = "" Then
        Snimac(i).LiColor = 0
    Else
        Snimac(i).LiColor = GetINISetting("Snimac" & i, "Color", GV.IniFile)
    End If
    
    If GetINISetting("Snimac" & i, "Type", GV.IniFile) = "" Then
        Snimac(i).Type = 0
    Else
        Snimac(i).Type = GetINISetting("Snimac" & i, "Type", GV.IniFile)
    End If
    
    If GetINISetting("Snimac" & i, "Min", GV.IniFile) = "" Then
        Snimac(i).Min = 0
    Else
        Snimac(i).Min = GetINISetting("Snimac" & i, "Min", GV.IniFile)
    End If
    If GetINISetting("Snimac" & i, "Max", GV.IniFile) = "" Then
        Snimac(i).Max = 0
    Else
        Snimac(i).Max = GetINISetting("Snimac" & i, "Max", GV.IniFile)
    End If
    Next i
    
    For i = 0 To 5
        If GetINISetting("ADS", "N" & i, GV.IniFile) = "" Then
            Net.n(i) = 0
        Else
            Net.n(i) = GetINISetting("ADS", "N" & i, GV.IniFile)
        End If
    Next i
    
    If GetINISetting("ADS", "Port", GV.IniFile) = "" Then
        Net.Port = 0
    Else
        Net.Port = GetINISetting("ADS", "Port", GV.IniFile)
    End If
    
    If GetINISetting("Settings", "FileSize", GV.IniFile) = "" Then
        GV.SetSize = 10000
    Else
        GV.SetSize = GetINISetting("Settings", "FileSize", GV.IniFile)
    End If
    
End Function
Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    TextX.Text = X
    TextY.Text = Y
End Sub

Private Sub Picture1_DragDrop(Source As Control, _
X As Single, Y As Single)
  Command1.Move X - Command1.Width / 2, _
Y - Command1.Height / 2
End Sub


