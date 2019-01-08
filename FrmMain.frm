VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form FrmMain 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H8000000B&
   Caption         =   "Meranie Tlaku"
   ClientHeight    =   10215
   ClientLeft      =   60
   ClientTop       =   630
   ClientWidth     =   15120
   Icon            =   "FrmMain.frx":0000
   LinkTopic       =   "FrmMain"
   MousePointer    =   1  'Arrow
   ScaleHeight     =   10215
   ScaleWidth      =   15120
   WindowState     =   2  'Maximized
   Begin VB.CheckBox Mshow 
      Alignment       =   1  'Right Justify
      Caption         =   "Show"
      Height          =   255
      Index           =   7
      Left            =   14280
      TabIndex        =   42
      Top             =   7080
      Width           =   700
   End
   Begin VB.CheckBox Mshow 
      Alignment       =   1  'Right Justify
      Caption         =   "Show"
      Height          =   255
      Index           =   6
      Left            =   14280
      TabIndex        =   41
      Top             =   6240
      Width           =   700
   End
   Begin VB.CheckBox Mshow 
      Alignment       =   1  'Right Justify
      Caption         =   "Show"
      Height          =   255
      Index           =   5
      Left            =   14280
      TabIndex        =   40
      Top             =   5400
      Width           =   700
   End
   Begin VB.CheckBox Mshow 
      Alignment       =   1  'Right Justify
      Caption         =   "Show"
      Height          =   255
      Index           =   4
      Left            =   14280
      TabIndex        =   39
      Top             =   4560
      Width           =   700
   End
   Begin VB.CheckBox Mshow 
      Alignment       =   1  'Right Justify
      Caption         =   "Show"
      Height          =   255
      Index           =   3
      Left            =   14280
      TabIndex        =   38
      Top             =   3720
      Width           =   700
   End
   Begin VB.CheckBox Mshow 
      Alignment       =   1  'Right Justify
      Caption         =   "Show"
      Height          =   255
      Index           =   2
      Left            =   14280
      TabIndex        =   37
      Top             =   2880
      Width           =   700
   End
   Begin VB.CheckBox Mshow 
      Alignment       =   1  'Right Justify
      Caption         =   "Show"
      Height          =   255
      Index           =   1
      Left            =   14280
      TabIndex        =   36
      Top             =   2040
      Width           =   700
   End
   Begin VB.CheckBox Mshow 
      Alignment       =   1  'Right Justify
      Caption         =   "Show"
      Height          =   255
      Index           =   0
      Left            =   14280
      TabIndex        =   35
      Top             =   1200
      Width           =   700
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   7320
      Top             =   4920
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Timer aa 
      Interval        =   1
      Left            =   8160
      Top             =   8760
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   10080
      TabIndex        =   24
      Text            =   "Text3"
      Top             =   9360
      Width           =   3255
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   4920
      TabIndex        =   22
      Text            =   "Text2"
      Top             =   9240
      Width           =   1815
   End
   Begin VB.HScrollBar HScrollData 
      Height          =   255
      Left            =   0
      TabIndex        =   20
      Top             =   8400
      Width           =   12975
   End
   Begin MSComDlg.CommonDialog CD 
      Left            =   7560
      Top             =   9360
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      Orientation     =   2
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   8040
      Top             =   9240
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   10
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmMain.frx":1082
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmMain.frx":33C5D
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmMain.frx":69043
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmMain.frx":9D666
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmMain.frx":9E6F8
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmMain.frx":9F78A
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmMain.frx":A081C
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmMain.frx":A18AE
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmMain.frx":D7298
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmMain.frx":D832A
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.PictureBox Picture1 
      Height          =   7455
      Left            =   0
      MousePointer    =   2  'Cross
      ScaleHeight     =   493
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   861
      TabIndex        =   19
      Top             =   840
      Width           =   12975
      Begin VB.PictureBox Picture2 
         AutoRedraw      =   -1  'True
         Height          =   4095
         Left            =   720
         MousePointer    =   2  'Cross
         ScaleHeight     =   4035
         ScaleWidth      =   4755
         TabIndex        =   21
         Top             =   1800
         Width           =   4815
      End
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   360
      Left            =   0
      TabIndex        =   18
      Top             =   0
      Width           =   15120
      _ExtentX        =   26670
      _ExtentY        =   635
      ButtonWidth     =   609
      ButtonHeight    =   582
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      DisabledImageList=   "ImageList1"
      HotImageList    =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   15
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "TBFileO"
            Object.ToolTipText     =   "Otvor subor na zobrzenie"
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "TBFileC"
            Object.ToolTipText     =   "Zatvor graf"
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "TBStart"
            Object.ToolTipText     =   "Start zaznamu"
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Key             =   "TBStop"
            Object.ToolTipText     =   "Zastavenie zaznamu"
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "TBOptions"
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "TBDown"
            Style           =   1
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "TBUpp"
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "TBLeft"
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "TBRight"
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "TBAbout"
         EndProperty
      EndProperty
      BorderStyle     =   1
      MousePointer    =   1
      MouseIcon       =   "FrmMain.frx":10E293
   End
   Begin VB.TextBox TextY 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   3480
      TabIndex        =   17
      Text            =   "Y Value"
      Top             =   9240
      Width           =   1095
   End
   Begin VB.TextBox TextX 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   1200
      TabIndex        =   15
      Text            =   "X Value"
      Top             =   9240
      Width           =   1095
   End
   Begin VB.TextBox TextNazov 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   7
      Left            =   13200
      TabIndex        =   13
      TabStop         =   0   'False
      Text            =   "Snimac8"
      Top             =   6720
      Width           =   1815
   End
   Begin VB.TextBox TextNazov 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   6
      Left            =   13200
      TabIndex        =   12
      TabStop         =   0   'False
      Text            =   "Snimac7"
      Top             =   5880
      Width           =   1815
   End
   Begin VB.TextBox TextNazov 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   5
      Left            =   13200
      TabIndex        =   11
      TabStop         =   0   'False
      Text            =   "Snimac6"
      Top             =   5040
      Width           =   1815
   End
   Begin VB.TextBox TextNazov 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   4
      Left            =   13200
      TabIndex        =   10
      TabStop         =   0   'False
      Text            =   "Snimac5"
      Top             =   4200
      Width           =   1815
   End
   Begin VB.TextBox TextNazov 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   3
      Left            =   13200
      TabIndex        =   9
      TabStop         =   0   'False
      Text            =   "Snimac4"
      Top             =   3360
      Width           =   1815
   End
   Begin VB.TextBox TextNazov 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   2
      Left            =   13200
      TabIndex        =   8
      TabStop         =   0   'False
      Text            =   "Snimac3"
      Top             =   2520
      Width           =   1815
   End
   Begin VB.TextBox TextNazov 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   13200
      TabIndex        =   7
      TabStop         =   0   'False
      Text            =   "Snimac2"
      Top             =   1680
      Width           =   1815
   End
   Begin VB.TextBox TextNazov 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   13200
      TabIndex        =   6
      TabStop         =   0   'False
      Text            =   "Snimac1"
      Top             =   840
      Width           =   1815
   End
   Begin VB.HScrollBar ScrollRychlost 
      Height          =   255
      Left            =   0
      Max             =   500
      Min             =   1
      TabIndex        =   5
      Top             =   9600
      Value           =   1
      Width           =   5655
   End
   Begin VB.Timer Timer2 
      Left            =   9120
      Top             =   9360
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   4
      Top             =   9840
      Width           =   15120
      _ExtentX        =   26670
      _ExtentY        =   661
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            AutoSize        =   2
            Text            =   "Edo"
            TextSave        =   "21:48"
            Key             =   "TeXt"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   2
         EndProperty
      EndProperty
      MouseIcon       =   "FrmMain.frx":144261
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   8640
      Top             =   9360
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2640
      TabIndex        =   2
      Text            =   "Text1"
      Top             =   480
      Width           =   2655
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "Start"
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton cmdStop 
      Caption         =   "Stop"
      Enabled         =   0   'False
      Height          =   255
      Left            =   1320
      TabIndex        =   0
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Hodnota 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   255
      Index           =   7
      Left            =   13320
      TabIndex        =   34
      Top             =   7080
      Width           =   700
   End
   Begin VB.Label Hodnota 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   255
      Index           =   6
      Left            =   13320
      TabIndex        =   33
      Top             =   6240
      Width           =   700
   End
   Begin VB.Label Hodnota 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   255
      Index           =   5
      Left            =   13320
      TabIndex        =   32
      Top             =   5400
      Width           =   700
   End
   Begin VB.Label Hodnota 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   255
      Index           =   4
      Left            =   13275
      TabIndex        =   31
      Top             =   4560
      Width           =   700
   End
   Begin VB.Label Hodnota 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   255
      Index           =   3
      Left            =   13320
      TabIndex        =   30
      Top             =   3720
      Width           =   700
   End
   Begin VB.Label Hodnota 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   255
      Index           =   2
      Left            =   13320
      TabIndex        =   29
      Top             =   2880
      Width           =   700
   End
   Begin VB.Label Hodnota 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   255
      Index           =   1
      Left            =   13320
      TabIndex        =   28
      Top             =   2040
      Width           =   700
   End
   Begin VB.Label Hodnota 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   255
      Index           =   0
      Left            =   13320
      TabIndex        =   27
      Top             =   1200
      Width           =   700
   End
   Begin VB.Label Label6 
      Caption         =   "Label6"
      Height          =   255
      Left            =   10680
      TabIndex        =   26
      Top             =   8760
      Width           =   2295
   End
   Begin VB.Label Label11 
      Caption         =   "Label11 Data "
      Height          =   255
      Left            =   7800
      TabIndex        =   25
      Top             =   480
      Visible         =   0   'False
      Width           =   4815
   End
   Begin VB.Label Label5 
      Caption         =   "Label5"
      Height          =   255
      Left            =   0
      TabIndex        =   23
      Top             =   8760
      Width           =   2295
   End
   Begin VB.Label LabelY 
      Alignment       =   1  'Right Justify
      Caption         =   "Hodnota:"
      Height          =   255
      Left            =   2640
      TabIndex        =   16
      Top             =   9240
      Width           =   735
   End
   Begin VB.Label LabelX 
      Alignment       =   1  'Right Justify
      Caption         =   "CAS:"
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   9240
      Width           =   855
   End
   Begin VB.Label Label10 
      Caption         =   "Label10"
      Height          =   255
      Left            =   5400
      TabIndex        =   3
      Top             =   480
      Width           =   2415
   End
   Begin VB.Menu M_File 
      Caption         =   "Subor"
      Begin VB.Menu M_Open 
         Caption         =   "Otvor"
         Shortcut        =   ^O
      End
      Begin VB.Menu M_Close 
         Caption         =   "Close"
      End
      Begin VB.Menu M_SaveGraf 
         Caption         =   "Uloz graf"
      End
   End
   Begin VB.Menu M_2 
      Caption         =   "Záznam"
      Begin VB.Menu M_Start 
         Caption         =   "Štart"
      End
      Begin VB.Menu M_Stop 
         Caption         =   "Stop"
         Enabled         =   0   'False
      End
   End
   Begin VB.Menu M_Setting 
      Caption         =   "Nástroje"
      Begin VB.Menu M_Options 
         Caption         =   "Nastavenie programu"
         Shortcut        =   ^F
      End
   End
   Begin VB.Menu M_Help 
      Caption         =   "Pomoc"
      Begin VB.Menu M_About 
         Caption         =   "O Programe"
      End
   End
