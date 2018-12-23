inherited FormBaseCadastro: TFormBaseCadastro
  Caption = 'BaseCadastro'
  ClientHeight = 431
  ClientWidth = 542
  OnCreate = FormCreate
  ExplicitWidth = 558
  ExplicitHeight = 469
  PixelsPerInch = 96
  TextHeight = 13
  object pnlComponents: TPanel
    Left = 0
    Top = 0
    Width = 542
    Height = 207
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 821
    ExplicitHeight = 241
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 207
    Width = 542
    Height = 224
    Align = alBottom
    BevelEdges = []
    TabOrder = 1
    ExplicitTop = 352
    ExplicitWidth = 821
    object pnlActionsLeft: TPanel
      Left = 1
      Top = 1
      Width = 540
      Height = 222
      Align = alClient
      BevelEdges = []
      TabOrder = 0
      ExplicitWidth = 759
      ExplicitHeight = 230
      object pnlActions: TPanel
        Left = 1
        Top = 161
        Width = 538
        Height = 60
        Align = alBottom
        BevelEdges = []
        TabOrder = 0
        ExplicitTop = 141
        ExplicitWidth = 817
        object btNovo: TSpeedButton
          Left = 10
          Top = 10
          Width = 80
          Height = 40
          Caption = 'Novo'
          Glyph.Data = {
            9E000000424D9E000000000000003E0000002800000018000000180000000100
            01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F0000F00E0000700E03C0700E07E0700E07E
            0700E07E0700E07E0700E03C0700E0000700E0000700E0000700E0000700E7FE
            0700E7FE0700E7FE0700E7FE0F00E0001F00F0003F00FFFFFF00FFFFFF00FFFF
            FF00}
          OnClick = btNovoClick
        end
        object btEditar: TSpeedButton
          Left = 95
          Top = 10
          Width = 80
          Height = 40
          Caption = 'Alterar'
          Glyph.Data = {
            9E000000424D9E000000000000003E0000002800000018000000180000000100
            01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00E1FFFF00E0FFFF00E47FFF00E23FFF00F11F
            FF00F88FFF00FC47FF00FE23FF00FF11FF00FF88FF00FFC47F00FFE27F00FFF0
            FF00FFF9CF00FFFF8700FFFF0700FFFF0F00FFFF9F00FFFFFF00FFFFFF00FFFF
            FF00}
          OnClick = btEditarClick
        end
        object btCancel: TSpeedButton
          Left = 180
          Top = 10
          Width = 80
          Height = 40
          Caption = 'Excluir'
          Glyph.Data = {
            9E000000424D9E000000000000003E0000002800000018000000180000000100
            01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F00FFF00E007FF00E0061F00E006
            1F00E007FF00E007FF00E0060700E0060700E007FF00E007FF00E0060300E006
            0300FFFFFF00C003FF00C003FF00F81FFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00}
          OnClick = btCancelClick
        end
        object btOptions: TSpeedButton
          Left = 265
          Top = 10
          Width = 80
          Height = 40
          Caption = 'Op'#231#245'es'
          Glyph.Data = {
            9E000000424D9E000000000000003E0000002800000018000000180000000100
            01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0000700E000
            0700FFFFFF00FFFFFF00FFFFFF00E0000700E0000700FFFFFF00FFFFFF00FFFF
            FF00E0000700E0000700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00}
        end
        object btNext: TSpeedButton
          Left = 440
          Top = 10
          Width = 40
          Height = 40
          Glyph.Data = {
            9E000000424D9E000000000000003E0000002800000018000000180000000100
            01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF3F00FCFF
            3F00FC3F3F00FC1F3F00FC0F3F00FC033F00FC033F00FC0F3F00FC1F3F00FC3F
            3F00FCFF3F00FDFF3F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00}
          Layout = blGlyphTop
        end
        object btLast: TSpeedButton
          Left = 485
          Top = 10
          Width = 40
          Height = 40
          Glyph.Data = {
            9E000000424D9E000000000000003E0000002800000018000000180000000100
            01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EFCF00F7EFCF00F3E7
            CF00F1E3CF00F0E1CF00F060CF00F0204F00F0000F00F0204F00F060CF00F0E1
            CF00F1E3CF00F3E7CF00F7EFCF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00}
          Layout = blGlyphTop
        end
        object btPrevious: TSpeedButton
          Left = 395
          Top = 10
          Width = 40
          Height = 40
          Glyph.Data = {
            9E000000424D9E000000000000003E0000002800000018000000180000000100
            01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFFBF00FCFF
            3F00FCFC3F00FCF83F00FCF03F00FCC03F00FCC03F00FCF03F00FCF83F00FCFC
            3F00FCFF3F00FCFFBF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00}
          Layout = blGlyphTop
        end
        object btFirst: TSpeedButton
          Left = 350
          Top = 10
          Width = 40
          Height = 40
          Glyph.Data = {
            9E000000424D9E000000000000003E0000002800000018000000180000000100
            01000000000060000000C40E0000C40E0000020000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F7EF00F3F7EF00F3E7
            CF00F3C78F00F3870F00F3060F00F2040F00F0000F00F2040F00F3060F00F387
            0F00F3C78F00F3E7CF00F3F7EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00}
          Layout = blGlyphTop
        end
      end
      object dbgBase: TJvDBGrid
        Left = 1
        Top = 1
        Width = 538
        Height = 160
        Align = alClient
        DataSource = dtsBase
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
      end
    end
  end
  object zqBase: TZQuery
    Params = <>
    Left = 112
    Top = 112
  end
  object dtsBase: TDataSource
    DataSet = zqBase
    Left = 216
    Top = 56
  end
end
