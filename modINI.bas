Attribute VB_Name = "INI_File"
'*********************************************************************
'Created by : Shuja
'Description : Reads and Writes to the INI file using the API calls
'For : A dude on Codeguru
'Creation Date : 24-03-2005
'*********************************************************************


Option Explicit

'API Function to read information from INI File
Public Declare Function GetPrivateProfileString Lib "kernel32" _
    Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any _
    , ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long _
    , ByVal lpFileName As String) As Long

'API Function to write information to the INI File
Private Declare Function WritePrivateProfileString Lib "kernel32" _
    Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any _
    , ByVal lpString As Any, ByVal lpFileName As String) As Long

'Get the INI Setting from the File
Public Function GetINISetting(ByVal sHeading As String, ByVal sKey As String, sINIFileName) As String
    Const cparmLen = 50
    Dim sReturn As String * cparmLen
    Dim sDefault As String * cparmLen
    Dim lLength As Long
    lLength = GetPrivateProfileString(sHeading, sKey _
            , sDefault, sReturn, cparmLen, sINIFileName)
    GetINISetting = Mid(sReturn, 1, lLength)
End Function

'Save INI Setting in the File
Public Function PutINISetting(ByVal sHeading As String, ByVal sKey As String, ByVal sSetting As String, sINIFileName) As Boolean
    On Error GoTo HandleError
    Const cparmLen = 50
    Dim sReturn As String * cparmLen
    Dim sDefault As String * cparmLen
    Dim aLength As Long
    aLength = WritePrivateProfileString(sHeading, sKey _
            , sSetting, sINIFileName)
    PutINISetting = True
    Exit Function
    
HandleError:
    Debug.Print Err.Number & " " & Err.Description
End Function


Sub Main1()
    Dim sSetting As String
    
    'Reads a INI File (SETTINGS.INI) which has SECTION (SQLSERVER) and HEADING (SERVER) in It
    sSetting = GetINISetting("SQLSERVER", "SERVER", App.Path & "\SETTINGS.INI")
    sSetting = GetINISetting("Edo", "Main", App.Path & "\SETTINGS.INI") & "  " & sSetting
       
    'Change the above setting to this one
    PutINISetting "SQLSERVER", "SERVER", "MyNewSQLServer", App.Path & "\SETTINGS.INI"
    PutINISetting "Edo", "Main", "EEE", App.Path & "\SETTINGS.INI"
End Sub