End
Attribute VB_Name = "FrmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function SetParent Lib "user32" (ByVal hWndChild As Long, ByVal hWndNewParent As Long) As Long
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function MoveWindow Lib "user32" (ByVal hWnd As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal bRepaint As Long) As Long



Private Const WM_USER = &H400
Private Const SB_GETRECT As Long = (WM_USER + 10)
Dim WithEvents ADS As TcAdsDll.TcAdsSync
Attribute ADS.VB_VarHelpID = -1

Dim WithEvents kell As Timer
Attribute kell.VB_VarHelpID = -1
Dim kis1 As Long

Dim intFile As Integer      ' subor pre logy
Dim StrFile As String       ' Subor pre logovanie dat
'Dim file As String          ' Nazov suboru
Dim strFolderPath As String ' priecinok pre logy
Dim t2Interval As Integer   '

Dim SuborO As String        ' nazov suboru pre otvorenie
Dim DCount As Long          ' Pocet riadkov suboru
Dim CountDat As Long        ' premenna na pocitanie zaznamov
Dim Riadok As Long          ' Aktivny riadok suboru
Dim temp As Integer         ' docasna premenna
'Definicie pre grafy
Dim hBmp As Long            ' Zdrojovy obrazok pre Livegraf
Dim hBmp1 As Long           ' Zdrojovy obrazok pre oflinegraf


