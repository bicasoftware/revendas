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
  PixelsPerInch = 96
  TextHeight = 13
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
      object NovoUsurio1: TMenuItem
        Caption = 'Novo Usu'#225'rio'
      end
    end
  end
end
