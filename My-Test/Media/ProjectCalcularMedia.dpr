program ProjectCalcularMedia;

uses
  Vcl.Forms,
  CalcularMedia in 'CalcularMedia.pas' {Form7},
  ClassePessoa in 'ClassePessoa.pas',
  ClasseAluno in 'ClasseAluno.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
