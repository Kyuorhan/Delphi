unit ClassPessoa;

interface

uses
  Classes, SysUtils;

type TPessoa = class

  private
    Fcodigo : Integer;
    Fnome : String;
    Fidade : Integer;

  protected


  public
    constructor Create;
    destructor Destroy; override;

    property codigo : Integer read Fcodigo Write Fcodigo;
    property nome : String read Fnome Write Fnome;
    property idade : Integer read Fidade write Fidade;

end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

end.
