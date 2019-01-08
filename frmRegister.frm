VERSION 5.00
Begin VB.Form frmRegister1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Registracia Aplikacie"
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   ClipControls    =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox TextRegName 
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   2040
      Width           =   4455
   End
   Begin VB.TextBox TextRegister 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   2520
      TabIndex        =   1
      Text            =   "Registration"
      ToolTipText     =   "Request Code For Registration"
      Top             =   1320
      Width           =   1935
   End
   Begin VB.TextBox TextRequest 
      Alignment       =   2  'Center
      BackColor       =   &H80000004&
      CausesValidation=   0   'False
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   3
      TabStop         =   0   'False
      Text            =   "Request Code"
      ToolTipText     =   "Request Code For Registration"
      Top             =   1320
      Width           =   1935
   End
   Begin VB.CommandButton ButRegistruj 
      Caption         =   "Registruj"
      Height          =   375
      Left            =   600
      TabIndex        =   2
      Top             =   2640
      Width           =   1455
   End
   Begin VB.CommandButton ButZavriet 
      Caption         =   "Zavri"
      Height          =   375
      Left            =   2520
      TabIndex        =   0
      Top             =   2640
      Width           =   1455
   End
   Begin VB.Label LabelPopis 
      Caption         =   "Text pre registraciu"
      Height          =   495
      Left            =   240
      TabIndex        =   8
      Top             =   360
      Width           =   4215
   End
   Begin VB.Label labelRegName 
      Caption         =   "Nazov registrovanej spolocnosti"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   1800
      Width           =   3975
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Registration number"
      Height          =   255
      Left            =   2520
      TabIndex        =   6
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Request code"
      Height          =   255
      Left            =   240
      TabIndex        =   5
      Top             =   1080
      Width           =   1935
   End
End
Attribute VB_Name = "frmRegister1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Private Sub ButRegistruj_Click()
  Sleep 500
  CodeB = TextRegister.Text
  Sleep 500
  temp = VerifyCodeB(CodeB, True)
End Sub



Private Sub Form_Load()

  TextRequest.Text = Kripto.getCodeA(Hlavny.keytype)
  Debug.Print ""
  If FrmAbout1.Visible Then
    FrmAbout1.Enabled = False
  End If
  FrmMain.Enabled = False
  
End Sub
'==============================================================
'Funkcia na ukoncenie formulara
'==============================================================
Private Sub Form_Unload(Cancel As Integer)
  If FrmAbout1.Visible Then
    FrmAbout1.Enabled = True
    FrmAbout1.Show
  Else
    FrmMain.Enabled = True
    FrmMain.Show
    Unload FrmAbout1
  End If
  Unload frmRegister1
End Sub

Private Sub ButZavriet_Click()
  If FrmAbout1.Visible Then
    FrmAbout1.Enabled = True
    FrmAbout1.Show
    
  Else
    FrmMain.Enabled = True
    FrmMain.Show
    Unload FrmAbout1
  End If
  Unload frmRegister1
End Sub
