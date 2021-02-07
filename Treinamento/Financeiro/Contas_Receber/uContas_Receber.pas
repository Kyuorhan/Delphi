unit uContas_Receber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, DateUtils,
  JvExMask, JvToolEdit,
  JvBaseEdits, JvExControls, JvEmbeddedForms, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.ActnList, Vcl.Buttons, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvExComCtrls, JvComCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, ZSqlUpdate,
  Vcl.DBLookup, frameLocalizar_Cliente;

type
  TfrmContas_Receber = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    JvPanel1: TJvPanel;
    tbPesquisar: TJvPageControl;
    tbsPesquisar: TTabSheet;
    ActionList1: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    actQuitar: TAction;
    actEstornar: TAction;
    btnQuitar: TSpeedButton;
    btnEstornar: TSpeedButton;
    sqlTipos_Documentos: TZQuery;
    sqlTipos_Documentosid: TIntegerField;
    sqlTipos_Documentosdocumento: TWideStringField;
    dsTipos_Documentos: TDataSource;
    dbgReceber: TDBGrid;
    sqlContas_Receber: TZQuery;
    updReceber: TZUpdateSQL;
    sqlContas_Receberid: TIntegerField;
    sqlContas_Receberid_cliente: TIntegerField;
    sqlContas_Receberid_documento: TIntegerField;
    sqlContas_Receberdescricao: TWideStringField;
    sqlContas_Receberdata_documento: TDateField;
    sqlContas_Receberdata_vencimento: TDateField;
    sqlContas_Recebervalor: TFloatField;
    sqlContas_Receberdesconto: TFloatField;
    sqlContas_Receberpago: TWideStringField;
    sqlContas_Receberdata_cadastro: TDateField;
    sqlContas_Receberobs_quitacao: TWideStringField;
    sqlContas_Receberid_pedidos: TIntegerField;
    sqlContas_Recebernum_parcela: TWideStringField;
    sqlContas_Recebernome: TWideStringField;
    sqlContas_Receberdocumento: TWideStringField;
    sqlContas_Recebervencimento: TDateField;
    dsContas_receber: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    edtVenc1: TJvDateEdit;
    edtVenc2: TJvDateEdit;
    edtTipo_documento: TDBLookupComboBox;
    frameLocalizaCliente1: TframeLocalizaCliente;
    procedure Timer1Timer(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure ListaReceber;
    procedure FormShow(Sender: TObject);
    procedure actQuitarExecute(Sender: TObject);
    procedure actEstornarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgReceberDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtClientesChange(Sender: TObject);
    procedure edtTipo_DocumentoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frameLocalizaCliente1edtClientesChange(Sender: TObject);
  private
    { Private declarations }
    TextoPesq: String;
  public

    { Public declarations }
  end;

var
  frmContas_Receber: TfrmContas_Receber;

implementation

{$R *.dfm}

uses My_Layout, uFuncoes, uCadastro_Receber;


procedure TfrmContas_Receber.actNovoExecute(Sender: TObject);
begin
    frmCadastro_Receber := TfrmCadastro_Receber.Create(Self);
    frmCadastro_Receber.Panel1.Enabled := True;
    frmCadastro_Receber.Panel2.Enabled := False;

    if frmCadastro_Receber.ShowModal = mrOk then
    begin
      sqlContas_Receber.Append;
      sqlContas_ReceberID_Cliente.AsString      := frmCadastro_Receber.edtID_Cliente.Text;
      sqlContas_ReceberID_Documento.AsString    := frmCadastro_Receber.edtTipo_Documento.KeyValue;
      sqlContas_ReceberDescricao.AsString       := frmCadastro_Receber.edtDescricao.Text;
      sqlContas_ReceberValor.Value              := frmCadastro_Receber.edtValor.Value;
      sqlContas_ReceberData_Vencimento.Value    := frmCadastro_Receber.edtData_Vencimento.Date;
      sqlContas_ReceberData_Documento.Value     := frmCadastro_Receber.edtData_Documento.Date;

      sqlContas_ReceberData_Cadastro.Value      := Date;
      sqlContas_Receber.Post;
      sqlContas_Receber.ApplyUpdates;
    end
end;

procedure TfrmContas_Receber.actQuitarExecute(Sender: TObject);
begin
  if sqlContas_Receberpago.AsString = 'S' then
  begin
    ShowMessage('O documento j� est� pago.');
    Exit;
  end;

  frmCadastro_Receber := TfrmCadastro_Receber.Create(Self);
  frmCadastro_Receber.edtValor.Value            := sqlContas_ReceberValor.Value;
  frmCadastro_Receber.edtData_Vencimento.Date   := sqlContas_ReceberData_Vencimento.Value;
  frmCadastro_Receber.edtData_Documento.Date    := sqlContas_ReceberData_Documento.Value;

  frmCadastro_Receber.Panel1.Enabled := False;
  frmCadastro_Receber.Panel2.Enabled := True;

  if frmCadastro_Receber.ShowModal = mrOk then
  begin
    if frmCadastro_Receber.edtValor_Pago.Value > 0 then
    begin

      sqlContas_Receber.Edit;
      sqlContas_ReceberDesconto.Value         := frmCadastro_Receber.edtDesconto.Value;
      sqlContas_ReceberData_Cadastro.Value    := frmCadastro_Receber.edtData_Pagamento.Date;
      sqlContas_Receberpago.AsString          := 'S';
      sqlContas_Receber.Post;
      sqlContas_Receber.ApplyUpdates;

    end;
  end;
end;

procedure TfrmContas_Receber.actEditarExecute(Sender: TObject);
var
  Qry: TZQuery;
begin

  frmCadastro_Receber := TfrmCadastro_Receber.Create(Self);
  frmCadastro_Receber.edtID_Cliente.Text            := sqlContas_Receberid_cliente.AsString;
  frmCadastro_Receber.edtDescricao.Text             := sqlContas_Receberdescricao.AsString;
  frmCadastro_Receber.edtValor.Value                := sqlContas_Recebervalor.Value;
  frmCadastro_Receber.edtData_Documento.Date        := sqlContas_Receberdata_documento.Value;
  frmCadastro_Receber.edtData_Vencimento.Date       := sqlContas_Receberdata_vencimento.Value;

  frmCadastro_Receber.edtTipo_Documento.KeyValue    := sqlContas_ReceberID_Documento.Value;

  frmCadastro_Receber.Panel1.Enabled := True;
  frmCadastro_Receber.Panel2.Enabled := False;

  if frmCadastro_Receber.ShowModal = mrOk then
  begin

    sqlContas_Receber.Edit;
    sqlContas_ReceberID_Cliente.AsString      := frmCadastro_Receber.edtID_Cliente.Text;
    sqlContas_ReceberDescricao.AsString       := frmCadastro_Receber.edtDescricao.Text;
    sqlContas_ReceberValor.Value              := frmCadastro_Receber.edtValor.Value;
    sqlContas_ReceberData_Documento.Value     := frmCadastro_Receber.edtData_Documento.Date;
    sqlContas_ReceberData_Vencimento.Value    := frmCadastro_Receber.edtData_Vencimento.Date;
    sqlContas_ReceberID_Documento.Value       := frmCadastro_Receber.edtTipo_Documento.KeyValue;
    sqlContas_Receber.Post;
    sqlContas_Receber.ApplyUpdates;

  end;
end;

procedure TfrmContas_Receber.actEstornarExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente "Estornar" o registro?',
    'Estorna/Registro', MB_YESNO) = mrYes then
  begin
    try

      sqlContas_Receber.Edit;
      sqlContas_ReceberDesconto.Clear;
      sqlContas_ReceberData_Cadastro.Clear;
      sqlContas_ReceberPago.AsString := 'N';
      sqlContas_Receber.ApplyUpdates;
      sqlContas_Receber.Refresh;
      MostraMensagem('Registro estornado com "Sucesso!"');

    except
      on E: Exception do
        raise Exception.Create('Error ao "Estornar" o registro');
    end;
  end;
