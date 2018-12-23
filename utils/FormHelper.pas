unit FormHelper;

interface

uses
  System.SysUtils, Vcl.Forms, Vcl.StdCtrls, Vcl.Dialogs, Vcl.Controls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Data.DB, ZAbstractDataset, ZDataset;

type
  TCadastroHelper = class
  private
    const
      NOVO: string = 'Novo';
      EDITAR: string = 'Editar';
      SALVAR: string = 'Salvar';
      CANCELAR: string = 'Cancelar';
      DELETAR: string = 'Apagar';
    var
      btSalvar: TSpeedButton;
      btEditar: TSpeedButton;
      btDeletar: TSpeedButton;
      dataset: TZAbstractDataset;
      dbgrid: TDBGrid;
  protected
  public
    constructor Create(AOwner: TForm; dataset: TZAbstractDataset; dbGrid: TDBGrid; btSalvar:
      TSpeedButton; btEditar: TSpeedButton; btDeletar: TSpeedButton);
    procedure onAppend;
    procedure onInsert;
    procedure onEdit;
    procedure onUpdate;
    procedure onCancel;
    procedure onDelete(msg: string);
  published
  end;

implementation

{ TFormHelper }

constructor TCadastroHelper.Create(AOwner: TForm; dataset: TZAbstractDataset; dbGrid: TDBGrid;
  btSalvar: TSpeedButton; btEditar: TSpeedButton; btDeletar: TSpeedButton);
begin
  self.btSalvar := btSalvar;
  self.btEditar := btEditar;
  self.btDeletar := btEditar;
  Self.dataset := dataset;
  Self.dbgrid := dbGrid;
end;

procedure TCadastroHelper.onAppend;
begin
  btEditar.Enabled := false;
  btDeletar.Caption := DELETAR;
  btSalvar.Caption := SALVAR;
  dbGrid.Enabled := false;
  dataset.Append;
end;

procedure TCadastroHelper.onCancel;
begin
  btSalvar.Enabled := True;
  btSalvar.Caption := NOVO;
  btEditar.Enabled := True;
  btEditar.Caption := EDITAR;
  btDeletar.Caption := DELETAR;
  dbGrid.Enabled := True;
  dataset.Cancel;
  dataset.CancelUpdates;
end;

procedure TCadastroHelper.onDelete(msg: string);
begin
  if (MessageDlg(msg, mtWarning, [mbYes, mbNo], 0, mbNo) = mrYes) then begin
    dataset.Delete;
    dataset.ApplyUpdates;
  end;
end;

procedure TCadastroHelper.onEdit;
begin
  btSalvar.Enabled := false;
  btDeletar.Caption := CANCELAR;
  btEditar.Caption := SALVAR;
  dbGrid.Enabled := false;
  dataset.Edit;
end;

procedure TCadastroHelper.onInsert;
begin
  btEditar.Enabled := true;
  btDeletar.Caption := DELETAR;
  btSalvar.Caption := NOVO;
  dbGrid.Enabled := true;
  dataset.Post;
  dataset.ApplyUpdates;
end;

procedure TCadastroHelper.onUpdate;
begin
  btSalvar.Enabled := true;
  btDeletar.Caption := CANCELAR;
  btEditar.Caption := EDITAR;
  dbGrid.Enabled := true;
  dataset.Post;
  dataset.ApplyUpdates;
end;

end.

