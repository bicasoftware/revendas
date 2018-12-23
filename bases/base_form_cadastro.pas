unit base_form_cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, base_form, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  FormHelper;

type
  TFormBaseCadastro = class(TBaseForm)
    pnlComponents: TPanel;
    pnlBottom: TPanel;
    pnlActionsLeft: TPanel;
    pnlActions: TPanel;
    dbgBase: TJvDBGrid;
    zqBase: TZQuery;
    btNovo: TSpeedButton;
    btEditar: TSpeedButton;
    btCancel: TSpeedButton;
    btOptions: TSpeedButton;
    btNext: TSpeedButton;
    btLast: TSpeedButton;
    btPrevious: TSpeedButton;
    btFirst: TSpeedButton;
    dtsBase: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
    helper: TCadastroHelper;
  public
    { Public declarations }
    function getDeleteMessage: string; dynamic; abstract;
    procedure beforeInsert; dynamic; abstract;
    procedure beforeUpdate; dynamic; abstract;
    procedure afterInsert; dynamic; abstract;
    procedure afterUpdate; dynamic; abstract;
  end;

var
  FormBaseCadastro: TFormBaseCadastro;

implementation

{$R *.dfm}

procedure TFormBaseCadastro.btCancelClick(Sender: TObject);
begin
  case zqBAse.State of
    dsBrowse:
      helper.onDelete(getDeleteMessage);
    dsEdit, dsInsert:
      helper.onCancel;
  end;
end;

procedure TFormBaseCadastro.btEditarClick(Sender: TObject);
begin
  case zqBase.state of
    dsBrowse:
      begin
        helper.onEdit;
      end;
    dsEdit:
      begin
        helper.onUpdate;
      end;
  end;
end;

procedure TFormBaseCadastro.btNovoClick(Sender: TObject);
begin
  case zqBase.state of
    dsBrowse:
      begin
        helper.onAppend;
      end;
    dsInsert:
      begin
        helper.onInsert;
      end;
  end;
end;

procedure TFormBaseCadastro.FormCreate(Sender: TObject);
begin
  inherited;
  helper := TCadastroHelper.Create(Self, zqBase, dbgBase, btNovo, btEditar, btCancel);

end;

end.

