object FormFirstRun: TFormFirstRun
  Left = 0
  Top = 0
  Caption = 'Configura'#231#245'es Iniciais'
  ClientHeight = 330
  ClientWidth = 690
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
  object btGerarBanco: TSpeedButton
    Left = 8
    Top = 236
    Width = 672
    Height = 33
    Caption = 'Gerar Banco de Dados'
    Enabled = False
    Glyph.Data = {
      9E000000424D9E000000000000003E0000002800000018000000180000000100
      01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF18FF00FC187F00F8183F00F0FC1F00F3FE
      0F00F7030700FC018700F800CB00F0FFF100F3FFF300F700FF00FC003F00F800
      1F00F0000F00F0000F00F8001F00FC003F00FF00FF00FFFFFF00FFFFFF00FFFF
      FF00}
  end
  object btTestarConexao: TSpeedButton
    Left = 8
    Top = 199
    Width = 672
    Height = 33
    Caption = 'Testar Conex'#227'o'
    Glyph.Data = {
      9E000000424D9E000000000000003E0000002800000018000000180000000100
      01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
      FF00FFFFFF00FFE00100FFE00100FFF80700E0300300E033F300E7F3F300E7F3
      F300E7F3F300E7F00300E7F80700FFFFFF00FFFFFF008007FF008007FF00E01F
      FF00C00FFF00CFCFFF00CFCFFF00CFCFFF00CFCFFF00C00FFF00E01FFF00FFFF
      FF00}
    OnClick = btTestarConexaoClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 690
    Height = 81
    Align = alTop
    Caption = 'Informa'#231#245'es Cliente'
    TabOrder = 0
    ExplicitWidth = 792
    object etNomeCliente: TLabeledEdit
      Left = 8
      Top = 40
      Width = 337
      Height = 21
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome Cliente'
      TabOrder = 0
    end
    object etCNPJ: TLabeledEdit
      Left = 351
      Top = 40
      Width = 329
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'CNPJ'
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 81
    Width = 690
    Height = 112
    Align = alTop
    Caption = 'Dados de Acesso'
    TabOrder = 1
    object Label1: TLabel
      Left = 462
      Top = 23
      Width = 20
      Height = 13
      Caption = 'Port'
    end
    object etHost: TLabeledEdit
      Left = 10
      Top = 40
      Width = 447
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = 'Ip/Host'
      TabOrder = 0
    end
    object etPort: TMaskEdit
      Left = 462
      Top = 40
      Width = 218
      Height = 21
      EditMask = '!99999;1;_'
      MaxLength = 5
      TabOrder = 1
      Text = '     '
    end
  end
  object sbarConfig: TStatusBar
    Left = 0
    Top = 311
    Width = 690
    Height = 19
    Panels = <>
    ExplicitLeft = 64
    ExplicitTop = 232
    ExplicitWidth = 0
  end
  object progBarGerar: TProgressBar
    Left = 10
    Top = 286
    Width = 672
    Height = 16
    TabOrder = 3
  end
end
