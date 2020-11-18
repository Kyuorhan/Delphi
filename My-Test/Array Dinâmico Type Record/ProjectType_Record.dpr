program ProjectType_Record;

uses
  Vcl.Forms,
  uType_Record in 'uType_Record.pas' {frmType_Record};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmType_Record, frmType_Record);
  Application.Run;
end.
