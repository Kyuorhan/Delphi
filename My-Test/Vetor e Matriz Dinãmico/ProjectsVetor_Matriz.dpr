program ProjectsVetor_Matriz;

uses
  Vcl.Forms,
  uVetor_Matriz in 'uVetor_Matriz.pas' {frmVator_Matriz};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVator_Matriz, frmVator_Matriz);
  Application.Run;
end.
