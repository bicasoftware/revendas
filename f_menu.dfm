object FormMenu: TFormMenu
  Left = 0
  Top = 0
  Caption = 'Revendas'
  ClientHeight = 570
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmMain
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object sbarMain: TStatusBar
    Left = 0
    Top = 551
    Width = 852
    Height = 19
    Panels = <
      item
        Text = 'Status'
        Width = 50
      end
      item
        Width = 100
      end
      item
        Text = 'Usu'#225'rio:'
        Width = 50
      end
      item
        Width = 400
      end
      item
        Text = 'N'#237'vel'
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object mmo1: TMemo
    Left = 96
    Top = 128
    Width = 673
    Height = 305
    Lines.Strings = (
      'mmo1')
    TabOrder = 1
  end
  object btn1: TButton
    Left = 96
    Top = 96
    Width = 185
    Height = 25
    Caption = 'btn1'
    TabOrder = 2
    OnClick = btn1Click
  end
  object mmMain: TMainMenu
    Left = 8
    Top = 8
    object Entra1: TMenuItem
      Caption = 'Entradas'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
      object Perodos1: TMenuItem
        Caption = 'Per'#237'odos'
      end
    end
    object Vendas1: TMenuItem
      Caption = 'Vendas'
      object NovaVenda1: TMenuItem
        Caption = 'Nova Venda'
      end
      object Pedidos1: TMenuItem
        Caption = 'Pedidos'
      end
    end
    object Opes1: TMenuItem
      Caption = 'Sistema'
      object ManutenoBancodados1: TMenuItem
        Caption = 'Manuten'#231#227'o Banco dados'
      end
      object N3: TMenuItem
        Caption = 'Configura'#231#245'es'
        OnClick = N3Click
      end
      object NovoUsurio1: TMenuItem
        Caption = 'Novo Usu'#225'rio'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Desconectar1: TMenuItem
        Caption = 'Desconectar'
        OnClick = Desconectar1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Finalizar1: TMenuItem
        Caption = 'Finalizar'
        OnClick = Finalizar1Click
      end
    end
  end
end
