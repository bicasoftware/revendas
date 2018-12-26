unit f_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, main_dm, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StringHelper, Vcl.ComCtrls, IntHelper;

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
    procedure btClientesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Finalizar1Click(Sender: TObject);
    procedure Desconectar1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
//    procedure FormShow(Sender: TObject);
  private
    procedure setStatus(status: string);
    procedure setUsername(name: string);
    procedure setNivel(nivel: Integer);
    procedure signOut;
//    procedure doConnect;
//    procedure showLogin;
    { Private declarations }
  public
    { Public declarations }
    procedure updateUser;
  end;

var
  FormMenu: TFormMenu;

implementation

uses
  f_clientes, f_login_2, f_first_run;

{$R *.dfm}

//procedure TFormMenu.doConnect();
//var
//  fileName: string;
//  configs: TStringList;
//begin
//  fileName := GetCurrentDir + '/configs.ini';
//  setStatus('desconectado');
//
//  try
//    if (FileExists(fileName)) then begin
//      configs := TStringList.Create;
//      configs.LoadFromFile(fileName);
//      with DMMain.zconMain do begin
//        HostName := configs[0];
//        port := configs[1].toInt;
//        Database := 'comercio';
//        Connect;
//        setStatus('Conectado');
//      end;
//
//    end
//    else begin
//      ShowMessage('arquivo não existe');
//      setStatus('desconectado');
//    end;
//
//  except
//    on e: Exception do
//      ShowMessage('Arquivo de configuração não encontrado!');
//  end;
//
//end;

//procedure TFormMenu.FormShow(Sender: TObject);
//begin
//  doConnect;
//  showLogin;
//end;
//
//procedure TFormMenu.showLogin();
//begin
//  if (FormLogin = nil) then begin
//    FormLogin := TFormLogin.Create(self);
//    FormLogin.Show;
//  end;
//end;

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
  if(FormFirstRun = nil) then begin
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

