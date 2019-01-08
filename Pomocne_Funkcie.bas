Attribute VB_Name = "Pom_Func"

'==============================================================
'Struktura pre cas
'==============================================================
Private Type SYSTEMTIME
    wYear As Integer
    wMonth As Integer
    wDayOfWeek As Integer
    wDay As Integer
    wHour As Integer
    wMinute As Integer
    wSecond As Integer
    wMilliseconds As Integer
End Type
Private Declare Sub GetSystemTime Lib "kernel32" _
(lpSystemTime As SYSTEMTIME)

Public Function FolderExists(sFullPath As String) As Boolean
Dim myFSO As Object
Set myFSO = CreateObject("Scripting.FileSystemObject")
FolderExists = myFSO.FolderExists(sFullPath)
End Function



'==============================================================
'Funcia na ziskanie casu v milisekundach
'==============================================================
Public Function TimeToMillisecond() As String

Dim sAns As String
Dim typTime As SYSTEMTIME

On Error Resume Next
GetSystemTime typTime
sAns = Year(Now) & "_" & Month(Now) & "_" & Day(Now) & "_" & Hour(Now) & ":" & Minute(Now) & ":" & Second(Now) & _
"." & typTime.wMilliseconds
TimeToMillisecond = sAns
End Function

'==============================================================
'Ziskanie pozicie mysky na grafe
'==============================================================

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    TextX.Text = X
    TextY.Text = Y
End Sub


Private Sub Picture1_DragDrop(Source As Control, _
X As Single, Y As Single)
  Command1.Move X - Command1.Width / 2, _
Y - Command1.Height / 2
End Sub

'==============================================================
' Funkcia na nahranie nastavenia z INI Suboru
'==============================================================

Public Function LoadIni()
  
    
    Dim i As Byte
    i = 0
    For i = 0 To UBound(Snimac)
    
    ' Snimac.Name
      If GetINISetting("Snimac" & i, "Name", GV.IniFile) = "" Then
        Snimac(i).Name = "Snimac" & i
      Else
        Snimac(i).Name = GetINISetting("Snimac" & i, "Name", GV.IniFile)
      End If
    
    ' Smimac Color
      If GetINISetting("Snimac" & i, "Color", GV.IniFile) = "" Then
        Snimac(i).LiColor = 0
      Else
        Snimac(i).LiColor = GetINISetting("Snimac" & i, "Color", GV.IniFile)
      End If
    
    ' Snimac.Type
      If GetINISetting("Snimac" & i, "Type", GV.IniFile) = "" Then
        Snimac(i).Type = 0
      Else
        Snimac(i).Type = GetINISetting("Snimac" & i, "Type", GV.IniFile)
      End If
    
    ' Snimac.Min
      If GetINISetting("Snimac" & i, "Min", GV.IniFile) = "" Then
        Snimac(i).Min = 0
      Else
        Snimac(i).Min = GetINISetting("Snimac" & i, "Min", GV.IniFile)
      End If
    
    ' Snimac.Max
      If GetINISetting("Snimac" & i, "Max", GV.IniFile) = "" Then
        Snimac(i).Max = 0
      Else
        Snimac(i).Max = GetINISetting("Snimac" & i, "Max", GV.IniFile)
      End If
      
    ' Snimac.Show
      If GetINISetting("Snimac" & i, "Show", GV.IniFile) = "" Then
        Snimac(i).Show = 0
      Else
        Snimac(i).Show = GetINISetting("Snimac" & i, "Show", GV.IniFile)
      End If
      
    Next i
    
    ' ADS.N()
    For i = 0 To 5
        If GetINISetting("ADS", "N" & i, GV.IniFile) = "" Then
            Net.n(i) = 0
        Else
            Net.n(i) = GetINISetting("ADS", "N" & i, GV.IniFile)
        End If
    Next i
    
    ' ADS.Port
    If GetINISetting("ADS", "Port", GV.IniFile) = "" Then
        Net.Port = 0
    Else
        Net.Port = GetINISetting("ADS", "Port", GV.IniFile)
    End If
    
    ' Settings.FileSize
    If GetINISetting("Settings", "FileSize", GV.IniFile) = "" Then
        GV.SetSize = 10000
    Else
        GV.SetSize = GetINISetting("Settings", "FileSize", GV.IniFile)
    End If
    
End Function

