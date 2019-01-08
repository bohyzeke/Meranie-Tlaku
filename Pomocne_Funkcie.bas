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

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    TextX.Text = X
    TextY.Text = Y
End Sub



Private Sub Picture1_DragDrop(Source As Control, _
X As Single, Y As Single)
  Command1.Move X - Command1.Width / 2, _
Y - Command1.Height / 2
End Sub
