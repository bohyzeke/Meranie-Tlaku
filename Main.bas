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
    Show As Integer
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
Public Const CodeLen = 4
Public codeATemp(CodeLen), codeBTemp(CodeLen) As Byte
Public CodeA, CodeB As String
Public CodeL As Integer
Public keytype As Integer

'==============================================================
'Hlavny program
'==============================================================

Public Sub Main()
    keytype = 1      ' Typ kodu podla cislaHDD =1, nahodne = 2
    'Call Kripto.PrimeNo                 'naplnenie pola prvocisel 0-100
    
    
    GV.IniFile = App.Path & "\SETTINGS.INI"     ' Subor z nastaveniami programu
    
    LoadIni                    ' Ziskanie nastaveni z ini suboru
    FrmMain.Visible = True      ' Zobrazenie hlavneho formulara
    
'    Call VerifyCodeB("")        ' overenie kodu

End Sub





