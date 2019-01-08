VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmOptions 
   Caption         =   "Nastavenie programu"
   ClientHeight    =   5460
   ClientLeft      =   2580
   ClientTop       =   1515
   ClientWidth     =   5445
   ClipControls    =   0   'False
   Icon            =   "frmOptions.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   5460
   ScaleWidth      =   5445
   Begin TabDlg.SSTab SSTab1 
      Height          =   4395
      Left            =   360
      TabIndex        =   3
      Top             =   360
      Width           =   4440
      _ExtentX        =   7832
      _ExtentY        =   7752
      _Version        =   393216
      Style           =   1
      Tabs            =   10
      Tab             =   7
      TabsPerRow      =   5
      TabHeight       =   494
      TabMaxWidth     =   882
      WordWrap        =   0   'False
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "Snimac1"
      TabPicture(0)   =   "frmOptions.frx":000C
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "LabelCheck"
      Tab(0).Control(1)=   "Label1(0)"
      Tab(0).Control(2)=   "Frame1(0)"
      Tab(0).Control(3)=   "Frame2(0)"
      Tab(0).Control(4)=   "Check1"
      Tab(0).Control(5)=   "TOName(0)"
      Tab(0).Control(6)=   "LinCollor(0)"
      Tab(0).Control(7)=   "CD1"
      Tab(0).ControlCount=   8
      TabCaption(1)   =   "Snimac2"
      TabPicture(1)   =   "frmOptions.frx":0028
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Label1(1)"
      Tab(1).Control(1)=   "Frame1(1)"
      Tab(1).Control(2)=   "Frame2(1)"
      Tab(1).Control(3)=   "TOName(1)"
      Tab(1).Control(4)=   "LinCollor(1)"
      Tab(1).ControlCount=   5
      TabCaption(2)   =   "Snimac 3"
      TabPicture(2)   =   "frmOptions.frx":0044
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Label1(2)"
      Tab(2).Control(1)=   "Frame1(2)"
      Tab(2).Control(2)=   "Frame2(2)"
      Tab(2).Control(3)=   "TOName(2)"
      Tab(2).Control(4)=   "LinCollor(2)"
      Tab(2).ControlCount=   5
      TabCaption(3)   =   "Snimac 4"
      TabPicture(3)   =   "frmOptions.frx":0060
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Label1(3)"
      Tab(3).Control(1)=   "Frame1(3)"
      Tab(3).Control(2)=   "Frame2(3)"
      Tab(3).Control(3)=   "TOName(3)"
      Tab(3).Control(4)=   "LinCollor(3)"
      Tab(3).ControlCount=   5
      TabCaption(4)   =   "Snimac 5"
      TabPicture(4)   =   "frmOptions.frx":007C
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "Label1(4)"
      Tab(4).Control(1)=   "Frame1(4)"
      Tab(4).Control(2)=   "Frame2(4)"
      Tab(4).Control(3)=   "TOName(4)"
      Tab(4).Control(4)=   "LinCollor(4)"
      Tab(4).ControlCount=   5
      TabCaption(5)   =   "Snimac 6"
      TabPicture(5)   =   "frmOptions.frx":0098
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "Label1(5)"
      Tab(5).Control(1)=   "Frame1(5)"
      Tab(5).Control(2)=   "Frame2(5)"
      Tab(5).Control(3)=   "TOName(5)"
      Tab(5).Control(4)=   "LinCollor(5)"
      Tab(5).ControlCount=   5
      TabCaption(6)   =   "Snimac 7"
      TabPicture(6)   =   "frmOptions.frx":00B4
      Tab(6).ControlEnabled=   0   'False
      Tab(6).Control(0)=   "Label1(6)"
      Tab(6).Control(1)=   "Frame1(6)"
      Tab(6).Control(2)=   "Frame2(6)"
      Tab(6).Control(3)=   "TOName(6)"
      Tab(6).Control(4)=   "LinCollor(6)"
      Tab(6).ControlCount=   5
      TabCaption(7)   =   "Snimac 8"
      TabPicture(7)   =   "frmOptions.frx":00D0
      Tab(7).ControlEnabled=   -1  'True
      Tab(7).Control(0)=   "Label1(7)"
      Tab(7).Control(0).Enabled=   0   'False
      Tab(7).Control(1)=   "Frame1(7)"
      Tab(7).Control(1).Enabled=   0   'False
      Tab(7).Control(2)=   "Frame2(7)"
      Tab(7).Control(2).Enabled=   0   'False
      Tab(7).Control(3)=   "TOName(7)"
      Tab(7).Control(3).Enabled=   0   'False
      Tab(7).Control(4)=   "LinCollor(7)"
      Tab(7).Control(4).Enabled=   0   'False
      Tab(7).ControlCount=   5
      TabCaption(8)   =   "ADS"
      TabPicture(8)   =   "frmOptions.frx":00EC
      Tab(8).ControlEnabled=   0   'False
      Tab(8).Control(0)=   "FraADS"
      Tab(8).ControlCount=   1
      TabCaption(9)   =   "Ostatne"
      TabPicture(9)   =   "frmOptions.frx":0108
      Tab(9).ControlEnabled=   0   'False
      Tab(9).Control(0)=   "Label2"
      Tab(9).Control(1)=   "PocZaznamov"
      Tab(9).ControlCount=   2
      Begin VB.TextBox PocZaznamov 
         Height          =   285
         Left            =   -72720
         TabIndex        =   112
         Text            =   "Text1"
         Top             =   840
         Width           =   1815
      End
      Begin MSComDlg.CommonDialog CD1 
         Left            =   -74880
         Top             =   3840
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.PictureBox LinCollor 
         BackColor       =   &H80000001&
         BorderStyle     =   0  'None
         Height          =   375
         Index           =   1
         Left            =   -71400
         ScaleHeight     =   375
         ScaleWidth      =   375
         TabIndex        =   111
         Top             =   840
         Width           =   375
      End
      Begin VB.PictureBox LinCollor 
         BackColor       =   &H80000001&
         BorderStyle     =   0  'None
         Height          =   375
         Index           =   6
         Left            =   -71400
         ScaleHeight     =   375
         ScaleWidth      =   375
         TabIndex        =   110
         Top             =   840
         Width           =   375
      End
      Begin VB.PictureBox LinCollor 
         BackColor       =   &H80000001&
         BorderStyle     =   0  'None
         Height          =   375
         Index           =   7
         Left            =   3600
         ScaleHeight     =   375
         ScaleWidth      =   375
         TabIndex        =   109
         Top             =   840
         Width           =   375
      End
      Begin VB.PictureBox LinCollor 
         BackColor       =   &H80000001&
         BorderStyle     =   0  'None
         Height          =   375
         Index           =   5
         Left            =   -71400
         ScaleHeight     =   375
         ScaleWidth      =   375
         TabIndex        =   108
         Top             =   840
         Width           =   375
      End
      Begin VB.PictureBox LinCollor 
         BackColor       =   &H80000001&
         BorderStyle     =   0  'None
         Height          =   375
         Index           =   4
         Left            =   -71400
         ScaleHeight     =   375
         ScaleWidth      =   375
         TabIndex        =   107
         Top             =   840
         Width           =   375
      End
      Begin VB.PictureBox LinCollor 
         BackColor       =   &H80000001&
         BorderStyle     =   0  'None
         Height          =   375
         Index           =   3
         Left            =   -71400
         ScaleHeight     =   375
         ScaleWidth      =   375
         TabIndex        =   106
         Top             =   840
         Width           =   375
      End
      Begin VB.PictureBox LinCollor 
         BackColor       =   &H80000001&
         BorderStyle     =   0  'None
         Height          =   375
         Index           =   2
         Left            =   -71400
         ScaleHeight     =   375
         ScaleWidth      =   375
         TabIndex        =   105
         Top             =   840
         Width           =   375
      End
      Begin VB.PictureBox LinCollor 
         BackColor       =   &H80000001&
         BorderStyle     =   0  'None
         Height          =   375
         Index           =   0
         Left            =   -71400
         ScaleHeight     =   375
         ScaleWidth      =   375
         TabIndex        =   104
         Top             =   840
         Width           =   375
      End
      Begin VB.TextBox TOName 
         Height          =   285
         Index           =   7
         Left            =   1080
         TabIndex        =   103
         Text            =   "Text1"
         Top             =   840
         Width           =   2295
      End
      Begin VB.TextBox TOName 
         Height          =   285
         Index           =   6
         Left            =   -73920
         TabIndex        =   101
         Text            =   "Text1"
         Top             =   840
         Width           =   2415
      End
      Begin VB.TextBox TOName 
         Height          =   285
         Index           =   5
         Left            =   -73920
         TabIndex        =   99
         Text            =   "Text1"
         Top             =   840
         Width           =   2415
      End
      Begin VB.TextBox TOName 
         Height          =   285
         Index           =   4
         Left            =   -73920
         TabIndex        =   97
         Text            =   "Text1"
         Top             =   840
         Width           =   2415
      End
      Begin VB.TextBox TOName 
         Height          =   285
         Index           =   3
         Left            =   -73920
         TabIndex        =   95
         Text            =   "Text1"
         Top             =   840
         Width           =   2415
      End
      Begin VB.TextBox TOName 
         Height          =   285
         Index           =   2
         Left            =   -73920
         TabIndex        =   93
         Text            =   "Text1"
         Top             =   840
         Width           =   2415
      End
      Begin VB.TextBox TOName 
         Height          =   285
         Index           =   1
         Left            =   -73920
         TabIndex        =   91
         Text            =   "Text1"
         Top             =   840
         Width           =   2415
      End
      Begin VB.TextBox TOName 
         Height          =   285
         Index           =   0
         Left            =   -73920
         TabIndex        =   89
         Text            =   "Text1"
         Top             =   840
         Width           =   2415
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check1"
         Height          =   255
         Left            =   -71400
         TabIndex        =   86
         Top             =   3960
         Width           =   255
      End
      Begin VB.Frame Frame2 
         Caption         =   "Limit Snimaca"
         Height          =   1575
         Index           =   7
         Left            =   240
         TabIndex        =   55
         Top             =   2160
         Width           =   3735
         Begin VB.TextBox Sens_Min 
            Height          =   285
            Index           =   7
            Left            =   1080
            TabIndex        =   57
            Text            =   "0"
            Top             =   360
            Width           =   1455
         End
         Begin VB.TextBox Sens_Max 
            Height          =   285
            Index           =   7
            Left            =   1080
            TabIndex        =   56
            Text            =   "4000"
            Top             =   960
            Width           =   1455
         End
         Begin VB.Label LabelMin 
            Caption         =   "Minimum"
            Height          =   255
            Index           =   7
            Left            =   360
            TabIndex        =   59
            Top             =   360
            Width           =   735
         End
         Begin VB.Label LabelMax 
            Caption         =   "Maximum"
            Height          =   255
            Index           =   7
            Left            =   360
            TabIndex        =   58
            Top             =   960
            Width           =   735
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Limit Snimaca"
         Height          =   1575
         Index           =   6
         Left            =   -74760
         TabIndex        =   50
         Top             =   2160
         Width           =   3735
         Begin VB.TextBox Sens_Min 
            Height          =   285
            Index           =   6
            Left            =   1080
            TabIndex        =   52
            Text            =   "0"
            Top             =   360
            Width           =   1455
         End
         Begin VB.TextBox Sens_Max 
            Height          =   285
            Index           =   6
            Left            =   1080
            TabIndex        =   51
            Text            =   "4000"
            Top             =   960
            Width           =   1455
         End
         Begin VB.Label LabelMin 
            Caption         =   "Minimum"
            Height          =   255
            Index           =   6
            Left            =   360
            TabIndex        =   54
            Top             =   360
            Width           =   735
         End
         Begin VB.Label LabelMax 
            Caption         =   "Maximum"
            Height          =   255
            Index           =   6
            Left            =   360
            TabIndex        =   53
            Top             =   960
            Width           =   735
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Limit Snimaca"
         Height          =   1575
         Index           =   5
         Left            =   -74760
         TabIndex        =   45
         Top             =   2160
         Width           =   3735
         Begin VB.TextBox Sens_Min 
            Height          =   285
            Index           =   5
            Left            =   1080
            TabIndex        =   47
            Text            =   "0"
            Top             =   360
            Width           =   1455
         End
         Begin VB.TextBox Sens_Max 
            Height          =   285
            Index           =   5
            Left            =   1080
            TabIndex        =   46
            Text            =   "4000"
            Top             =   960
            Width           =   1455
         End
         Begin VB.Label LabelMin 
            Caption         =   "Minimum"
            Height          =   255
            Index           =   5
            Left            =   360
            TabIndex        =   49
            Top             =   360
            Width           =   735
         End
         Begin VB.Label LabelMax 
            Caption         =   "Maximum"
            Height          =   255
            Index           =   5
            Left            =   360
            TabIndex        =   48
            Top             =   960
            Width           =   735
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Limit Snimaca"
         Height          =   1575
         Index           =   4
         Left            =   -74760
         TabIndex        =   40
         Top             =   2160
         Width           =   3735
         Begin VB.TextBox Sens_Min 
            Height          =   285
            Index           =   4
            Left            =   1080
            TabIndex        =   42
            Text            =   "0"
            Top             =   360
            Width           =   1455
         End
         Begin VB.TextBox Sens_Max 
            Height          =   285
            Index           =   4
            Left            =   1080
            TabIndex        =   41
            Text            =   "4000"
            Top             =   960
            Width           =   1455
         End
         Begin VB.Label LabelMin 
            Caption         =   "Minimum"
            Height          =   255
            Index           =   4
            Left            =   360
            TabIndex        =   44
            Top             =   360
            Width           =   735
         End
         Begin VB.Label LabelMax 
            Caption         =   "Maximum"
            Height          =   255
            Index           =   4
            Left            =   360
            TabIndex        =   43
            Top             =   960
            Width           =   735
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Limit Snimaca"
         Height          =   1575
         Index           =   3
         Left            =   -74760
         TabIndex        =   35
         Top             =   2160
         Width           =   3735
         Begin VB.TextBox Sens_Min 
            Height          =   285
            Index           =   3
            Left            =   1080
            TabIndex        =   37
            Text            =   "0"
            Top             =   360
            Width           =   1455
         End
         Begin VB.TextBox Sens_Max 
            Height          =   285
            Index           =   3
            Left            =   1080
            TabIndex        =   36
            Text            =   "4000"
            Top             =   960
            Width           =   1455
         End
         Begin VB.Label LabelMin 
            Caption         =   "Minimum"
            Height          =   255
            Index           =   3
            Left            =   360
            TabIndex        =   39
            Top             =   360
            Width           =   735
         End
         Begin VB.Label LabelMax 
            Caption         =   "Maximum"
            Height          =   255
            Index           =   3
            Left            =   360
            TabIndex        =   38
            Top             =   960
            Width           =   735
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Limit Snimaca"
         Height          =   1575
         Index           =   2
         Left            =   -74760
         TabIndex        =   30
         Top             =   2160
         Width           =   3735
         Begin VB.TextBox Sens_Min 
            Height          =   285
            Index           =   2
            Left            =   1080
            TabIndex        =   32
            Text            =   "0"
            Top             =   360
            Width           =   1455
         End
         Begin VB.TextBox Sens_Max 
            Height          =   285
            Index           =   2
            Left            =   1080
            TabIndex        =   31
            Text            =   "4000"
            Top             =   960
            Width           =   1455
         End
         Begin VB.Label LabelMin 
            Caption         =   "Minimum"
            Height          =   255
            Index           =   2
            Left            =   360
            TabIndex        =   34
            Top             =   360
            Width           =   735
         End
         Begin VB.Label LabelMax 
            Caption         =   "Maximum"
            Height          =   255
            Index           =   2
            Left            =   360
            TabIndex        =   33
            Top             =   960
            Width           =   735
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Limit Snimaca"
         Height          =   1575
         Index           =   1
         Left            =   -74760
         TabIndex        =   25
         Top             =   2160
         Width           =   3735
         Begin VB.TextBox Sens_Min 
            Height          =   285
            Index           =   1
            Left            =   1080
            TabIndex        =   27
            Text            =   "0"
            Top             =   360
            Width           =   1455
         End
         Begin VB.TextBox Sens_Max 
            Height          =   285
            Index           =   1
            Left            =   1080
            TabIndex        =   26
            Text            =   "4000"
            Top             =   960
            Width           =   1455
         End
         Begin VB.Label LabelMin 
            Caption         =   "Minimum"
            Height          =   255
            Index           =   1
            Left            =   360
            TabIndex        =   29
            Top             =   360
            Width           =   735
         End
         Begin VB.Label LabelMax 
            Caption         =   "Maximum"
            Height          =   255
            Index           =   1
            Left            =   360
            TabIndex        =   28
            Top             =   960
            Width           =   735
         End
      End
      Begin VB.Frame FraADS 
         Caption         =   "Nastavenie ADS"
         Height          =   1815
         Left            =   -74640
         TabIndex        =   20
         Top             =   840
         Width           =   3255
         Begin VB.TextBox TXTADS 
            Alignment       =   2  'Center
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "000-000-000-000-000-000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1051
               SubFormatType   =   0
            EndProperty
            Height          =   285
            Index           =   5
            Left            =   2520
            TabIndex        =   64
            Text            =   "1"
            Top             =   720
            Width           =   375
         End
         Begin VB.TextBox TXTADS 
            Alignment       =   2  'Center
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "000-000-000-000-000-000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1051
               SubFormatType   =   0
            EndProperty
            Height          =   285
            Index           =   4
            Left            =   2040
            TabIndex        =   63
            Text            =   "1"
            Top             =   720
            Width           =   375
         End
         Begin VB.TextBox TXTADS 
            Alignment       =   2  'Center
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "000-000-000-000-000-000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1051
               SubFormatType   =   0
            EndProperty
            Height          =   285
            Index           =   3
            Left            =   1560
            TabIndex        =   62
            Text            =   "81"
            Top             =   720
            Width           =   375
         End
         Begin VB.TextBox TXTADS 
            Alignment       =   2  'Center
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "000-000-000-000-000-000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1051
               SubFormatType   =   0
            EndProperty
            Height          =   285
            Index           =   2
            Left            =   1080
            TabIndex        =   61
            Text            =   "0"
            Top             =   720
            Width           =   375
         End
         Begin VB.TextBox TXTADS 
            Alignment       =   2  'Center
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "000-000-000-000-000-000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1051
               SubFormatType   =   0
            EndProperty
            Height          =   285
            Index           =   1
            Left            =   600
            TabIndex        =   60
            Text            =   "168"
            Top             =   720
            Width           =   375
         End
         Begin VB.TextBox TXTPORT 
            Alignment       =   2  'Center
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "000.000.000.000.000.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1051
               SubFormatType   =   0
            EndProperty
            Height          =   285
            Left            =   120
            TabIndex        =   24
            Text            =   "811"
            Top             =   1320
            Width           =   615
         End
         Begin VB.TextBox TXTADS 
            Alignment       =   2  'Center
            Height          =   285
            Index           =   0
            Left            =   120
            TabIndex        =   21
            Text            =   "192"
            Top             =   720
            Width           =   375
         End
         Begin VB.Label LabSetPort 
            Caption         =   " Port ADS"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   23
            Top             =   1080
            Width           =   855
         End
         Begin VB.Label LabSetADS 
            Caption         =   " Adresa ADS"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   22
            Top             =   480
            Width           =   1935
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Limit Snimaca"
         Height          =   1575
         Index           =   0
         Left            =   -74760
         TabIndex        =   15
         Top             =   2160
         Width           =   3735
         Begin VB.TextBox Sens_Max 
            Height          =   285
            Index           =   0
            Left            =   1080
            TabIndex        =   17
            Text            =   "4000"
            Top             =   960
            Width           =   1455
         End
         Begin VB.TextBox Sens_Min 
            Height          =   285
            Index           =   0
            Left            =   1080
            TabIndex        =   16
            Text            =   "0"
            Top             =   360
            Width           =   1455
         End
         Begin VB.Label LabelMax 
            Caption         =   "Maximum"
            Height          =   255
            Index           =   0
            Left            =   360
            TabIndex        =   19
            Top             =   960
            Width           =   735
         End
         Begin VB.Label LabelMin 
            Caption         =   "Minimum"
            Height          =   255
            Index           =   0
            Left            =   360
            TabIndex        =   18
            Top             =   360
            Width           =   735
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Typ snimaca"
         Height          =   855
         Index           =   1
         Left            =   -74760
         TabIndex        =   14
         Top             =   1200
         Width           =   3735
         Begin VB.OptionButton Option1 
            Caption         =   "4-20 mA"
            Height          =   255
            Index           =   1
            Left            =   240
            TabIndex        =   67
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option2 
            Caption         =   "0-20 mA"
            Height          =   255
            Index           =   1
            Left            =   1440
            TabIndex        =   66
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option3 
            Caption         =   "0-10 V"
            Height          =   255
            Index           =   1
            Left            =   2520
            TabIndex        =   65
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Typ snimaca"
         Height          =   855
         Index           =   5
         Left            =   -74760
         TabIndex        =   13
         Top             =   1200
         Width           =   3735
         Begin VB.OptionButton Option3 
            Caption         =   "0-10 V"
            Height          =   255
            Index           =   5
            Left            =   2520
            TabIndex        =   82
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option2 
            Caption         =   "0-20 mA"
            Height          =   255
            Index           =   5
            Left            =   1440
            TabIndex        =   81
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "4-20 mA"
            Height          =   255
            Index           =   5
            Left            =   240
            TabIndex        =   80
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Typ snimaca"
         Height          =   855
         Index           =   7
         Left            =   240
         TabIndex        =   12
         Top             =   1200
         Width           =   3735
         Begin VB.OptionButton Option1 
            Caption         =   "4-20 mA"
            Height          =   255
            Index           =   7
            Left            =   240
            TabIndex        =   70
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option2 
            Caption         =   "0-20 mA"
            Height          =   255
            Index           =   7
            Left            =   1440
            TabIndex        =   69
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option3 
            Caption         =   "0-10 V"
            Height          =   255
            Index           =   7
            Left            =   2520
            TabIndex        =   68
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Typ snimaca"
         Height          =   855
         Index           =   6
         Left            =   -74760
         TabIndex        =   11
         Top             =   1200
         Width           =   3735
         Begin VB.OptionButton Option3 
            Caption         =   "0-10 V"
            Height          =   255
            Index           =   6
            Left            =   2520
            TabIndex        =   85
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option2 
            Caption         =   "0-20 mA"
            Height          =   255
            Index           =   6
            Left            =   1440
            TabIndex        =   84
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "4-20 mA"
            Height          =   255
            Index           =   6
            Left            =   240
            TabIndex        =   83
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Typ snimaca"
         Height          =   855
         Index           =   4
         Left            =   -74760
         TabIndex        =   10
         Top             =   1200
         Width           =   3735
         Begin VB.OptionButton Option3 
            Caption         =   "0-10 V"
            Height          =   255
            Index           =   4
            Left            =   2520
            TabIndex        =   79
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option2 
            Caption         =   "0-20 mA"
            Height          =   255
            Index           =   4
            Left            =   1440
            TabIndex        =   78
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "4-20 mA"
            Height          =   255
            Index           =   4
            Left            =   240
            TabIndex        =   77
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Typ snimaca"
         Height          =   855
         Index           =   3
         Left            =   -74760
         TabIndex        =   9
         Top             =   1200
         Width           =   3735
         Begin VB.OptionButton Option1 
            Caption         =   "4-20 mA"
            Height          =   255
            Index           =   3
            Left            =   240
            TabIndex        =   76
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option2 
            Caption         =   "0-20 mA"
            Height          =   255
            Index           =   3
            Left            =   1440
            TabIndex        =   75
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option3 
            Caption         =   "0-10 V"
            Height          =   255
            Index           =   3
            Left            =   2520
            TabIndex        =   74
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Typ snimaca"
         Height          =   855
         Index           =   2
         Left            =   -74760
         TabIndex        =   8
         Top             =   1200
         Width           =   3735
         Begin VB.OptionButton Option1 
            Caption         =   "4-20 mA"
            Height          =   255
            Index           =   2
            Left            =   240
            TabIndex        =   73
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option2 
            Caption         =   "0-20 mA"
            Height          =   255
            Index           =   2
            Left            =   1440
            TabIndex        =   72
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option3 
            Caption         =   "0-10 V"
            Height          =   255
            Index           =   2
            Left            =   2520
            TabIndex        =   71
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Typ snimaca"
         Height          =   855
         Index           =   0
         Left            =   -74760
         TabIndex        =   4
         Top             =   1200
         Width           =   3735
         Begin VB.OptionButton Option1 
            Caption         =   "4-20 mA"
            Height          =   255
            Index           =   0
            Left            =   240
            TabIndex        =   7
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option2 
            Caption         =   "0-20 mA"
            Height          =   255
            Index           =   0
            Left            =   1440
            TabIndex        =   6
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option3 
            Caption         =   "0-10 V"
            Height          =   255
            Index           =   0
            Left            =   2520
            TabIndex        =   5
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Label Label2 
         Caption         =   "Poèet zaznamov na subor"
         Height          =   375
         Left            =   -74760
         TabIndex        =   113
         Top             =   840
         Width           =   2055
      End
      Begin VB.Label Label1 
         Caption         =   "Názov"
         Height          =   255
         Index           =   7
         Left            =   240
         TabIndex        =   102
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Názov"
         Height          =   255
         Index           =   6
         Left            =   -74760
         TabIndex        =   100
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Názov"
         Height          =   255
         Index           =   5
         Left            =   -74760
         TabIndex        =   98
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Názov"
         Height          =   255
         Index           =   4
         Left            =   -74760
         TabIndex        =   96
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Názov"
         Height          =   255
         Index           =   3
         Left            =   -74760
         TabIndex        =   94
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Názov"
         Height          =   255
         Index           =   2
         Left            =   -74760
         TabIndex        =   92
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Názov"
         Height          =   255
         Index           =   1
         Left            =   -74760
         TabIndex        =   90
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Názov"
         Height          =   255
         Index           =   0
         Left            =   -74760
         TabIndex        =   88
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label LabelCheck 
         Caption         =   "Zapisuj"
         Height          =   255
         Left            =   -72000
         TabIndex        =   87
         Top             =   3960
         Width           =   615
      End
   End
   Begin VB.CommandButton cmdApply 
      Caption         =   "Apply"
      Height          =   375
      Left            =   3960
      TabIndex        =   2
      Top             =   4935
      Width           =   1095
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2760
      TabIndex        =   1
      Top             =   4935
      Width           =   1095
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Height          =   375
      Left            =   1530
      TabIndex        =   0
      Top             =   4935
      Width           =   1095
   End
