program revendas;

uses
  Vcl.Forms,
  f_menu in 'f_menu.pas' {FormMenu},
  Vcl.Themes,
  Vcl.Styles,
  f_clientes in 'f_clientes.pas' {FormClientes},
  FormHelper in 'utils\FormHelper.pas',
  f_cad_clientes in 'forms\cadastro\f_cad_clientes.pas' {FormBaseCadastro1},
  base_form_cadastro in 'bases\base_form_cadastro.pas' {FormBaseCadastro},
  main_dm in 'main_dm.pas' {DMMain: TDataModule},
  f_manutencao_db in 'forms\sistema\f_manutencao_db.pas' {FormManutencao},
  StringHelper in 'utils\StringHelper.pas',
  IntHelper in 'utils\IntHelper.pas',
  base_form in '\\vboxsrv\Arquivos\Programacao\revendas\bases\base_form.pas' {BaseForm},
  EditTextHelper in 'utils\EditTextHelper.pas',
  f_login_2 in 'forms\f_login_2.pas' {FormLogin2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Turquoise Gray');
  Application.CreateForm(TDMMain, DMMain);
  Application.CreateForm(TFormLogin2, FormLogin2);
  Application.Run;
end.
