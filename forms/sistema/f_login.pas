unit f_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, base_form, main_dm, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, f_menu;

type
  TFormLogin = class(TBaseForm)
    pnl1: TPanel;
    btLogar: TSpeedButton;
    btSair: TSpeedButton;
    etLogin: TLabeledEdit;
    etPass: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses
  StringHelper, EditTextHelper;

{$R *.dfm}



end.