'==============================================================
'Definicia snimacov
'==============================================================
Dim StrSens(PocetSnimacov) As String    ' vysledne hodnoty zo snimacov
Dim SENSOR(PocetSnimacov) As Integer    ' Ziskane z ADS



'==============================================================
'Definicie pre Graf
'==============================================================
Private Const SRCCOPY = &HCC0020 ' (DWORD) dest = source
Private Const PS_SOLID = 0       ' Definicia pera grafu

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
               ByVal X As Long, _
               ByVal Y As Long) As Long

Private Declare Function MoveToEx Lib "gdi32" _
               (ByVal hdc As Long, _
               ByVal X As Long, _
               ByVal Y As Long, _
               ByVal lpPoint As Long) As Long

Private Declare Function BitBlt Lib "gdi32" _
               (ByVal hDestDC As Long, _
               ByVal X As Long, _
               ByVal Y As Long, _
               ByVal nWidth As Long, _
               ByVal nHeight As Long, _
               ByVal hSrcDC As Long, _
               ByVal xSrc As Long, _
               ByVal ySrc As Long, _
               ByVal dwRop As Long) As Long
               
Private Declare Function DeleteObject Lib "gdi32" _
            (ByVal hObject As Long) As Long

Private Declare Function DeleteDC Lib "gdi32" _
               (ByVal hdc As Long) As Long
               
Public pwidth, pHeight, pHeightHalf  As Long ' definicia velkosti obrazka

'Public Snimac_na_Pixel As Integer

Private Const pGrid = 25      ' Distance between grid lines.


Dim pWidth1 As Long, pHeight1 As Integer
Dim pGrid1 As Integer

Dim Counter As Long  ' Number of data points logged so far. Used to sync grid.
Dim Counter1 As Long

Dim oldY As Long                ' predchadzajuca y suradnica.
Dim hDCh As Long, hPenB As Long
Dim hDCh1 As Long

'==============================================================
'Definicie pre ADS
'==============================================================


Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" _
  (lpDest As Any, lpSrc As Any, ByVal Length As Long)
  
'==============================================================
'Definicie Casovaca ochrany
'==============================================================

Private Sub aa_Timer()
   
  If FrmMain.M_Stop.Enabled Then
    kis1 = kis1 + 1
    'Label2.Caption = kis1
  Else
    kis1 = 0
  End If
  
  If (kis1 >= 30) And (FrmMain.M_Stop.Enabled) Then   'kolko sekund trial?
    FStop
    StopLog
    Debug.Print " Cas pre trial zaznam vyprsal"
  MsgBox (" Timer kis doratal")
  End If
End Sub


'==============================================================
'ADS Definicia casovaca
'==============================================================
Private Sub kell_Timer()
    Label10.Caption = Format$(Now, "yyyy-MM-D-hh:mm:ss AM/PM")
    'Label11.Caption = Format$(Now, "dddd, mmmm dd, yyyy")
End Sub


'==============================================================
'ADS Pravidelne ziskanie dat a prevod na string
'==============================================================
Private Sub ads_DeviceNotification(pTime As TcAdsDll.TimeStamp, ByVal hNotification As Long, ByVal cbLen As Long, pData As Byte)
    Dim ValSens(PocetSnimacov) As Integer

    Dim a As Byte
    For a = 0 To PocetSnimacov - 1
        If (hNotification = SENSOR(a) And cbLen = 2) Then
            Call CopyMemory(ValSens(a), pData, cbLen)
            StrSens(a) = ValSens(a)
        End If
    Next a

