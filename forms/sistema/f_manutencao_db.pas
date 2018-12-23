unit f_manutencao_db;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, base_form, main_dm, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFormManutencao = class(TBaseForm)
    zqManutencao: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormManutencao: TFormManutencao;

implementation

{$R *.dfm}

end.
