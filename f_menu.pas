unit f_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, main_dm, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StringHelper, Vcl.ComCtrls, IntHelper, u_sql_table,
  SQLField, VarcharField;

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
    sbarMain: TStatusBar;
    N1: TMenuItem;
    Desconectar1: TMenuItem;
    N2: TMenuItem;
    Finalizar1: TMenuItem;
    N3: TMenuItem;
    mmo1: TMemo;
    btn1: TButton;
    procedure btClientesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Finalizar1Click(Sender: TObject);
    procedure Desconectar1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    procedure setStatus(status: string);
    procedure setUsername(name: string);
    procedure setNivel(nivel: Integer);
    procedure signOut;
    { Private declarations }
  public
    { Public declarations }
    procedure updateUser;
  end;

var
  FormMenu: TFormMenu;

implementation

uses
  f_clientes, f_login_2, f_first_run, u_char_column, u_integer_column, u_boolean_column,
  u_decimal_column;

{$R *.dfm}

procedure TFormMenu.updateUser;
begin
  setStatus('Conectado');
  setUserName(DMMain.username);
  setNivel(DMMain.accessLevel);
end;

procedure TFormMenu.btClientesClick(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
end;

procedure TFormMenu.setStatus(status: string);
begin
  sbarMain.Panels[1].Text := status;
end;

procedure TFormMenu.setUsername(name: string);
begin
  sbarMain.Panels[3].Text := name;
end;

procedure TFormMenu.btn1Click(Sender: TObject);
var
  table: TSQLTable;
begin

  table := TSQLTable.Create('clientes');
  table.addField(TCharColumn.Create(TCharType.ctVarchar, 'nome', 30, false, ''));
  table.addField(TCharColumn.Create(TCharType.ctChar, 'uf', 2, False, 'SP'));
  table.addField(TIntegerColumn.Create(itInt, 'idade', false, 18));
  table.addField(TBooleanColumn.Create('status', false));
  table.addField(TDecimalColumn.create('salario', 0.0));
//  table.addField(TDateColumn.create('datanascto', false, now))
//  table.addField(TSQLTimestampField.create);
  mmo1.Text := table.generateCreateSyntax;
end;

procedure TFormMenu.Desconectar1Click(Sender: TObject);
begin
  signOut;
end;

procedure TFormMenu.Finalizar1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {
    Ao logar, o form Login fica apenas como Hide;
    Ao fechar o menu e por consequência finalizar a aplicação, fecha também o FormLogin
  }
  if FormLogin2 <> nil then
    FormLogin2.close;
end;

procedure TFormMenu.N3Click(Sender: TObject);
begin
  if (FormFirstRun = nil) then begin
    FormFirstRun := TFormFirstRun.Create(Self);
  end;
  FormFirstRun.ShowModal;
end;

procedure TFormMenu.setNivel(nivel: Integer);
begin
  sbarMain.Panels[5].Text := nivel.toString;
end;

procedure TFormMenu.signOut();
begin
  { exibe novamente a tela de login }
  DMMain.reset;
  FormMenu.Hide;
  FormLogin2.Show;
  FormLogin2.Visible := true;
end;

end.