end;

procedure TfrmContas_Receber.actExcluirExecute(Sender: TObject);
var
  Pago: String;
begin
  Pago := sqlContas_Receberpago.AsString;
  if (Pago = 'N') then
  begin
    if Application.MessageBox('Deseja realmente "Excluir" o registro?',
      'Excluir/Registro', MB_YESNO) = mrYes then
    begin
      try

        sqlContas_Receber.Delete;
        sqlContas_Receber.ApplyUpdates;

        MostraMensagem('Registro excluido com "Sucesso!"');

      except
        on E: Exception do
          raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
      end;
    end;
  end
  else
    MostraAviso
      ('Este cliente possui registros em contas a Receber e n�o pode ser exclu�do.');
end;

procedure TfrmContas_Receber.btnSalvarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmContas_Receber.dbgReceberDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if sqlContas_Receberpago.AsString = 'S' then
    dbgReceber.Canvas.Font.Color := $00FF5BA5
  else
  begin
    if sqlContas_Receberdata_vencimento.Value < Date then
      dbgReceber.Canvas.Font.Color := $0055559B;

      if not odd(dbgReceber.DataSource.DataSet.RecNo) then // se for �mpar
      begin
        if not(gdSelected in State) then
        begin // se a c�lula n�o est� selecionada
          dbgReceber.Canvas.Brush.Color := cl3DLight;
          dbgReceber.Canvas.FillRect(Rect); // pinta a c�lula
        end;
      end;
  end;
  dbgReceber.DefaultDrawDataCell(Rect, dbgReceber.columns[DataCol]
    .field, State);
