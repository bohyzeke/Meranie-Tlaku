Attribute VB_Name = "Pocitanie"
Public Function Snimac_na_Pixel(Snim As Integer, SMin As Long, SMax As Long, Typ As Integer) As Integer

Dim Rozsah As Integer

Select Case Typ
  Case 0
    Rozsah = 32767
  Case 1
    Rozsah = 32767
  Case 2
    Rozsah = 32767
  Case Else
    Rozsah = 32767
End Select


If Snim <> 0 Then
    Snimac_na_Pixel = Snim * (SMax - SMin) \ Rozsah
        
Else
    Snimac_na_Pixel = 0
End If
'FrmMain.Label2.Caption = Rozsah
End Function