End Sub

'==============================================================
'ADS - ukoncenie prenosu
'==============================================================
Private Sub DeleteNotifications()
    Dim i As Byte

    On Error GoTo errFunc
    For i = 0 To PocetSnimacov - 1
        If SENSOR(i) <> 0 Then
            Call ADS.DelDeviceNotification(SENSOR(i))
            SENSOR(i) = 0
        End If
    Next i
    Exit Sub
errFunc:
    MsgBox "Error: (0x" & Format(Hex(Err.Number), "00000000") & "), " & Err.Description
End Sub


'==============================================================
' Funkcia po nahrati formulara
'==============================================================
Private Sub Form_Load()

Dim i As Byte
Dim client As TcAdsDll.TcClient
Dim netId As AmsNetId

pwidth = 850    ' Obrazok grafu sirka v pixeloch.
pHeight = 500   ' Obrazok grafu vyska v pixeloch.

pHeightHalf = pHeight \ 2

FrmMain.Picture2.BorderStyle = 1
HScrollData.Max = 2
HScrollData.Visible = False




t2Interval = 100                        ' interval vzorkovania pre timer 2
ScrollRychlost.Value = t2Interval       ' Nastavenie Logovacieho intervalu
Me.Move (Screen.Width - Me.Width) / 2, (Screen.Height - Me.Height) / 2 'Presunutie obrazka offline na 0,0 a nastavenie velkosti

'Legenda ku Grafu
For i = 0 To PocetSnimacov - 1
    TextNazov(i).Text = Snimac(i).Name
    Snimac(i).Pen = CreatePen(PS_SOLID, 0, Snimac(i).LiColor) 'PenC
    TextNazov(i).BackColor = Snimac(i).LiColor
    Mshow(i).Value = Snimac(i).Show
Next i
FrmMain.Picture2.Visible = False

'pridelenie obrazkov ku tlacitkam na toolbare
Toolbar1.Buttons("TBStart").Image = 1       'Tlacidlo start
Toolbar1.Buttons("TBStop").Image = 2        'Tlacidlo Stop
Toolbar1.Buttons("TBOptions").Image = 3     'Tlacidlo Nastavenia
Toolbar1.Buttons("TBDown").Image = 4        'Tlacidlo dolu
Toolbar1.Buttons("TBUpp").Image = 5         'Tlacidlo fore
Toolbar1.Buttons("TBLeft").Image = 6        'Tlacidlo vlavo
Toolbar1.Buttons("TBRight").Image = 7       'Tlacidlo vpravo
Toolbar1.Buttons("TBAbout").Image = 8       'Tlacidlo Oprograme
Toolbar1.Buttons("TBFileO").Image = 9       'Tlacidlo Otvor subor
Toolbar1.Buttons("TBFileC").Image = 10      'Tlacidlo GrafClose
'
Live_Graf  'Priprava grafu a vykreslenie mriezky



'Docasne!!! na overenie funkcnosti

 
  Dim resVer As Boolean

  
  
  
  Call Kripto.VerifyCodeB("", False)
  
'!!!!!!!!!!!!!!!!!!!
 

Set kell = FrmMain.Controls.Add("vb.timer", "kell", FrmMain) 'Vytvorenie casovaca ADS
With kell: .Interval = 10: .Enabled = True: End With         'Nastavenie casovaca ADS


On Error GoTo errFunc
   
    '===Nastavenie ADS pripojenia a plc
    Set client = CreateObject("TcAdsDll.TcClient")
    netId.b(0) = Net.n(0) '192 '
    netId.b(1) = Net.n(1) '168 '
    netId.b(2) = Net.n(2) '0 '
    netId.b(3) = Net.n(3) '10 '
    netId.b(4) = Net.n(4) '1'
    netId.b(5) = Net.n(5) '1 '
    Set ADS = client.Connect(netId, Net.Port)
    
    Exit Sub
errFunc:
    MsgBox "Chyba: (0x" & Format(Hex(Err.Number), "00000000") & "), " & Err.Description
End Sub




'==============================================================
'Tlacitko start
'==============================================================
Private Sub cmdStart_Click()
    FStart
    StartLog
End Sub

'==============================================================
'Tlacitko Stop
'==============================================================
Private Sub cmdStop_Click()
    FStop
    StopLog
End Sub

'==============================================================
'Funkcia na ukoncenie Aplikacie
'==============================================================
Private Sub Form_Unload(Cancel As Integer)

     DeleteObject hBmp
     DeleteObject hBmp1
     DeleteDC hDCh
     DeleteDC hDCh1
    Call DeleteNotifications
    FrmAbout1.Enabled = True
    FrmAbout1.Visible = True
    FrmAbout1.Show
    Unload FrmAbout1
    frmRegister1.Enabled = True
    frmRegister1.Visible = True
    frmRegister1.Show
    Unload frmRegister1
    Unload Me
   
End Sub

'==============================================================
'Menu Open
'==============================================================
Private Sub M_Open_Click()
    FOtvor
End Sub

'==============================================================
'Menu Close
'==============================================================
Private Sub M_Close_Click()
    FClose
    HScrollData.Visible = False
End Sub


'==============================================================
'Menu Start
'==============================================================
Private Sub M_Start_Click()
    HScrollData.Visible = False
    FStart
    Picture2.Visible = False
    StartLog
