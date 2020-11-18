program Project_CriarClass;

uses
  Vcl.Forms,
  CriarClass in 'CriarClass.pas' {Form7},
  uPessoa in 'uPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
