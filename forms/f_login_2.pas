unit f_login_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  main_dm, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFormLogin2 = class(TForm)
    btLogar: TSpeedButton;
    btSair: TSpeedButton;
    pnl1: TPanel;
    etLogin: TLabeledEdit;
    etPass: TLabeledEdit;
    procedure btSairClick(Sender: TObject);
    procedure btLogarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure destroyQuery(query: TZQuery);
    procedure showMenu;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin2: TFormLogin2;

implementation
uses
  StringHelper, IntHelper, EditTextHelper, f_menu;

{$R *.dfm}

procedure TFormLogin2.btLogarClick(Sender: TObject);
var
  searchQuery: TZquery;
begin
  inherited;
  if (etLogin.isEmpty) then begin
    MessageDlg('Login vazio. Digite o seu Login', mtError, [mbOK], 0);
  end
  else if (etPass.isEmpty) then begin
    MessageDlg('Digite sua senha!', mtError, [mbOK], 0);
  end
  else begin
    searchQuery := TZQuery.Create(Self);
    with searchQuery do begin
      Connection := DMMain.zconMain;
      SQL.Clear;
      SQL.Text :=
        'SELECT count(*) AS count, nivel AS nivel FROM usuarios WHERE login = :login AND pass = SHA(:pass)';
      ParamByName('login').Value := etLogin.Text;
      ParamByName('pass').Value := etPass.Text;
      Open;

      if (FieldByName('count').AsInteger = 0) then begin
        MessageDlg('Usuário não encontrado! Verifique seu login e senha.', mtWarning, [mbOK], 0);
        destroyQuery(searchQuery);
      end
      else begin
        DMMain.setUsername(etLogin.trimmedText);
        DMMain.setAccesslevel(FieldByName('nivel').AsInteger);
        destroyQuery(searchQuery);
        showMenu;
        self.Hide;
      end;
    end;
  end;
end;

procedure TFormLogin2.showMenu();
begin
  if(FormMenu = nil) then begin
    FormMenu := TFormMenu.Create(Application);
  end;

  FormMenu.Show;
end;

procedure TFormLogin2.btSairClick(Sender: TObject);
begin
  if (MessageDlg('Deseja Sair?', mtWarning, [mbYes, mbNo], 0, mbNo) = mrYes) then begin
    Application.Terminate;
  end;
end;

procedure TFormLogin2.destroyQuery(query: TZQuery);
begin
  if (query <> nil) then begin
    query.Close;
    query.Destroy;
  end;
end;

procedure TFormLogin2.FormShow(Sender: TObject);
begin
  etLogin.Clear;
  etLogin.SetFocus;
  etPass.Clear;
end;

end.

