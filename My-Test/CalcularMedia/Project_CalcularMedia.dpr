program Project_CalcularMedia;

uses
  Vcl.Forms,
  CalcularMedia in 'CalcularMedia.pas' {frmMedia},
  ClassAluno in 'ClassAluno.pas',
  ClassPessoa in 'ClassPessoa.pas',
  ClasseAluno in 'ClasseAluno.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMedia, frmMedia);
  Application.Run;
end.
