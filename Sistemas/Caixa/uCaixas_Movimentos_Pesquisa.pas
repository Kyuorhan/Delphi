unit uCaixas_Movimentos_Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  JvBaseEdits, frxClass, frxDBSet;

type
  TfCaixas_Movimentos_Pesquisa = class(TForm)
    Panel2: TPanel;
    lbPesq: TLabel;
    lbPeriodo: TLabel;
    edtPeriodo1: TJvDateEdit;
    edtPeriodo2: TJvDateEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnAlterar: TSpeedButton;
    btnNovo: TSpeedButton;
    btnExcluir: TSpeedButton;
    Panel3: TPanel;
    lbEntrada: TLabel;
    lbSaida: TLabel;
    lbTotal_Caixa: TLabel;
    edtTotal: TJvCalcEdit;
    edtSaida: TJvCalcEdit;
    edtEntrada: TJvCalcEdit;
    cInativos: TCheckBox;
    edtPesq: TEdit;
    edtSaldo: TJvCalcEdit;
    lbSaldo: TLabel;
    btnImprimir: TSpeedButton;
    frxDBCaixa_Moviment: TfrxDBDataset;
    frxCaixa_Moviment: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure cInativosClick(Sender: TObject);
    procedure edtPesqChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImprimirClick(Sender: TObject);
  private
    procedure FiltrarMovntCaixa;
    procedure CalcularTotal;
    procedure CalcularSaldo;
    { Private declarations }
  public
    { Public declarations }
    SqlText_CaixaMoviment, SqlText_Caixa, SqlText_CaixaAbert : String;
  end;

var
  fCaixas_Movimentos_Pesquisa: TfCaixas_Movimentos_Pesquisa;

implementation

{$R *.dfm}

uses udmCaixa, uFuncoes_Gerais, uCaixas_Movimentos_Cadastro, ZDataSet,
  udmPrincipal;

procedure TfCaixas_Movimentos_Pesquisa.FormCreate(Sender: TObject);
begin
  SqlText_CaixaMoviment := dmCaixa.sqlCaixas_Movimentos.SQL.Text;
  SqlText_Caixa := dmCaixa.sqlCaixas.SQL.Text;
  SqlText_CaixaAbert := dmCaixa.sqlCaixas_Aberturas.SQL.Text;
end;

procedure TfCaixas_Movimentos_Pesquisa.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfCaixas_Movimentos_Pesquisa.FormShow(Sender: TObject);
begin
  ListarSQL(dmCaixa.sqlNatureza, 'SELECT * FROM natureza');
  ListarSQL(dmCaixa.sqlCaixas_Aberturas, SqlText_CaixaAbert );
  ListarSQL(dmCaixa.sqlCaixas, SqlText_Caixa);
  ListarSQL(dmCaixa.sqlCaixas_Movimentos, SqlText_CaixaMoviment);

  FiltrarMovntCaixa;
  CalcularSaldo;
  CalcularTotal;
end;