End Sub

'==============================================================
'Menu Stop
'==============================================================
Private Sub M_Stop_Click()
    FStop
    StopLog
End Sub

'==============================================================
'Menu Settings Options
'==============================================================
Private Sub M_Options_Click()
  HScrollData.Visible = False
  OptionsFrm
End Sub

'==============================================================
'Menu Help About
'==============================================================
Private Sub M_About_Click()
FrmAbout1.Visible = True
FrmMain.Enabled = False

End Sub

'==============================================================
'Zmena checkboxu na hlavnej obrazovke
'==============================================================
Private Sub Mshow_Click(Index As Integer)
    Snimac(Index).Show = Mshow(Index).Value
    PutINISetting "Snimac" & Index, "Show", Snimac(Index).Show, GV.IniFile
End Sub

'==============================================================
'Scrollbar na upravu rychlosti vykreslovania grafu
'==============================================================
Private Sub ScrollRychlost_Change()

    t2Interval = ScrollRychlost.Value    'Nastavenie hodnoty pre interval
    Text1.Text = t2Interval              'zobrazenie hodnoty intervalu
    DoEvents ' toto nie je nutne , ale this is not strictly necessary, ale vyhladzuje niektore scrolovania

End Sub

'==============================================================
'Scrollbar na posuv offline grafu
'==============================================================
Private Sub HScrollData_Change()
    Dim ScrollTemp As Long
    Dim tempo As Long
    tempo = HScrollData.Value
    ScrollTemp = 65535
    'Label2.Caption = tempo
     ScrollTemp = tempo * 15
    If Picture2.Visible Then
        Call Ofline_Graf(ScrollTemp)
    End If
    'Picture2.Left = 0 - HScrollData.Value * 10 ' Posunutie grafu o 5 policok
    FrmMain.Text2.Text = HScrollData.Value  ' zobrazenie aktualneho posunutia grafu

    DoEvents

End Sub

















'==============================================================
'Detekovanie Pozicie myšky na online grafe
'==============================================================
Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    TextX.Text = X

    TextY.Text = pHeight - Y
End Sub

'==============================================================
'Detekovanie Pozicie myšky na ofline grafe
'==============================================================
Private Sub Picture2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim Tempd As String
    Dim tempo As Long
    Dim i As Integer
    tempo = HScrollData.Value
    Tempd = (tempo * 15 + X) & ""
    If DCount > 0 And Tempd < DCount Then
        Text3.Text = aNacita(Tempd).Time
        For i = 0 To PocetSnimacov - 1
            Hodnota(i).Caption = aNacita(Tempd).S(i)
        Next i
            
    Else
        Text3.Text = X
    End If
    TextX.Text = Tempd
    TextY.Text = pHeight - Y
    
End Sub




'==============================================================
'Casovac na pravidelne ziskavanie udajov
'==============================================================
Private Sub Timer1_Timer()

    Dim Temps As String

    Temps = TimeToMillisecond ' Ziskanie Casovej znacky plus Milisekundy
 
    Dim i As Byte
    For i = 0 To PocetSnimacov - 1
        Temps = Temps & "|" & StrSens(i)    ' Pridanie snimaca do stringu pre ulezenie do suboru
    Next i
    If CountDat >= GV.SetSize Then          ' kontrola velkosti suboru pre ukladanie udajov
        Close #intFile                      ' zatorenie plneho suboru
        GV.StartTim = Format$(Now, "yyyy-MM-D-hh_mm_ss")  ' Vytvorenie noveho nazvu suboru
        'FrmMain.Label1.Caption = GV.StartTim ' Zobrazenie noveho nazvu
        StrFile = App.Path & "\Data\" & GV.StartTim & ".txt" 'vytvorenie noveho nazvu pre ukladanie udajov
        intFile = FreeFile                  ' inicializacia suboroveho systemu
        Open StrFile For Output As #intFile ' Vytvorenie noveho suboru pre zapis dat
        CountDat = 0                        ' Vynuloanie pocitadla riadkov = zapisov
    End If
    CountDat = CountDat + 1                 ' Piripocitanie 1 k pocitadlu riadkov = zapisov

    Print #intFile, Temps                   ' Zapisanie udajov do suboru

'    Docasne pre zobrazenie
    Label11.Caption = Temps                 ' Zobrazenie zapisanych udajov do label11
    Label11.Enabled = False                 ' Zobrazenie Label11
    'Label11.Visible = True
    'Label3.Caption = StrSens(4)
    
End Sub

'==============================================================
'Casovac na vykreslovanie grafu
'==============================================================
Private Sub Timer2_Timer()
    Dim i As Integer
    Dim a As Integer
    Dim temp As Integer
    Dim TempI As Integer
    Dim Temp1 As Integer
    

    Call BitBlt(hDCh, 0, 0, pwidth - 1, pHeight, _
                 hDCh, 1, 0, SRCCOPY)
    
    If Counter Mod pGrid = 0 Then
        Call MoveToEx(hDCh, pwidth - 2, 0, 0)
        Call LineTo(hDCh, pwidth - 2, pHeight)
    End If
        
    For a = 0 To PocetSnimacov - 1
        If StrSens(a) = "" Then StrSens(a) = 0      'prepocet na pixely od snimaca
        
        ' prepocet hodnoty snimaca na pixely
        'i = Sin(0.1 * counter) * (pHeightHalf - 1) + pHeightHalf
        temp = Snimac_na_Pixel(StrSens(a) + 0, Snimac(a).Min, Snimac(a).Max, Snimac(a).Type)
        TempI = pHeight - temp - 25 - Snimac(a).Min
        If Snimac(a).Show = 1 Then
        Call SelectObject(hDCh, Snimac(a).Pen)
        Call MoveToEx(hDCh, pwidth - 3, Snimac(a).YLast, 0)
        Call LineTo(hDCh, pwidth - 2, TempI) ' i)  'temp)
        Call SelectObject(hDCh, hPenB)
        End If
        Call BitBlt(Picture1.hdc, 0, 0, _
                  pwidth, pHeight, hDCh, _
                  0, 0, SRCCOPY)
        
        Snimac(a).YLast = TempI
    Next a
    Counter = Counter + 1
    Timer2.Interval = t2Interval