End
Attribute VB_Name = "frmOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'Funkcia na ukoncenie Aplikacie
Private Sub Form_Unload(Cancel As Integer)
    FrmMain.Enabled = True
    
End Sub

Private Sub cmdApply_Click()
    SafeIni
    'Unload FrmMain
    'Set FrmMain = Nothing
    'Load FrmMain
    'FrmMain.Show
    FrmMain.Enabled = True
    'frmOptions.Visible = False
    MsgBox "Nastavenia boli ulozene"
    Unload Me
End Sub

Private Sub cmdCancel_Click()
    FrmMain.Enabled = True
    frmOptions.Visible = False
End Sub

Private Sub cmdOK_Click()
    SafeIni
    MsgBox "Nastavenia boli ulozene "
    FrmMain.Enabled = True
    Unload Me
End Sub


Private Sub Form_Load()
    'center the form
    FrmMain.Enabled = False
    Me.Move (Screen.Width - Me.Width) / 2, (Screen.Height - Me.Height) / 2
    
    Dim i As Byte
    For i = 0 To UBound(Snimac) - 1
        TOName(i) = Snimac(i).Name
        LinCollor(i).BackColor = Snimac(i).LiColor
        Sens_Max(i) = Snimac(i).Max
        Sens_Min(i) = Snimac(i).Min
        If Snimac(i).Type = 0 Then
            Option1(i).Value = True
            Option2(i).Value = False
            Option3(i).Value = False
        End If
        If Snimac(i).Type = 1 Then
            Option1(i).Value = False
            Option2(i).Value = True
            Option3(i).Value = False
        End If
        If Snimac(i).Type = 2 Then
            Option1(i).Value = False
            Option2(i).Value = False
            Option3(i).Value = True
        End If
    Next i
    Dim a As Byte
    For a = 0 To 5
        TXTADS(a).Text = Net.n(a)
    Next a
    TXTPORT = Net.Port
    PocZaznamov.Text = GV.SetSize
