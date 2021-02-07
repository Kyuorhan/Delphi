unit uFuncoes_Gerais;

interface

uses
  ZDataSet, udmPrincipal;

procedure ListarSQL(AQuery: TZQuery; ATexto: String);
procedure ExecutarSQL(ATexto: String);
procedure ZAtualiza(AQuery: TZQuery);
procedure ZDeleta(AQuery: TZQuery);

procedure MostraMensagem(ATexto: String);
procedure MostraAviso(ATexto: String);
procedure MostraErro(ATexto: String);

function SimNao(ATitulo, ATexto: String): Boolean;

implementation

uses
  System.SysUtils, Data.DB, Vcl.Forms, Vcl.Dialogs, Vcl.Controls,
  Winapi.Windows;

procedure MostraMensagem(ATexto: String);
begin
  Application.MessageBox(PChar(ATexto), PChar(Application.Title),
    MB_OK + MB_ICONINFORMATION);
end;

procedure MostraAviso(ATexto: String);
begin
  Application.MessageBox(PChar(ATexto), PChar(Application.Title),
    MB_OK + MB_ICONWARNING);
end;

procedure MostraErro(ATexto: String);
begin
  Application.MessageBox(PChar(ATexto), PChar(Application.Title),
    MB_OK + MB_ICONERROR);
end;

procedure ListarSQL(AQuery: TZQuery; ATexto: String);
begin
  AQuery.Close;
  AQuery.SQL.Text := ATexto;
  AQuery.Open;
end;

procedure ExecutarSQL(ATexto: String);
var AQuery: TZQuery;
begin
  AQuery := TZQuery.Create(nil);
  AQuery.Connection := dmPrincipal.DBase;
  AQuery.Close;
  AQuery.SQL.Text := ATexto;
  AQuery.ExecSQL;
  FreeAndNil(AQuery);
end;

procedure ZAtualiza(AQuery: TZQuery);
begin
    if (AQuery.State IN [dsInsert, dsEdit]) then
      AQuery.Post;
    AQuery.ApplyUpdates;
end;

function SimNao(ATitulo, ATexto: String): Boolean;
begin
  //Result := Application.MessageBox(PChar(ATexto), PChar(ATitulo), MBYesNo) = mrYes;
  Result := Application.MessageBox(PChar(ATexto), PChar(ATitulo), MB_YesNo + MB_ICONQUESTION) = idYes;
end;

procedure ZDeleta(AQuery: TZQuery);
begin
  AQuery.Delete;
  AQuery.ApplyUpdates;
end;

end.
