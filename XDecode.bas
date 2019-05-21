Attribute VB_Name = "XDecode"


'==============================================================
' Funkcia Reverzna pre generovanie CodeB
'==============================================================
Function generateCodeB(keyA As String, key As Integer)
  Dim codeATemp() As Byte
  Dim codeBTemp(CodeLen) As Byte
  Dim temp As String
  codeATemp = splitCodeTemp(keyA, key)
  codeBTemp(0) = (codeATemp(0) Mod 11) * 4
  Debug.Print codeATemp(0) & " " & (codeATemp(0) Mod 11) & " " & codeBTemp(0)
  codeBTemp(1) = (codeATemp(1) Mod 13) * 3
  Debug.Print codeATemp(1) & " " & (codeATemp(1) Mod 13) & " " & codeBTemp(1)
  codeBTemp(2) = (codeATemp(2) Mod 17) * 2
  Debug.Print codeATemp(2) & " " & (codeATemp(2) Mod 17) & " " & codeBTemp(2)
  codeBTemp(3) = (codeATemp(3) Mod 19) * 1
  Debug.Print codeATemp(3) & " " & (codeATemp(3) Mod 19) & " " & codeBTemp(3)
  
  For i = 0 To CodeLen - 1
    temp = codeBTemp(i)
    If codeBTemp(i) < 10 Then temp = "0" & codeBTemp(i)
    generateCodeB = generateCodeB & temp
  Next i
  Debug.Print generateCodeB
  
End Function

'==============================================================
' Funkcia ziskanie Prvocisel
'==============================================================

Function PrimeNo()

Dim poc As Integer
Dim p, n, i, Npoc As Integer
p = 1
poc = 0
  For n = 1 To 100
    For i = 2 To n - 1
      If n Mod i = 0 Then
        p = 0
        Exit For
      Else
        p = 1
      End If

    Next
    If p = 1 Then
'      Prvocisla(poc) = n
      poc = poc + 1
    End If

  Next
End Function
