object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Teste Rabbit Delphi'
  ClientHeight = 307
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 10
    Width = 26
    Height = 13
    Caption = 'Host:'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 24
    Height = 13
    Caption = 'Port:'
  end
  object Label3: TLabel
    Left = 8
    Top = 70
    Width = 52
    Height = 13
    Caption = 'Username:'
  end
  object Label4: TLabel
    Left = 8
    Top = 100
    Width = 50
    Height = 13
    Caption = 'Password:'
  end
  object Label5: TLabel
    Left = 8
    Top = 130
    Width = 67
    Height = 13
    Caption = 'ApplicationID:'
  end
  object Button1: TButton
    Left = 133
    Top = 154
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 0
  end
  object txtHost: TEdit
    Left = 87
    Top = 7
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '127.0.0.1'
  end
  object txtPort: TEdit
    Left = 87
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '5672'
  end
  object txtUsername: TEdit
    Left = 87
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'guest'
  end
  object txtPassword: TEdit
    Left = 87
    Top = 97
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'guest'
  end
  object txtApplicationID: TEdit
    Left = 87
    Top = 127
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'TestRabbitDelphi'
  end
end