procedure TfCaixas_Movimentos_Pesquisa.btnAlterarClick(Sender: TObject);
begin
  fCaixas_Movimentos_Cadastro := TfCaixas_Movimentos_Cadastro.Create(Self);
  if TComponent(Sender).Name = 'btnAlterar' then
  begin
    fCaixas_Movimentos_Cadastro.edtHistorico.Text
                  := dmCaixa.sqlCaixas_MovimentosHistorico.AsString;
    fCaixas_Movimentos_Cadastro.edtPlano_Contas.Text
                  := dmCaixa.sqlPlano_contasplano_contas.AsString;
    fCaixas_Movimentos_Cadastro.edtCaixa_Abert.KeyValue
                  := dmCaixa.sqlCaixas_MovimentosCaixas_Aberturas_ID.Value;
    fCaixas_Movimentos_Cadastro.edtPlano_Contas.Text
                  := dmCaixa.sqlCaixas_MovimentosPlano_Contas.AsString;

    dmCaixa.sqlCaixas_Movimentos.Edit;
  end;
  if fCaixas_Movimentos_Cadastro.ShowModal = mrOK then
  begin
    dmCaixa.sqlCaixas_MovimentosCaixa.AsString := fCaixas_Movimentos_Cadastro.edtCaixa_Abert.Text;
    dmCaixa.sqlCaixas_MovimentosValor.Value         := fCaixas_Movimentos_Cadastro.edtValor.Value;
    dmCaixa.sqlCaixas_MovimentosHistorico.AsString  := fCaixas_Movimentos_Cadastro.edtHistorico.Text;
    dmCaixa.sqlCaixas_MovimentosData.Value          := fCaixas_Movimentos_Cadastro.edtData.Date;

    ZAtualiza(dmCaixa.sqlCaixas_Movimentos);
    dmCaixa.sqlCaixas_Movimentos.Refresh;
    dmCaixa.sqlCaixas_Movimentos.SortedFields := 'caixa';
  end
  else
    dmCaixa.sqlCaixas.Cancel;

  dmCaixa.sqlCaixas.Refresh;
  FreeandNil(fCaixas_Movimentos_Cadastro);
  CalcularTotal;
  CalcularSaldo;
end;

procedure TfCaixas_Movimentos_Pesquisa.btnExcluirClick(Sender: TObject);
var
  Fechado : String;
begin
  Fechado := dmCaixa.sqlCaixas_MovimentosSituacao.AsString;

  if (Fechado = 'I') then
  begin
    MostraMensagem('Este caixa j� foi cancelado!')
  end;
  // - N�o permitir cancelar movimentos com o caixa fechado
  if not (Fechado = 'F') then
  begin
    // - Ao cancelar o movimento, apenas assinalar q foi cancelado, e somente
    // mostrar caso o usu�rio solicite
    if SimNao('Excluir', 'Deseja excluir o Movimento do Caixa '
      + dmCaixa.sqlCaixasCaixa.AsString + '?') then
    begin
      try
        dmCaixa.sqlCaixas_Movimentos.Edit;
        dmCaixa.sqlCaixas_MovimentosSituacao.AsString := 'I';

        ZAtualiza(dmCaixa.sqlCaixas_Movimentos);
        dmCaixa.sqlCaixas_Movimentos.Refresh;
        CalcularTotal;
        dmCaixa.sqlCaixas_Movimentos.SortedFields := 'caixa';
      except
        on E: Exception do
          raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
      end;
    end;
  end else
    MostraMensagem('Este caixa j� foi fechado no dia: '
      + dmCaixa.sqlCaixas_Aberturas.FieldByName('data_hora_fecham').AsString);
end;

procedure TfCaixas_Movimentos_Pesquisa.btnImprimirClick(Sender: TObject);
var
  path : String;
begin
  frxCaixa_Moviment.Clear;
  // usando o ParamStr(0) ele vai pegar a pasta onde ta o executavel, mesmo q mude de local
  path := ExtractFilePath(ParamStr(0))+ 'report_data\';
  frxCaixa_Moviment.LoadFromFile(path + 'RelCaixa_Moviment.fr3');
  frxCaixa_Moviment.ShowReport();

end;

procedure TfCaixas_Movimentos_Pesquisa.btnNovoClick(Sender: TObject);
begin
  fCaixas_Movimentos_Cadastro := TfCaixas_Movimentos_Cadastro.Create(Self);
  if TComponent(Sender).Name = 'btnNovo' then
  begin
    dmCaixa.sqlCaixas_Movimentos.Append;
    dmCaixa.sqlCaixas_MovimentosData.Value              := Date;
    dmCaixa.sqlCaixas_MovimentosData_Hora_Lancam.Value  := Now;
  end;

  if fCaixas_Movimentos_Cadastro.ShowModal = mrOK then
  begin

    dmCaixa.sqlCaixas_MovimentosHistorico.AsString := fCaixas_Movimentos_Cadastro.edtHistorico.Text;
    dmCaixa.sqlCaixas_MovimentosCaixa.AsString := fCaixas_Movimentos_Cadastro.edtCaixa_Abert.Text;

    ZAtualiza(dmCaixa.sqlCaixas_Movimentos);
    dmCaixa.sqlCaixas_Movimentos.Refresh;
    dmCaixa.sqlCaixas_Movimentos.SortedFields := 'caixa';
  end
  else
    dmCaixa.sqlCaixas.Cancel;

  dmCaixa.sqlCaixas.Refresh;
  FreeandNil(fCaixas_Movimentos_Cadastro);
  CalcularTotal;
  CalcularSaldo;
