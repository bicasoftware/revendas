unit f_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, main_dm, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFormMenu = class(TForm)
    mmMain: TMainMenu;
    Entra1: TMenuItem;
    Vendas1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    Perodos1: TMenuItem;
    NovaVenda1: TMenuItem;
    Pedidos1: TMenuItem;
    Opes1: TMenuItem;
    ManutenoBancodados1: TMenuItem;
    NovoUsurio1: TMenuItem;
    procedure btClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses f_clientes;

{$R *.dfm}

procedure TFormMenu.btClientesClick(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
end;

end.
