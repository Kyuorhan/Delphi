unit udmClientes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ACBrValidador, ACBrConsultaCNPJ, ACBrBase,
  ACBrSocket, ACBrCEP;

type
  TdmCliente = class(TDataModule)
    sqlCliente: TZQuery;
    sqlClienteid: TIntegerField;
    sqlClientenome: TWideStringField;
    sqlClientesexo: TWideStringField;
    sqlClienteendereco: TWideStringField;
    sqlClientenum_end: TWideStringField;
    sqlClientedata_nascimento: TDateField;
    dsClientes: TDataSource;
    ACBrCEP: TACBrCEP;
    ACBrConsultaCNPJ: TACBrConsultaCNPJ;
    ACBrValidador: TACBrValidador;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCliente: TdmCliente;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses udmPrincipal;

{$R *.dfm}

end.
