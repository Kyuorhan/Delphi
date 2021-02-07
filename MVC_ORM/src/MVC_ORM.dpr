program MVC_ORM;

uses
  Vcl.Forms,
  uPrincipalView in 'View\uPrincipalView.pas' {fPrincipal},
  uConexao in 'Model\Conexao\uConexao.pas',
  uSys_Controll in 'Controller\uSys_Controll.pas',
  uReceberModel in 'Model\uReceberModel.pas',
  uReceberConexao in 'Model\Conexao\uReceberConexao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
