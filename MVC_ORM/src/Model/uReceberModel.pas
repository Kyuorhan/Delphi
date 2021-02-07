unit uReceberModel;

interface

uses
  System.SysUtils;

type
  TReceberModel = class

  private
    Fdata_vencimento: TDate;
    Fdata_documento: TDate;
    Fpedidos_id: Integer;
    Fdesconto: Currency;
    Fvalor: Currency;
    Fclientes_id: Integer;
    Fdescricao: String;
    Fdocumentos_id: Integer;
    Fdata_cadastro: TDate;
    Fvencimento: TDate;
    Fobs_quitacao: String;
    Fid: Integer;
    Fpago: Currency;
    Fnum_parcela: String;
    procedure Setclientes_id(const Value: Integer);
    procedure Setdata_cadastro(const Value: TDate);
    procedure Setdata_documento(const Value: TDate);
    procedure Setdata_vencimento(const Value: TDate);
    procedure Setdesconto(const Value: Currency);
    procedure Setdescricao(const Value: String);
    procedure Setdocumentos_id(const Value: Integer);
    procedure Setid(const Value: Integer);
    procedure Setnum_parcela(const Value: String);
    procedure Setobs_quitacao(const Value: String);
    procedure Setpago(const Value: Currency);
    procedure Setpedidos_id(const Value: Integer);
    procedure Setvalor(const Value: Currency);
    procedure Setvencimento(const Value: TDate);

  public
    constructor Create(ACodigo: Integer);

    procedure Carregar;

    property id               : Integer read Fid write Setid;
    property clientes_id      : Integer read Fclientes_id write Setclientes_id;
    property documentos_id    : Integer read Fdocumentos_id write Setdocumentos_id;
    property pedidos_id       : Integer read Fpedidos_id write Setpedidos_id;
    property descricao        : String read Fdescricao write Setdescricao;
    property data_documento   : TDate read Fdata_documento write Setdata_documento;
    property data_vencimento  : TDate read Fdata_vencimento write Setdata_vencimento;
    property desconto         : Currency read Fdesconto write Setdesconto;
    property pago             : Currency read Fpago write Setpago;
    property valor            : Currency read Fvalor write Setvalor;
    property num_parcela      : String read Fnum_parcela write Setnum_parcela;
    property data_cadastro    : TDate read Fdata_cadastro write Setdata_cadastro;
    property obs_quitacao     : String read Fobs_quitacao write Setobs_quitacao;
    property vencimento       : TDate read Fvencimento write Setvencimento;

  end;

implementation

{ TReceber }

uses uReceberConexao;

procedure TReceberModel.Carregar;
var
  VReceberConexao : TReceberConexao;
begin
  VReceberConexao := TReceberConexao.Create;
  try
    VReceberConexao.carregar(Self);
  finally
    FreeAndNil(VReceberConexao);
  end;

end;

constructor TReceberModel.Create(ACodigo: Integer);
begin
  Fclientes_id := ACodigo;
end;

procedure TReceberModel.Setclientes_id(const Value: Integer);
begin
  Fclientes_id := Value;
end;

procedure TReceberModel.Setdata_cadastro(const Value: TDate);
begin
  Fdata_cadastro := Value;
end;

procedure TReceberModel.Setdata_documento(const Value: TDate);
begin
  Fdata_documento := Value;
end;

procedure TReceberModel.Setdata_vencimento(const Value: TDate);
begin
  Fdata_vencimento := Value;
end;

procedure TReceberModel.Setdesconto(const Value: Currency);
begin
  Fdesconto := Value;
end;

procedure TReceberModel.Setdescricao(const Value: String);
begin
  Fdescricao := Value;
end;

procedure TReceberModel.Setdocumentos_id(const Value: Integer);
begin
  Fdocumentos_id := Value;
end;

procedure TReceberModel.Setid(const Value: Integer);
begin
  Fid := Value;
end;

procedure TReceberModel.Setnum_parcela(const Value: String);
begin
  Fnum_parcela := Value;
end;

procedure TReceberModel.Setobs_quitacao(const Value: String);
begin
  Fobs_quitacao := Value;
end;

procedure TReceberModel.Setpago(const Value: Currency);
begin
  Fpago := Value;
end;

procedure TReceberModel.Setpedidos_id(const Value: Integer);
begin
  Fpedidos_id := Value;
end;

procedure TReceberModel.Setvalor(const Value: Currency);
begin
  Fvalor := Value;
end;

procedure TReceberModel.Setvencimento(const Value: TDate);
begin
  Fvencimento := Value;
end;

end.
