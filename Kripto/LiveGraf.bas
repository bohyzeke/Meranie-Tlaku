Attribute VB_Name = "LiveGraf"
Private Const SRCCOPY = &HCC0020 ' (DWORD) dest = source
Private Const PS_SOLID = 0

Private Declare Function CreateCompatibleDC Lib "gdi32" _
               (ByVal hdc As Long) As Long

Private Declare Function CreateCompatibleBitmap Lib "gdi32" _
               (ByVal hdc As Long, _
               ByVal nWidth As Long, _
               ByVal nHeight As Long) As Long

Private Declare Function SelectObject Lib "gdi32" _
               (ByVal hdc As Long, _
               ByVal hObject As Long) As Long

Private Declare Function CreatePen Lib "gdi32" _
               (ByVal nPenStyle As Long, _
               ByVal nWidth As Long, _
               ByVal crColor As Long) As Long

Private Declare Function LineTo Lib "gdi32" _
               (ByVal hdc As Long, _
               ByVal x As Long, _
               ByVal y As Long) As Long

Private Declare Function MoveToEx Lib "gdi32" _
               (ByVal hdc As Long, _
               ByVal x As Long, _
               ByVal y As Long, _
               ByVal lpPoint As Long) As Long

Private Declare Function BitBlt Lib "gdi32" _
               (ByVal hDestDC As Long, _
               ByVal x As Long, _
               ByVal y As Long, _
               ByVal nWidth As Long, _
               ByVal nHeight As Long, _
               ByVal hSrcDC As Long, _
               ByVal xSrc As Long, _
               ByVal ySrc As Long, _
               ByVal dwRop As Long) As Long

Private Const pWidth = 250    ' Width of picture box in pixels.
Private Const pHeight = 150   ' Height of picture box in pixels.
Private Const pGrid = 25      ' Distance between grid lines.
Private Const tInterval = 100 ' Interval between timer samplings
                              ' in milliseconds.
Private Const pHeightHalf = pHeight \ 2
Dim counter As Long  ' Number of data points logged so far. Used to
                     ' sync grid.
Dim oldY As Long     ' Contains the previous y coordinate.
Dim hDCh As Long, hPenB As Long, hPenC As Long
