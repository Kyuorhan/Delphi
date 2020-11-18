unit uPessoa;

interface

type TPessoa =  class

  private
    Fcodigo : Integer;
    Fnome : String;
    Fidade : Integer;
  protected

  Public
    constructor Create;
    destructor Destroy; override;
    function SaberIdade(qntsAnos : Integer): Integer;

    property codigo : Integer read Fcodigo Write Fcodigo;
    property nome : String read Fnome Write Fnome;
    property idade : Integer read Fidade Write Fidade;

end;

implementation
uses Vcl.Dialogs;
{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin
  inherited;
end;

function TPessoa.SaberIdade(qntsAnos: Integer): Integer;
begin
  Result := Fidade + qntsAnos;
end;

end.