End Sub
 
 
 
'==============================================================
'Funkcia vykreslovania Live grafu
'==============================================================
Public Function Live_Graf()
    FrmMain.Picture2.Visible = False   'Skritie ofline grafu
    
    Dim i As Integer
    Me.Show
    Picture1.ScaleMode = 3              ' Vykreslovanie v pixeloch
    Picture1.Left = 100                 ' Umiestnenie grafu z Lava
    Picture1.Top = 800                  ' Umiestnenie grafu od hora
    ScaleMode = 3                       ' Vykreslovanie v pixeloch
    Picture1.Height = pHeight + 5       ' Velkost grafu vyska
    Picture1.Width = pwidth + 5         ' Velkost grafu sirka
    Counter = 0                         ' nastavenie pocitadla na 0
    hDCh = CreateCompatibleDC(Picture1.hdc)     ' Vytvorenie Ramca pre obrazok
    hBmp = CreateCompatibleBitmap(Picture1.hdc, pwidth, pHeight)        ' umiestnenie obrazka pre ramec
    
    Call SelectObject(hDCh, hBmp)       ' Nacitanie obrazka do ramca
    hPenB = CreatePen(PS_SOLID, 0, vbBlack)     'Vytvorenie pera pre mriezku
    For i = 0 To UBound(Snimac) - 1
        Snimac(i).Pen = CreatePen(PS_SOLID, 0, Snimac(i).LiColor) 'Vytvorenie pera pre Smimac
    Next i
    Call SelectObject(hDCh, hPenB)      ' Pridelenie pera mriezky do ramca

' Plot horizontal grid lines.
    For i = pGrid To pHeight - 1 Step pGrid
        Picture1.Line (0, i)-(pwidth, i)    ' Vykreslenie horizontalnej mriezky
    Next

' Plot vertical grid lines.
    For i = pGrid - (Counter Mod pGrid) To pwidth - 1 Step pGrid
        Picture1.Line (i, 0)-(i, pHeight)   ' Vykreslenie vertikalnej mriezky
    Next

    Call BitBlt(hDCh, 0, 0, _
               pwidth, pHeight, _
               Picture1.hdc, _
               0, 0, SRCCOPY)           ' spojenie obrazka a mriezky
    Timer2.Interval = t2Interval        ' Nastavenie intervalu prekreslovania grafu
    Timer2.Enabled = False
'    Snimac(a).YLast = Temp
End Function



'==============================================================
'Detekovanie stlacenia toolbaru
'==============================================================
Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
Select Case Button.key
  Case "TBFileO"
    FOtvor
  Case "TBFileC"
    FClose
  Case "TBStart"
    FStart
    Picture2.Visible = False
    StartLog
  Case "TBStop"
    FStop
    StopLog
  Case "TBOptions"
    OptionsFrm
    
  Case "TBDown"
  Case "TBUpp"
  Case "TBLeft"
  Case "TBRight"
  
  Case "TBAbout"
    FrmAbout1.Visible = True
    FrmMain.Enabled = False
  ' Case ToolBarItem.tbNEW
End Select

End Sub




'==============================================================
'Funkcia Start Logovania
'==============================================================
Public Function StartLog()
    'Funkcia na spustenie Logovania
    Dim client As TcAdsDll.TcClient
    Dim netId As AmsNetId
    Dim delay As Long
    Dim cycle As Long
    
    'Ziskanie aktualneho startu pre ukladanie dat a otvorenie suboru pre zapis
    'If Not Pom_Func.FolderExists(App.Path & "\Data\") Then
    strFolderPath = App.Path & "\Data\"             'Adresar na ukladanie nameranych udajov
        If Dir(strFolderPath, vbDirectory) = "" Then
          MkDir strFolderPath                       ' Vytvorenie adresara na ukladanie udajov
        End If
    FrmMain.Picture2.Visible = False                ' skrytie obrazka s ofline grafom
    GV.StartTim = Format$(Now, "yyyy-MM-D-hh_mm_ss") ' ulozenie casovej znacky startu zaznamu
    'FrmMain.Label1.Caption = GV.StartTim             ' Zobrazenie casovej znacky startu
    StrFile = strFolderPath & GV.StartTim & ".txt"   ' Vytvorenie cesty/subor pre nove data
    intFile = FreeFile                               ' Inicializacia suboroveho systemu
    Open StrFile For Output As #intFile              ' otvorenie a zaroven vytvorenie suboru pre zapis udajov

    'Dodatocne nastavenie ADS citania
    delay = 0
    cycle = 1000 '100ms = 1000000
    CountDat = 1
    FrmMain.Timer1.Enabled = True           ' Spustenie casovaca pre
    
    FrmMain.Timer2.Enabled = True           ' Spustenie casovaca pre
    
    Dim i As Byte
    For i = 0 To PocetSnimacov - 1
        If SENSOR(i) = 0 Then

            SENSOR(i) = ADS.AddDeviceNotification(&H4020&, i * 2, 2, ADSTRANS_SERVERONCHA, delay, cycle)
            ' Vytorenie Spojenia pre jednotlive snimace
        End If
    Next i
    Exit Function