end;

procedure TfrmContas_Receber.edtClientesChange(Sender: TObject);
begin
  ListaReceber;
end;

procedure TfrmContas_Receber.edtTipo_DocumentoClick(Sender: TObject);
begin
  ListaReceber;
end;

procedure TfrmContas_Receber.FormCreate(Sender: TObject);
begin
  TextoPesq := sqlContas_Receber.SQL.Text;
end;

procedure TfrmContas_Receber.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfrmContas_Receber.FormShow(Sender: TObject);
begin
  sqlTipos_Documentos.SQL.Text := 'SELECT * FROM tipos_documentos '
    + 'ORDER BY documento';
  sqlTipos_Documentos.Open;
  ListaReceber;
end;

procedure TfrmContas_Receber.frameLocalizaCliente1edtClientesChange(
  Sender: TObject);
begin
ListaReceber;
end;

procedure TfrmContas_Receber.ListaReceber;
var
  Texto: String;
begin

    Texto := TextoPesq + ' WHERE r.id > 0';

    if frameLocalizaCliente1.edtClientes.Text <> '' then
      Texto := Texto + ' AND c.nome LIKE ' + QuotedStr(frameLocalizaCliente1.edtClientes.Text+'%');

    if StrToDateDef(edtVenc1.Text, 0) > 0 then
      Texto := Texto + ' AND r.data_vencimento >= '
        + QuotedStr(FormatDateTime('yyyy-mm-dd', edtVenc1.Date));

    if StrToDateDef(edtVenc2.Text, 0) > 0 then
      Texto := Texto + ' AND r.data_vencimento <= '
        + QuotedStr(FormatDateTime('yyyy-mm-dd', edtVenc2.Date));

    if edtTipo_documento.Text <> '' then
      Texto := Texto + ' AND r.id_documento = '
        + IntToStr(edtTipo_documento.KeyValue);

    Texto := Texto + ' ORDER BY r.data_vencimento';

    sqlContas_Receber.sql.Text := Texto;
    sqlContas_Receber.Open;
end;

procedure TfrmContas_Receber.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