end;



procedure TfCaixas_Movimentos_Pesquisa.CalcularSaldo;
var
  Entrada, Saida : Currency;
  Qry : TZQuery;
begin
  Qry := TZQuery.Create(Self);
  Qry.Connection := dmPrincipal.DBase;
  Qry.SQL.Text := ' SELECT SUM(CASE tipo WHEN "E" THEN valor ELSE 0 END) AS entradas, '
    + ' SUM(CASE tipo WHEN "S" THEN valor ELSE 0 END) AS saidas ' + ' FROM caixas_movimentos '
    + ' WHERE caixas_aberturas_id > 0';
   // + QuotedStr(DBGrid1.DataSource.DataSet.FieldByName('caixas_id').AsString);
  Qry.Open;

  edtEntrada.Text := Qry.FieldByName('entradas').AsString;
  edtSaida.Text   := Qry.FieldByName('saidas').AsString;


end;

procedure TfCaixas_Movimentos_Pesquisa.CalcularTotal;
var
  Total : Currency;
begin
  Total := 0;

  dmCaixa.sqlCaixas_Movimentos.DisableControls;
  dmCaixa.sqlCaixas_Movimentos.First;
  try
    while not dmCaixa.sqlCaixas_Movimentos.Eof do
    begin
      Total := Total + dmCaixa.sqlCaixas_Movimentos.FieldByName('valor').Value;
      dmCaixa.sqlCaixas_Movimentos.Next;
    end;
  finally
    dmCaixa.sqlCaixas_Movimentos.EnableControls;

  edtTotal.Value := Total;
  end;

end;

procedure TfCaixas_Movimentos_Pesquisa.cInativosClick(Sender: TObject);
begin
  FiltrarMovntCaixa
end;

procedure TfCaixas_Movimentos_Pesquisa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if dmCaixa.sqlCaixas_MovimentosTipo.AsString = 'E' then
    DBGrid1.Canvas.Font.Color := $009A9A4E;

  if not odd(DBGrid1.DataSource.DataSet.RecNo) then // se for �mpar
  begin
    if not(gdSelected in State) then
    begin // se a c�lula n�o est� selecionada
      DBGrid1.Canvas.Brush.Color := cl3DLight;
      DBGrid1.Canvas.FillRect(Rect); // pinta a c�lula
    end;
  end;

  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);
end;

procedure TfCaixas_Movimentos_Pesquisa.edtPesqChange(Sender: TObject);
begin
  FiltrarMovntCaixa;
 // CalcularTotal;
  CalcularSaldo;
end;

procedure TfCaixas_Movimentos_Pesquisa.FiltrarMovntCaixa;
var
  Texto : String;
begin

  Texto := 'id > 0';
  if edtPesq.Text <> '' then
    Texto := Texto + ' AND caixa LIKE ' + QuotedStr(edtPesq.Text + '*');
  if (cInativos.Checked) then
    Texto := Texto + ' AND situacao = ''I'' ' ;

  if StrToDateDef(edtPeriodo1.Text, 0) > 0 then
    Texto := Texto + ' AND data >= '
      + QuotedStr(FormatDateTime('yyyy-mm-dd', edtPeriodo1.Date));

  if StrToDateDef(edtPeriodo2.Text, 0) > 0 then
    Texto := Texto + ' AND data <= '
      + QuotedStr(FormatDateTime('yyyy-mm-dd', edtPeriodo2.Date));

  dmCaixa.sqlCaixas_Movimentos.Filter := Texto;
  dmCaixa.sqlCaixas_Movimentos.Filtered := True;
  CalcularTotal;
end;

end.
