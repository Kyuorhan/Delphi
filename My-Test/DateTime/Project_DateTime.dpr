program Project_DateTime;

uses
  Vcl.Forms,
  DateTime in 'C:\Users\Programação\Documents\RAD Studio\Projects\My test\DateTime\DateTime.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
