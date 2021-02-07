unit uFuncoes;

interface

uses Forms, Dialogs, SysUtils;

function ValidarCEP(ACEP: String): Boolean;
function ValidarEmail(AEmail: String): Boolean;
function ValidarUF(AUF: String): Boolean;
function ValidarCPF(ACPF: String): Boolean;
function ValidarIBGE(AIBGE: String): Boolean;
function SoNumeros(ATexto: String): String;
function Calculo_Troco(Saldo, Valor: Real): String;
function RemoverStrings(Texto :String):String;

procedure MostraMensagem(ATexto: String);
procedure MostraAviso(ATexto: String);
procedure MostraErro(ATexto: String);

implementation

uses
  Winapi.Windows, ACBrValidador, My_Layout, uCadastro_Clientes, Vcl.Controls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, uCadastro_Cidades,
  uConsulta_Cidades;

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

function ValidarUF(AUF: String): Boolean;
begin
  Result := False;

  if (AUF) <> '' then
  begin
    frmPrincipal.ACBrValidador.Documento := AUF;
    frmPrincipal.ACBrValidador.TipoDocto := docUF;
    Result := frmPrincipal.ACBrValidador.Validar;
  end;
  if not Result then
    MostraAviso('ESTADO(UF) - Invalido!');
end;

function ValidarCEP(ACEP: String): Boolean;
begin
  Result := False;

  if (ACEP) <> '' then
  begin
    frmPrincipal.ACBrValidador.Documento := ACEP;
    frmPrincipal.ACBrValidador.TipoDocto := docCEP;
    Result := frmPrincipal.ACBrValidador.Validar;
  end;
  if not Result then
    MostraAviso('CEP - Inv�lido!');
end;

function ValidarIBGE(AIBGE: String): Boolean;
var
  Qry: TZQuery;
  sNumeros: String;

begin
  sNumeros := SoNumeros(frmCadastro_Cidades.edtCod_IBGE.Text);
  Result := false;

    if sNumeros <> '' then
    begin
      Qry := TZQuery.Create(frmCadastro_Cidades);
      Qry.Connection := frmPrincipal.ZConnection1;
      Qry.SQL.Add('SELECT * FROM cidades WHERE cod_ibge = ' +
        QuotedStr(AIBGE));
      Qry.Open;
      if Qry.RecordCount <> 0 then
        MostraAviso('Cod IBGE j� Cadastrado!');
      Qry.Free;
      Exit;
    end;
    if not Result then
      MostraAviso('C�d. Munic�pio - Inv�lido');

end;

function ValidarEmail(AEmail: String): Boolean;
begin
  Result := False;

  if (AEmail) <> '' then
  begin
    frmPrincipal.ACBrValidador.Documento := AEmail;
    frmPrincipal.ACBrValidador.TipoDocto := docEmail;
    Result := frmPrincipal.ACBrValidador.Validar;
  end;
  if not Result then
    MostraAviso('EMAIL - Inv�lido');
end;

function ValidarCPF(ACPF: String): Boolean;
var
  sNumeros: String;
begin
  sNumeros := SoNumeros(frmCadastro_Cliente.edtCPF.Text);
  Result := False;
  if sNumeros <> '' then
  begin
    frmPrincipal.ACBrValidador.Documento := sNumeros;
    if Length(sNumeros) = 11 then
      frmPrincipal.ACBrValidador.TipoDocto := docCPF
    else
      frmPrincipal.ACBrValidador.TipoDocto := docCNPJ;
    Result := frmPrincipal.ACBrValidador.Validar;
  end;

  if not Result then
  begin
    MostraAviso('CPF/CNPJ - Inv�lido');
  end;
end;

function RemoverStrings(Texto :String):String;
var
I: integer;
S: string;
Virgula : Boolean;//Pra verificar se ja Possui virgula
begin
  S := '';
  Virgula:=False;

  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) or ((Texto[I] in [',']) and (Virgula<>True)) then
    begin
      if (Texto[I] in [',']) then Virgula:=True;
        S := S + Copy(Texto, I, 1);
      end;
  end;

result := S;
end;

function ValidarInscEst(AIE: String): Boolean;
begin
  Result := False;

  if (AIE) <> '' then
  begin
    frmPrincipal.ACBrValidador.Documento := AIE;
    frmPrincipal.ACBrValidador.TipoDocto := docInscEst;
    Result := frmPrincipal.ACBrValidador.Validar;
  end;
  if not Result then
    MostraAviso('"INSC. ESTADUAL - Inv�lido');
end;

function SoNumeros(ATexto: String): String;
var
  x: Integer;
  y: String;
begin
  x := 0;
  y := '';
  for x := 1 to Length(ATexto) do
  begin
    if (ATexto[x] IN ['0' .. '9']) then
      y := y + Copy(ATexto, x, 1);
  end;
  Result := y;
end;

function Calculo_Troco(Saldo, Valor: Real): String;
const
  Nota: array [1 .. 7] of Integer = (100, 50, 20, 10, 5, 2, 1);
  Money: array [1 .. 5] of Integer = (50, 25, 10, 5, 1);

var
  Troco: Real;
  i, vlr, mon: Integer;
  s: String;
begin
  if (Saldo < Valor) then
    Calculo_Troco := 'Pagamento "Insuficiente, faltam R$ "' +
      FloatToStr(Saldo - Valor)
  else
  begin
    Troco := Valor - Saldo;
    s := 'Troco = R$ ' + FloatToStr(Troco);
    s := s + #13#10 + #13#10;
    // Definindo as notas do troco (Parte inteira)
    vlr := Trunc(Troco);
    i := 1;
    while (vlr <> 0) do
    begin
      mon := vlr div Nota[i]; // Calculando a qtds de notas
      if (mon <> 0) then
      begin
        s := s + IntToStr(mon) + ' Nota(s) de R$ ' + IntToStr(Nota[i]) + #13#10;
        vlr := vlr mod Nota[i]; // Sobra
      end;
      i := i + 1; // Pr�xima Nota
    end;
    s := s + #13#10;
    // Definindo as notas do troco (Parte fracion�rio)
    vlr := round(Frac(Troco) * 100);
    i := 1;
    while (vlr <> 0) do
    begin
      mon := vlr div Money[i]; // Calculando a qtds de notas
      if (mon <> 0) then
      begin
        s := s + IntToStr(mon) + ' Moeda(s) de ' + IntToStr(Money[i]) +
          ' centavo(s) ' + #13#10;
        vlr := vlr mod Money[i]; // Sobra
      end;
      i := i + 1; // Pr�xima moeda
    end;

    Calculo_Troco := s;
  end;
end;



end.