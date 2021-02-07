unit uFuncoes_Caixa;

interface

uses
  ZDataset;

procedure ListaCaixasAbertos(AQuery: TZQuery);

implementation

procedure ListaCaixasAbertos(AQuery: TZQuery);
begin
  AQuery.Close;
  AQuery.SQL.Text := 'SELECT c.*, ca.id AS abertura_id '+
    'FROM caixas c'+
    'LEFT JOIN caixas_aberturas ca ON ca.caixas_id = c.id '+
    'WHERE c.situacao = ''A'' AND ca.situacao IN (''A'',''R'') '+
    'ORDER BY c.caixa';
  AQuery.Open;
end;

end.
