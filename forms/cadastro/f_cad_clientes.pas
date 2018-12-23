unit f_cad_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, base_form_cadastro, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TFormBaseCadastro1 = class(TFormBaseCadastro)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBaseCadastro1: TFormBaseCadastro1;

implementation

{$R *.dfm}

end.
