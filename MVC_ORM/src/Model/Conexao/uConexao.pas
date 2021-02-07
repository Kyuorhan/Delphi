unit uConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZConnection;

type
  TConexaoZeos = Class
    private
      FConexao : TZConnection;

      procedure ConfigConexao;
      function Connection: TZConnection;
    public
       constructor Create;
       destructor Destroy; override;

       function GetConexao : TZConnection;
       function CriarQry : TZQuery;
    end;

    const
      PATH_BANCO : string = 'C:\Program Files (x86)\MariaDB 10.5\lib\libmariadb.dll';

implementation

{ TModelConexaoZeos }

procedure TConexaoZeos.ConfigConexao;
begin
  FConexao := TZConnection.Create(nil);
  FConexao.Database := 'deepweb_universe';
  FConexao.HostName := 'localhost';
  fConexao.LibraryLocation := PATH_BANCO;
  FConexao.LoginPrompt := False;
  FConexao.Password := '123';
  FConexao.Protocol := 'MariaDB-10';
  FConexao.User := 'root';

  FConexao.Connected := True;
end;

function TConexaoZeos.Connection : TZConnection;
begin
  Result := FConexao;
end;

constructor TConexaoZeos.Create;
begin
  FConexao := TZConnection.Create(nil);

  Self.ConfigConexao();
end;

function TConexaoZeos.CriarQry: TZQuery;
var
  VQry : TZQuery;
begin
  VQry := TZQuery.Create(nil);
  VQry.Connection := FConexao;

  Result := VQry;
end;

destructor TConexaoZeos.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

function TConexaoZeos.GetConexao;
begin
  Result := FConexao
end;

end.
