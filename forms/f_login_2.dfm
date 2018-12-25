object FormLogin2: TFormLogin2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Comercio - Entrar'
  ClientHeight = 183
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btLogar: TSpeedButton
    Left = 8
    Top = 127
    Width = 209
    Height = 50
    Caption = 'Entrar'
    Glyph.Data = {
      9E000000424D9E000000000000003E0000002800000018000000180000000100
      01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFEF00C007E700C0060700CFE60300CFE7
      E700E3E3EF00F003FF00FC03FF00FFFFFF00FF0FFF00FE07FF00FC63FF00FCF3
      FF00FCF3FF00FC63FF00FE07FF00FF0FFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00}
    OnClick = btLogarClick
  end
  object btSair: TSpeedButton
    Left = 249
    Top = 127
    Width = 209
    Height = 50
    Caption = 'Sair'
    Glyph.Data = {
      9E000000424D9E000000000000003E0000002800000018000000180000000100
      01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
      FF00FFFFFF00F3F9E700F3F9E700F3F9E700FF39E700F819E700F991E700FF83
      E700F387E700F2C7E700F2462700F240E700F241E700F203E700F383E700F3FF
      E700F3F1E700F3F1E700F3F1E700F3FFE700F3FFE700F0000700F0000700FFFF
      FF00}
    OnClick = btSairClick
  end
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 450
    Height = 113
    TabOrder = 0
    object etLogin: TLabeledEdit
      Left = 16
      Top = 35
      Width = 409
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = 'Login:'
      TabOrder = 0
    end
    object etPass: TLabeledEdit
      Left = 16
      Top = 80
      Width = 409
      Height = 21
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = 'Senha:'
      PasswordChar = '*'
      TabOrder = 1
    end
  end
end