End Sub

Public Sub SafeIni()
    Dim i As Byte
    'Zapisanie hodnot do premmennych
    For i = 0 To UBound(Snimac) - 1
        Snimac(i).Name = TOName(i).Text
        Snimac(i).Max = Sens_Max(i).Text
        Snimac(i).Min = Sens_Min(i).Text
        If Option1(i).Value Then
            Snimac(i).Type = 0
        End If
        If Option2(i).Value Then
            Snimac(i).Type = 1
        End If
        If Option3(i).Value Then
            Snimac(i).Type = 2
        End If
    Next i
    
    For i = 0 To 5              ' ciklus pre zistenie Adresy ADS a nasledne zapisanie do INI
        Net.n(i) = TXTADS(i).Text
        PutINISetting "ADS", "N" & i, Net.n(i), GV.IniFile
    Next i
    Net.Port = TXTPORT.Text     ' Zistenie nastaenia Ads Portu
    PutINISetting "ADS", "Port", Net.Port, GV.IniFile  'zapis nastaenie ADS portu
    GV.SetSize = PocZaznamov.Text               ' zistenie noveho nastavenia poctu zaznamov na subor
    PutINISetting "Settings", "FileSize", PocZaznamov.Text, GV.IniFile 'zapisanie poctu zaznamov na subor
   
    'Zapisanie nastavenych hodnot snimacov do ini suboru
    Dim a As Byte
    For a = 0 To UBound(Snimac) - 1
        PutINISetting "Snimac" & a, "Name", Snimac(a).Name, GV.IniFile
        PutINISetting "Snimac" & a, "Color", Snimac(a).LiColor, GV.IniFile
        PutINISetting "Snimac" & a, "Type", Snimac(a).Type, GV.IniFile
        PutINISetting "Snimac" & a, "Max", Snimac(a).Max, GV.IniFile
        PutINISetting "Snimac" & a, "Min", Snimac(a).Min, GV.IniFile
    Next a
    Dim c As Byte

End Sub

Private Sub LinCollor_Click(Index As Integer)
    Dim Tem As Integer
    Dim i As Byte
    Tem = SSTab1.Tab
    CD1.ShowColor
    LinCollor(Tem).BackColor = CD1.Color
    Snimac(Tem).LiColor = CD1.Color
    
End Sub

