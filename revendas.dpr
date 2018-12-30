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
  StringHelper in 'utils\StringHelper.pas',
  IntHelper in 'utils\IntHelper.pas',
  base_form in '\\vboxsrv\Arquivos\Programacao\revendas\bases\base_form.pas' {BaseForm},
  EditTextHelper in 'utils\EditTextHelper.pas',
  f_login_2 in 'forms\f_login_2.pas' {FormLogin2},
  f_first_run in 'forms\sistema\f_first_run.pas' {FormFirstRun},
  ConfigFileReader in 'utils\ConfigFileReader.pas',
  f_db_setup in 'forms\sistema\f_db_setup.pas' {FormDBSetup},
  SQLField in 'utils\db_creation\SQLField.pas',
  field_types in 'utils\db_creation\field_types.pas',
  VarcharField in 'utils\db_creation\VarcharField.pas',
  u_sql_table in 'utils\db_creation\u_sql_table.pas',
  u_char_column in 'utils\db_creation\u_char_column.pas',
  u_integer_column in 'utils\db_creation\u_integer_column.pas',
  u_boolean_column in 'utils\db_creation\u_boolean_column.pas',
  u_decimal_column in 'utils\db_creation\u_decimal_column.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Turquoise Gray');
  Application.CreateForm(TDMMain, DMMain);
  Application.CreateForm(TFormLogin2, FormLogin2);
  Application.Run;
end.
