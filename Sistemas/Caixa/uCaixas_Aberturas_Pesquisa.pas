unit uCaixas_Aberturas_Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.DBCtrls, ZDataSet,
  Vcl.ComCtrls;

type
  TfCaixas_Aberturas_Pesquisa = class(TForm)
    Panel1: TPanel;
    btnReabrir: TSpeedButton;
    btnFechar: TSpeedButton;
    btnAbrir: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edtPeriodo1: TJvDateEdit;
    edtPeriodo2: TJvDateEdit;
    Label2: TLabel;
    edtCaixa: TDBLookupComboBox;
    procedure btnAbrirClick(Sender: TObject);
    procedure btnReabrirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edtPesqChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCaixaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure FiltrarPesq;
  public
    { Public declarations }
    SqlText_CaixaAbert, SqlText_CaixaMoviment : String;
  end;

var
  fCaixas_Aberturas_Pesquisa: TfCaixas_Aberturas_Pesquisa;

implementation

{$R *.dfm}

uses udmCaixa, uCaixas_Aberturas_Cadastro, uFuncoes_Gerais,
  udmPrincipal;

procedure TfCaixas_Aberturas_Pesquisa.btnAbrirClick(Sender: TObject);
var
  Situacao : String;
begin
  fCaixas_Aberturas_Cadastro := TfCaixas_Aberturas_Cadastro.Create(Self);

  dmCaixa.sqlCaixas_Aberturas.Append;
  dmCaixa.sqlCaixas_AberturasSituacao.AsString := 'A';
  dmCaixa.sqlCaixas_AberturasData.Value        := Date;

  if fCaixas_Aberturas_Cadastro.ShowModal = mrOk then   //  Abrir a tela
  begin

    ZAtualiza(dmCaixa.sqlCaixas_Aberturas);
    dmCaixa.sqlCaixas_Aberturas.SortedFields := 'data';
    dmCaixa.sqlCaixas_Aberturas.Refresh;
  end
  else
    dmCaixa.sqlCaixas_Aberturas.Cancel;

  FreeAndNil(fCaixas_Aberturas_Cadastro);
end;

procedure TfCaixas_Aberturas_Pesquisa.btnFecharClick(Sender: TObject);
begin
  fCaixas_Aberturas_Cadastro := TfCaixas_Aberturas_Cadastro.Create(Self);
  fCaixas_Aberturas_Cadastro.OperacaoCaixa := ocFechamento;
  dmCaixa.sqlCaixas_Aberturas.Edit;
  dmPrincipal.qTemp.sql.text := 'SELECT '+
    'SUM(CASE tipo WHEN ''E'' THEN valor ELSE 0 END) AS entradas, '+
    'SUM(CASE tipo WHEN ''S'' THEN valor ELSE 0 END) AS saidas '+
    'FROM caixas_movimentos '+
    'WHERE caixas_aberturas_id =  '+ dmCaixa.sqlCaixas_AberturasID.AsString;
  dmPrincipal.qTemp.Open;
  dmCaixa.sqlCaixas_AberturasEntradas.Value := dmPrincipal.qTemp.Fields[0].AsCurrency;
  dmCaixa.sqlCaixas_AberturasSaidas.Value   := dmPrincipal.qTemp.Fields[1].AsCurrency;
  dmCaixa.sqlCaixas_AberturasSaldo.Value    := dmCaixa.sqlCaixas_AberturasTroco.Value +
  dmCaixa.sqlCaixas_AberturasEntradas.Value - dmCaixa.sqlCaixas_AberturasSaidas.Value;

  dmCaixa.sqlCaixas_AberturasData.Value := fCaixas_Aberturas_Cadastro.edtData.Date;
  dmCaixa.sqlCaixas_AberturasData_Hora_Fecham.Value := Now;
  dmCaixa.sqlCaixas_AberturasSituacao.AsString := 'F';

  fCaixas_Aberturas_Cadastro.Panel1.Enabled := False;

  if fCaixas_Aberturas_Cadastro.ShowModal = mrOk then
  begin
    ZAtualiza(dmCaixa.sqlCaixas_Aberturas);
    dmCaixa.sqlCaixas_Aberturas.SortedFields := 'situacao';
    dmCaixa.sqlCaixas_Aberturas.Refresh;
  end
  else
    dmCaixa.sqlCaixas_Aberturas.Cancel;

  FreeAndNil(fCaixas_Aberturas_Cadastro);
