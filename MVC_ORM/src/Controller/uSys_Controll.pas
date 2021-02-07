unit uSys_Controll;

interface

uses
  uConexao, uReceberModel, System.SysUtils;

type
  TSys_Controll = Class
  private
    FConexao : TConexaoZeos;
    FReceber : TReceberModel;

    Class var FInstance : TSys_Controll;

  public
    constructor Create;
    destructor Destroy; override;

    procedure SetReceber(ACodigoEmpresa : Integer);
    procedure CarregarReceber;

    class function GetInstance : TSys_Controll;

     property Conexao : TConexaoZeos read FConexao  write FConexao;
    property Receber : TReceberModel read FReceber  write FReceber;
  end;

implementation

{ TSys_Controll }

procedure TSys_Controll.CarregarReceber;
begin
  FReceber.Carregar();
end;

constructor TSys_Controll.Create;
begin
  FConexao := TConexaoZeos.Create;
  //FReceber := TReceberModel.Create();
end;

destructor TSys_Controll.Destroy;
begin
  FreeAndNil(FReceber);
  FreeAndNil(FConexao);
  inherited;
end;

class function TSys_Controll.GetInstance: TSys_Controll;
begin
  if not Assigned(Self.FInstance) then
  begin
    Self.FInstance := TSys_Controll.Create();
  end;

  Result := Self.FInstance;
end;

procedure TSys_Controll.SetReceber(ACodigoEmpresa: Integer);
begin

end;

end.
