VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Net Hero (Example)"
   ClientHeight    =   1845
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3915
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1845
   ScaleWidth      =   3915
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Leave"
      Height          =   330
      Left            =   2850
      TabIndex        =   8
      Top             =   1440
      Width           =   1035
   End
   Begin VB.TextBox DUPassword 
      Height          =   285
      Left            =   1545
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   1035
      Width           =   2340
   End
   Begin VB.TextBox DUUsername 
      Height          =   285
      Left            =   1545
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   735
      Width           =   2340
   End
   Begin VB.TextBox NZUsername 
      Height          =   285
      Left            =   1545
      TabIndex        =   1
      Top             =   45
      Width           =   2340
   End
   Begin VB.TextBox NZPassword 
      Height          =   285
      Left            =   1545
      TabIndex        =   2
      Top             =   345
      Width           =   2340
   End
   Begin VB.Label Label4 
      Caption         =   "Dial-up Username :"
      Height          =   255
      Left            =   45
      TabIndex        =   7
      Top             =   765
      Width           =   1500
   End
   Begin VB.Label Label3 
      Caption         =   "Dial-up Password :"
      Height          =   255
      Left            =   45
      TabIndex        =   6
      Top             =   1095
      Width           =   1500
   End
   Begin VB.Label Label2 
      Caption         =   "NetZero Password :"
      Height          =   255
      Left            =   45
      TabIndex        =   3
      Top             =   405
      Width           =   1500
   End
   Begin VB.Label Label1 
      Caption         =   "NetZero Username :"
      Height          =   255
      Left            =   45
      TabIndex        =   0
      Top             =   75
      Width           =   1500
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Made by me (Arachnid) because my ISP sucks,
'and I wanted to use NetZero without the ZeroPort
'software.

'It's a simple encryption process and I hope
'that they change their protection to something
'server-side.

'This example works with the current NetZero version
'and I'm not sure if the version matters.
'If it does, just change the "2.2.2" to the current version.

Private Sub Command1_Click()
    Unload Me
    End
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Unload Me
    End
End Sub

Private Sub NZPassword_Change()
    If NZPassword.Text = "" Then DUPassword.Text = "": Exit Sub
    DUPassword = "0" & zEncrypt(NZPassword.Text) & "1"
End Sub

Private Sub NZUsername_Change()
    If NZUsername.Text = "" Then DUUsername = "": Exit Sub
    DUUsername.Text = "2.2.2:" & NZUsername.Text & "@netzero.net"
End Sub
