object FormDBSetup: TFormDBSetup
  Left = 0
  Top = 0
  Caption = 'Instala'#231#227'o e manuten'#231#227'o do Banco de Dados'
  ClientHeight = 258
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btAtualizar: TSpeedButton
    Left = 8
    Top = 110
    Width = 210
    Height = 73
    Caption = 'Atualizar vers'#227'o'
    Glyph.Data = {
      9E000000424D9E000000000000003E0000002800000018000000180000000100
      01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF18FF00FC187F00F8183F00F0FC1F00F3FE
      0F00F7030700FC018700F800CB00F0FFF100F3FFF300F700FF00FC003F00F800
      1F00F0000F00F0000F00F8001F00FC003F00FF00FF00FFFFFF00FFFFFF00FFFF
      FF00}
    Layout = blGlyphTop
  end
  object btFinalizar: TSpeedButton
    Left = 231
    Top = 110
    Width = 210
    Height = 73
    Caption = 'Finalizar'
    Glyph.Data = {
      9E000000424D9E000000000000003E0000002800000018000000180000000100
      01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
      FF00FFFFFF00F3F9E700F3F9E700F3F9E700FF39E700F819E700F991E700FF83
      E700F387E700F2C7E700F2462700F240E700F241E700F203E700F383E700F3FF
      E700F3F1E700F3F1E700F3F1E700F3FFE700F3FFE700F0000700F0000700FFFF
      FF00}
    Layout = blGlyphTop
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 433
    Height = 97
    Caption = 'Status'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 143
      Height = 13
      Caption = 'Vers'#227'o banco de dados atual:'
    end
    object lbVersaoAtual: TLabel
      Left = 166
      Top = 24
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label2: TLabel
      Left = 256
      Top = 24
      Width = 91
      Height = 13
      Caption = 'Vers'#227'o do sistema:'
    end
    object lbVersaoSistema: TLabel
      Left = 406
      Top = 24
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 35
      Height = 13
      Caption = 'Status:'
    end
    object lbStatusAtualizacao: TLabel
      Left = 16
      Top = 72
      Width = 89
      Height = 13
      Caption = 'Status Atualiza'#231#227'o'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 188
    Width = 450
    Height = 70
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 202
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 60
      Height = 13
      Caption = 'Atualizando:'
    end
    object lbAtualizandoTabela: TLabel
      Left = 80
      Top = 8
      Width = 361
      Height = 13
      Caption = 'Atualizando Tabela'
    end
    object lbAcao: TLabel
      Left = 8
      Top = 24
      Width = 60
      Height = 13
      Caption = 'A'#231#227'o'
    end
    object lbAcaoCampo: TLabel
      Left = 80
      Top = 24
      Width = 361
      Height = 13
      Caption = 'lbAcaoCampo'
    end
    object progBarUpdate: TJvDBProgressBar
      Left = 8
      Top = 48
      Width = 433
      Height = 16
      TabOrder = 0
    end
  end
end