errFunc:
    ' Sprava pri chybe ADS pripojenia
    MsgBox "Error: (0x" & Format(Hex(Err.Number), "00000000") & "), " & Err.Description

End Function

'==============================================================
'Funkcia Ukoncenie Logovania
'==============================================================
Public Function StopLog()
    Timer2.Enabled = False
    CountDat = 0
    Timer1.Enabled = False
    Close #intFile
    Call DeleteNotifications
End Function

'==============================================================
'Funkcia Zobrazenie Nastaveni
'==============================================================
Public Function OptionsFrm()
    If Timer1.Enabled = False Then
        frmOptions.Visible = True
        FrmMain.Enabled = False
    Else
        MsgBox "Pocas Logovania udajov nie je dovolene menit nastavenia!", vbExclamation, "Error"
    End If
End Function

'==============================================================
'Funkcia na otvorenie a nacitania suboru s ulozenymi udajmi
'==============================================================
Sub FOtvor()
  ' Spustenie dialogu na otvorenie suboru
  With FrmMain.CD
    .Filter = "Textový soubor (*.txt)|*.txt"
    .FileName = ""
    .ShowOpen
  End With
 
 ' FrmMain.Label3.Caption = FrmMain.CD.FileName
  FrmMain.Caption = "Zaznam dat " & " - " & FrmMain.CD.FileTitle
  SuborO = FrmMain.CD.FileName
  If SuborO = "" Then
    MsgBox "Nebol vybrany subor"
    Exit Sub
  End If
  'Zmena = False
'-----------------------------------
' sem pride eror pri nacitani suboru

  Dim intFile As Integer
  intFile = FreeFile
  Dim S As String
  Dim a As Long

  Dim MyLine1 As String
  'zistenie poctu zaznamov v subore
  DCount = 0
  
  Open SuborO For Input As #2
  Do While Not EOF(2)
    Line Input #2, S
    DCount = DCount + 1
  Loop
  Close #2
  pWidth1 = DCount
  
  
  
  'Predefinovanie pola z hodnotami
  ReDim aNacita(DCount) As aHodnoty
  'Otvorenie suboru a nacitanie hodnot do pola aNacita()
  Open SuborO For Input As #2 ' Otvorenie suboru pre nacitanie
  a = 0
  Do While Not EOF(2)       ' Kontrola cyklu na koniec suboru.
    Line Input #2, MyLine1  ' Nacitanie Dat jednoho riadku.
    Dim data() As String    ' reset pola pre nacitane udaje
    
    
    data = Split(MyLine1, "|") ' Rozdelenie riadku na jednotlive udaje
    ' Ulozenie jednotlivych udajov do pola aNacita()
    aNacita(a).Time = data(0)
    aNacita(a).S(0) = data(1)
    aNacita(a).S(1) = data(2)
    aNacita(a).S(2) = data(3)
    aNacita(a).S(3) = data(4)
    aNacita(a).S(4) = data(5)
    aNacita(a).S(5) = data(6)
    aNacita(a).S(6) = data(7)
    aNacita(a).S(7) = data(8)
    Riadok = a
    a = a + 1
  Loop
  Close #2      ' Uzavretie suboru s datami
  HScrollData.Max = (DCount - pwidth) / 15 - 1
  HScrollData.Min = 1
  HScrollData.Value = 1
  Call Ofline_Graf(0)
'  Picture2.Visible = True
End Sub

'==============================================================
'Funkcia vykreslovania Ofline grafu
'==============================================================
Function Ofline_Graf(X1 As Long)
  HScrollData.Visible = True
  StatusBar1.Panels(2).Text = "Nacitam subor"
  'Dim hBmp1 As Long
  Dim i As Long
  Dim Counter1 As Integer
  Me.Show
  Picture2.ScaleMode = 3
  Picture2.Left = 0
  Picture2.Top = 0
  'ScaleMode = 3
  FrmMain.Picture2.Visible = True
  Picture2.Height = pHeight + 5
  Picture2.Width = pwidth + 5
  Counter1 = 0
    
  Set Picture2.Picture = Nothing
    
  If hBmp1 Then DeleteObject hBmp1
  If hDCh1 Then DeleteDC hDCh1
    
  hBmp1 = CreateCompatibleBitmap(Picture2.hdc, pwidth, pHeight)
  Set Picture2.Picture = Nothing
    
  hDCh1 = CreateCompatibleDC(Picture2.hdc)
   
  Call SelectObject(hDCh1, hBmp1)
    
  hPenB = CreatePen(PS_SOLID, 0, vbBlack)
    
  For i = 0 To UBound(PIC1) - 1
    Call SelectObject(hDCh1, hBmp1)
    PIC1(i).Pen = CreatePen(PS_SOLID, 0, Snimac(i).LiColor) 'PenC
  Next i
  Call SelectObject(hDCh1, hPenB)
  StatusBar1.Panels(2).Text = "Vykreslujem"
