object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Teste Rabbit Delphi'
  ClientHeight = 538
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 35
    Width = 26
    Height = 13
    Caption = 'Host:'
  end
  object Label2: TLabel
    Left = 580
    Top = 35
    Width = 24
    Height = 13
    Caption = 'Port:'
  end
  object Label3: TLabel
    Left = 8
    Top = 64
    Width = 52
    Height = 13
    Caption = 'Username:'
  end
  object Label4: TLabel
    Left = 246
    Top = 62
    Width = 50
    Height = 13
    Caption = 'Password:'
  end
  object Label5: TLabel
    Left = 666
    Top = 35
    Width = 67
    Height = 13
    Caption = 'ApplicationID:'
  end
  object lbStatus: TLabel
    Left = 741
    Top = 64
    Width = 3
    Height = 13
  end
  object Label6: TLabel
    Left = 72
    Top = 8
    Width = 43
    Height = 13
    Caption = 'Conex'#227'o'
  end
  object Splitter1: TSplitter
    Left = 0
    Top = 86
    Width = 880
    Height = 3
    Align = alNone
    Color = clMedGray
    ParentColor = False
  end
  object btnConDesc: TButton
    Left = 474
    Top = 57
    Width = 97
    Height = 25
    Caption = 'Connect'
    TabOrder = 0
    OnClick = btnConDescClick
  end
  object txtHost: TEdit
    Left = 65
    Top = 32
    Width = 506
    Height = 21
    TabOrder = 1
    Text = 'localhost'
  end
  object txtPort: TEdit
    Left = 610
    Top = 32
    Width = 47
    Height = 21
    TabOrder = 2
    Text = '5672'
  end
  object txtUsername: TEdit
    Left = 65
    Top = 59
    Width = 161
    Height = 21
    TabOrder = 3
    Text = 'guest'
  end
  object txtPassword: TEdit
    Left = 302
    Top = 59
    Width = 161
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
    Text = 'guest'
  end
  object txtApplicationID: TEdit
    Left = 741
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'TestRabbitDelphi'
  end
  object pnlQueue1: TPanel
    Left = 1
    Top = 92
    Width = 272
    Height = 445
    TabOrder = 6
    object Label7: TLabel
      Left = 10
      Top = 7
      Width = 36
      Height = 13
      Caption = 'Queue:'
    end
    object txtNameQueue1: TEdit
      Left = 49
      Top = 3
      Width = 152
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = 'Queue_1'
    end
    object mmQueue1: TMemo
      Left = 7
      Top = 30
      Width = 258
      Height = 381
      ReadOnly = True
      TabOrder = 1
    end
    object txtSend1: TEdit
      Left = 5
      Top = 418
      Width = 197
      Height = 21
      TabOrder = 2
    end
    object btnSendQueue1: TButton
      Left = 208
      Top = 417
      Width = 57
      Height = 25
      Caption = 'Send'
      TabOrder = 3
      OnClick = btnSendQueue1Click
    end
  end
  object Panel1: TPanel
    Left = 279
    Top = 93
    Width = 272
    Height = 445
    TabOrder = 7
    object Label8: TLabel
      Left = 10
      Top = 7
      Width = 36
      Height = 13
      Caption = 'Queue:'
    end
    object txtNameQueue2: TEdit
      Left = 52
      Top = 3
      Width = 152
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = 'Queue_2'
    end
    object mmQueue2: TMemo
      Left = 7
      Top = 30
      Width = 258
      Height = 381
      ReadOnly = True
      TabOrder = 1
    end
    object txtSend2: TEdit
      Left = 5
      Top = 418
      Width = 197
      Height = 21
      TabOrder = 2
    end
    object btnSendQueue2: TButton
      Left = 208
      Top = 417
      Width = 57
      Height = 25
      Caption = 'Send'
      TabOrder = 3
      OnClick = btnSendQueue2Click
    end
  end
  object tmrStatus: TTimer
    Enabled = False
    Interval = 300
    OnTimer = tmrStatusTimer
    Left = 816
    Top = 272
  end
end
