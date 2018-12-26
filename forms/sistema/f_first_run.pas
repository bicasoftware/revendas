unit f_first_run;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.Mask,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFormFirstRun = class(TForm)
    GroupBox1: TGroupBox;
    etNomeCliente: TLabeledEdit;
    etCNPJ: TLabeledEdit;
    GroupBox2: TGroupBox;
    etHost: TLabeledEdit;
    btGerarBanco: TSpeedButton;
    sbarConfig: TStatusBar;
    progBarGerar: TProgressBar;
    btTestarConexao: TSpeedButton;
    etPort: TMaskEdit;
    Label1: TLabel;
    procedure btGerarArquivoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btTestarConexaoClick(Sender: TObject);
  private
    procedure readConfigFile;
    procedure createConfigFile;
    procedure updateCliente;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFirstRun: TFormFirstRun;

implementation

uses
  main_dm, ConfigFileReader, EditTextHelper, StringHelper;

var
  fileHelper: TConfigFileReader;

{$R *.dfm}

procedure TFormFirstRun.readConfigFile();
begin
  fileHelper := TConfigFileReader.create(Self);
  if (fileHelper.doConfigFileExist) then begin
    fileHelper.read();
    etHost.Text := fileHelper.getHost;
    etPort.Text := fileHelper.getPort;
  end;
end;

procedure TFormFirstRun.btGerarArquivoClick(Sender: TObject);
begin
//  if (etNomeCliente.isEmpty) then begin
//    MessageDlg('Indique o nome do cliente!', mtWarning, [mbOK], 0);
//  end
//  else if ((etHost.isNotEmpty) and (etPort.asInt > 0)) then begin
//    try
//      createConfigFile;
//    finally
//      MessageDlg('Arquivo gerado!', mtConfirmation, [mbOK], 0);
//    end;
//  end
//  else begin
//    MessageDlg('Digite o host e port corretamente!', mtError, [mbOK], 0);
//  end;

end;

procedure TFormFirstRun.btTestarConexaoClick(Sender: TObject);
begin
  if (etNomeCliente.isEmpty) then begin
    MessageDlg('Indique o nome do cliente!', mtWarning, [mbOK], 0);
  end
  else if ((etHost.isNotEmpty) and (etPort.asInt > 0)) then begin
    try
      try
        with DMMain.zconMain do begin
          HostName := etHost.Text;
          Port := etPort.asInt;
          Connect;

        end;
      except
        on e: Exception do begin
          ShowMessage('Erro ao conectar: ' + e.message);
        end;
      end;
    finally
      createConfigFile;
      updateCliente();
      MessageDlg('Conectado ao banco de dados!', mtInformation, [mbOK], 0);
    end;
  end
  else begin
    MessageDlg('Digite o host e port corretamente!', mtError, [mbOK], 0);
  end;
end;

procedure TFormFirstRun.createConfigFile();
begin
  if (fileHelper <> nil) then begin
    with fileHelper do begin
      setHostPort(etHost.Text, StringReplace(etPort.Text, '_', '', [rfReplaceAll]));
      saveFile;
    end;
  end;
end;

procedure TFormFirstRun.FormCreate(Sender: TObject);
begin
  readConfigFile;
end;

procedure TFormFirstRun.updateCliente();
const
  nome_cliente: string = 'nome_cliente';
  cnpj: string = 'cnpj';
begin

  try
    with TZQuery.Create(self) do begin
      Connection := DMMain.zconMain;
      SQL.Clear;
      SQL.Add('update configs set nome_cliente = :' + nome_cliente + ', cnpj = :' + cnpj);
      ParamByName(nome_cliente).Value := Trim(etNomeCliente.Text);
      ParamByName(cnpj).Value := Trim(etCNPJ.Text);
      ExecSQL;
    end;
  finally
    btGerarBanco.Enabled := true;
  end;
end;

end.