' Plot horizontal grid lines.
  i = 0
  For i = pGrid To pHeight - 1 Step pGrid
    Picture2.Line (0, i)-(pwidth, i)
    StatusBar1.Panels(2).Text = "Horizontal"
  Next

' Plot vertical grid lines.
    
  For i = pGrid - (Counter1 Mod pGrid) To pwidth - 1 Step pGrid
    Picture2.Line (i, 0)-(i, pHeight)
    StatusBar1.Panels(2).Text = "Vertikal"
  Next

  i = 0

  Call BitBlt(hDCh1, 0, 0, _
          pwidth, pHeight, _
          Picture2.hdc, _
          0, 0, SRCCOPY)
    
  StatusBar1.Panels(2).Text = "Nacitam"
  i = 0
  If pwidth >= pWidth1 Then pwidth = pWidth1
  For i = 0 To pwidth - 1
    Dim k As Integer
    For k = 0 To PocetSnimacov - 1
      Dim Previous As Integer
      Dim Actual As Long
      'Previous = aNacita(i + X1).S(k) + 25 'Nacitanie predchadzajucej hodnoty snimaca
      Previous = Snimac_na_Pixel(aNacita(i + X1).S(k), _
                  Snimac(k).Min, _
                  Snimac(k).Max, _
                  Snimac(k).Type) + 25 + Snimac(k).Min
           
      'Actual = aNacita(i + 1 + X1).S(k) + 25 'Nacitanie Aktualnej hodnoty snimaca
      Actual = Snimac_na_Pixel(aNacita(i + 1 + X1).S(k), _
                  Snimac(k).Min, _
                  Snimac(k).Max, _
                  Snimac(k).Type) + 25 + Snimac(k).Min
            
      'If aNacita(i + X1).S(k) >= 499 Then Previous = 499     ' ak bola prekrocena maximalna hodnota grafu
      'If aNacita(i + 1 + X1).S(k) >= 499 Then Actual = 499   ' ak bola prekrocena maximalna hodnota grafu

'      Call SelectObject(hDCh1, PIC1(k).Pen)
'      Picture2.Line (i, pHeight - Previous)-(i + 1, pHeight - Actual)
      If Snimac(k).Show = 1 Then
        Call SelectObject(hDCh1, PIC1(k).Pen)       ' nastavenie pera pre snimac
        Call MoveToEx(hDCh1, i, pHeight - Previous, 0)     ' Nastavenie pera na predchadzajuci bod
        Call LineTo(hDCh1, i + 1, pHeight - Actual)        ' Vykreslenie ciary po aktualny bod
      End If
    Next k
           

    Riadok = i
    'Label4.Caption = Riadok
  Next i
  Dim temp As Integer
  temp = (DCount - pwidth) / 5
  FrmMain.Label5.Caption = aNacita(X1).Time
  FrmMain.Label6.Caption = aNacita(X1 + pwidth - 1).Time
    
    
  Call BitBlt(Picture2.hdc, 0, 0, _
          pwidth, pHeight, hDCh1, _
          0, 0, SRCCOPY)
        
    
  StatusBar1.Panels(2).Text = "Vykreslenie dokoncene"
End Function


'==============================================================
'Funcia na povolenia tlacidiel pri Starte zaznamu
'==============================================================
Sub FStart()
    Picture2.Visible = False
    HScrollData.Value = 1
    HScrollData.Visible = False
    StatusBar1.Panels(2).Text = "Bezi zaznam"
    FrmMain.Toolbar1.Buttons(5).Enabled = False
    FrmMain.M_Start.Enabled = False
    FrmMain.cmdStart.Enabled = False
    FrmMain.Toolbar1.Buttons(6).Enabled = True
    FrmMain.M_Stop.Enabled = True
    FrmMain.cmdStop.Enabled = True
    CountDat = 0
End Sub

'==============================================================
'Funcia na povolenia tlacidiel pri stope zaznamu
'==============================================================
Sub FStop()
    
    StatusBar1.Panels(2).Text = "Stop"
    FrmMain.Toolbar1.Buttons(5).Enabled = True
    FrmMain.M_Start.Enabled = True
    FrmMain.cmdStart.Enabled = True
    FrmMain.Toolbar1.Buttons(6).Enabled = False
    FrmMain.M_Stop.Enabled = False
    FrmMain.cmdStop.Enabled = False
    CountDat = 0
End Sub

'==============================================================
'Funcia pri stlaceni Tlacidla ESC
'==============================================================
'Private Sub Form_KeyPress(KeyAscii As Integer)
'If KeyAscii = vbKeyEscape Then
'    If frm1.Visible = True Then
'        FrmMain.Toolbar1.Buttons(5).Enabled
'    Else
'        Unload Me
'    End If
'End If
'End Sub

Sub FClose()

    FrmMain.Picture2.Visible = False
    FrmMain.Caption = App.Title
    Close #intFile
End Sub


Function Odblokuj()

    FrmMain.aa.Enabled = False
    FrmMain.aa.Interval = 1000
    
    FrmAbout1.Register1.Visible = False
    
    

End Function
 
Function Blokuj()
    
    aa.Enabled = True
    aa.Interval = 1000
    
    FrmAbout1.LabelRegister.Caption = "Neregistrovana trial verzia "
    FrmAbout1.Register1.Visible = True
    Call SaveSetting(App.ProductName, "Application", "CB", "")
    Call SaveSetting(App.ProductName, "Reg", "RegName", "")
    
    'MsgBox ("Zablokovane")
End Function