end;

procedure TfCaixas_Aberturas_Pesquisa.btnReabrirClick(Sender: TObject);
begin
  dmCaixa.sqlCaixas_Aberturas.Edit;
  dmCaixa.sqlCaixas_AberturasSituacao.AsString := 'R';

  fCaixas_Aberturas_Cadastro := TfCaixas_Aberturas_Cadastro.Create(Self);
  if fCaixas_Aberturas_Cadastro.ShowModal = mrOk then
  begin

    ZAtualiza(dmCaixa.sqlCaixas_Aberturas);
    dmCaixa.sqlCaixas_Aberturas.SortedFields := 'situacao';
    dmCaixa.sqlCaixas_Aberturas.Refresh;
  end
  else
    dmCaixa.sqlCaixas_Aberturas.Cancel;

  FreeAndNil(fCaixas_Aberturas_Cadastro);
end;

procedure TfCaixas_Aberturas_Pesquisa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if dmCaixa.sqlCaixas_AberturasSaldo.Value > 0 then
    DBGrid1.Canvas.Font.Color := $009A9A4E
  else
  begin
  if dmCaixa.sqlCaixas_AberturasSaldo.Value < 0 then
    DBGrid1.Canvas.Font.Color := $0055559B;
  end;

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

procedure TfCaixas_Aberturas_Pesquisa.edtPesqChange(Sender: TObject);
begin
  FiltrarPesq;
end;

procedure TfCaixas_Aberturas_Pesquisa.edtCaixaClick(Sender: TObject);
begin
  FiltrarPesq;
end;

procedure TfCaixas_Aberturas_Pesquisa.FiltrarPesq;
var
  Texto : String;
begin
  Texto := Texto + ' id > 0 ';

  if edtCaixa.KeyValue > 0 then
    Texto := Texto + ' AND id = ' + IntToStr(edtCaixa.KeyValue);

  if StrToDateDef(edtPeriodo1.Text, 0) > 0 then
    Texto := Texto + ' AND data >= '
      + QuotedStr(FormatDateTime('yyyy-mm-dd', edtPeriodo1.Date));

  if StrToDateDef(edtPeriodo2.Text, 0) > 0 then
    Texto := Texto + ' AND data <= '
      + QuotedStr(FormatDateTime('yyyy-mm-dd', edtPeriodo2.Date));

  dmCaixa.sqlCaixas_Aberturas.Filter := Texto;
  dmCaixa.sqlCaixas_Aberturas.Filtered := True;
end;

procedure TfCaixas_Aberturas_Pesquisa.FormCreate(Sender: TObject);
begin
  SqlText_CaixaAbert := dmCaixa.sqlCaixas_Aberturas.SQL.Text;
  SqlText_CaixaMoviment := dmCaixa.sqlCaixas_Movimentos.SQL.Text;
end;

procedure TfCaixas_Aberturas_Pesquisa.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfCaixas_Aberturas_Pesquisa.FormShow(Sender: TObject);
begin
  ListarSQL(dmCaixa.sqlCaixas, ' SELECT * FROM caixas ');
  ListarSQL(dmCaixa.sqlCaixas_Movimentos, SqlText_CaixaMoviment);
  ListarSQL(dmCaixa.sqlCaixas_Aberturas, SqlText_CaixaAbert);
  FiltrarPesq;

end;

end.
