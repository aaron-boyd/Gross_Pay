VERSION 5.00
Begin VB.Form GrossPay1 
   BackColor       =   &H0080FF80&
   Caption         =   "Gross Pay"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdClear 
      BackColor       =   &H0080FF80&
      Caption         =   "Clear"
      Height          =   435
      Left            =   60
      TabIndex        =   7
      Top             =   1980
      Width           =   795
   End
   Begin VB.CommandButton cmdQuit 
      BackColor       =   &H0080FF80&
      Caption         =   "Quit"
      Height          =   375
      Left            =   60
      TabIndex        =   8
      Top             =   2520
      Width           =   795
   End
   Begin VB.CommandButton Find 
      BackColor       =   &H0080FF80&
      Caption         =   "Find"
      Height          =   255
      Left            =   1860
      TabIndex        =   2
      Top             =   1680
      Width           =   855
   End
   Begin VB.TextBox txtwage 
      Height          =   375
      Left            =   2040
      TabIndex        =   1
      Top             =   1080
      Width           =   1155
   End
   Begin VB.TextBox txthours 
      Height          =   375
      Left            =   2040
      TabIndex        =   0
      Top             =   480
      Width           =   1155
   End
   Begin VB.Label lblgrosspay 
      BorderStyle     =   1  'Fixed Single
      Height          =   315
      Left            =   2400
      TabIndex        =   6
      Top             =   2160
      Width           =   975
   End
   Begin VB.Label Label3 
      BackColor       =   &H0080FF80&
      Caption         =   "Gross Pay:"
      Height          =   315
      Left            =   1380
      TabIndex        =   5
      Top             =   2220
      Width           =   795
   End
   Begin VB.Label Label2 
      BackColor       =   &H0080FF80&
      Caption         =   "Wage:"
      Height          =   315
      Left            =   1260
      TabIndex        =   4
      Top             =   1140
      Width           =   675
   End
   Begin VB.Label Label1 
      BackColor       =   &H0080FF80&
      Caption         =   "Hours:"
      Height          =   255
      Left            =   1260
      TabIndex        =   3
      Top             =   480
      Width           =   615
   End
End
Attribute VB_Name = "GrossPay1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdClear_Click()
txthours = ""
txtwage = ""
lblgrosspay = ""
txthours.SetFocus
End Sub

Private Sub cmdQuit_Click()
End
End Sub

Private Sub Find_Click()
Dim wage As Single, hours As Single, GrossPay As Single
hours = Val(txthours.Text)
wage = Val(txtwage.Text)
GrossPay = (wage * hours) * 0.82
lblgrosspay.Caption = Format$(GrossPay, "currency")
cmdClear.SetFocus
End Sub

