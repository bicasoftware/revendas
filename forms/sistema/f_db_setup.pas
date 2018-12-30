unit f_db_setup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  JvExComCtrls, JvProgressBar, JvDBProgressBar;

type
  TFormDBSetup = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    lbVersaoAtual: TLabel;
    Label2: TLabel;
    lbVersaoSistema: TLabel;
    Label3: TLabel;
    lbStatusAtualizacao: TLabel;
    btAtualizar: TSpeedButton;
    btFinalizar: TSpeedButton;
    Panel1: TPanel;
    Label4: TLabel;
    lbAtualizandoTabela: TLabel;
    lbAcao: TLabel;
    lbAcaoCampo: TLabel;
    progBarUpdate: TJvDBProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDBSetup: TFormDBSetup;

implementation

{$R *.dfm}

end.
