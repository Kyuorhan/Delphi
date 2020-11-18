unit uOpenCloses_Caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ImgList,
  JvExControls, JvEmbeddedForms, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.StdCtrls, JvExComCtrls, JvComCtrls, Vcl.Buttons, Vcl.ActnList, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, JvExExtCtrls, JvExtComponent, JvPanel, DateUtils,
  Vcl.DBCtrls;

type
  TfrmOpenCloses_Caixa = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    btnNovo: TSpeedButton;
    ActionList1: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    actSalvar: TAction;
    actCancelar: TAction;
    ActionList2: TActionList;
    actGerarBoleto: TAction;
    JvPanel1: TJvPanel;
    tbPesquisar: TJvPageControl;
    tbsPesquisar: TTabSheet;
    sqlCaixa: TZQuery;
    dsCaixa: TDataSource;
    JvDBGrid2: TJvDBGrid;
    edtTroco: TDBEdit;
    btnGerar_Boleto: TSpeedButton;
    Tipo: TDBRadioGroup;
    edtValor: TDBEdit;
    edtSaldo: TDBEdit;
    lbSaldo: TLabel;
    lbValor: TLabel;
    lbStatus_User: TLabel;
    lbTipo_Plano: TLabel;
    lbDesc: TLabel;
    lbNome: TLabel;
    dbedtNome: TDBEdit;
    dbedtDesc: TDBEdit;
    dbedtTipo_Contas: TDBEdit;
    DBEdit1: TDBEdit;
    edtData1: TJvDateEdit;
    edtData2: TJvDateEdit;
    edtNome: TEdit;
    lbTroco: TLabel;
    Label1: TLabel;
    sqlCaixaid: TIntegerField;
    sqlCaixanome: TWideStringField;
    sqlCaixadescricao: TWideStringField;
    sqlCaixatipo_contas: TWideStringField;
    sqlCaixatipo_pagamento: TWideStringField;
    sqlCaixavalor: TFloatField;
    sqlCaixadata: TDateField;
    sqlCaixasaldo: TFloatField;
    sqlCaixatroco: TFloatField;
    sqlCaixaprev_fechamento: TDateField;
    sqlCaixaopen_date: TDateField;
    sqlCaixaclose_date: TDateField;
    sqlCaixastatus_usuario: TWideStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actGerarBoletoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListaDadosCaixa;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure edtTrocoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpenCloses_Caixa: TfrmOpenCloses_Caixa;

implementation

{$R *.dfm}

uses My_Layout, uFuncoes, uCadastro_OpenCloses;

procedure TfrmOpenCloses_Caixa.actCancelarExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmOpenCloses_Caixa.actEditarExecute(Sender: TObject);
begin
  frmCadastro_OpenCloses := TfrmCadastro_OpenCloses.Create(Self);
  frmCadastro_OpenCloses.edtNome.text := sqlCaixanome.AsString;
  frmCadastro_OpenCloses.edtDesc.text := sqlCaixadescricao.AsString;
  frmCadastro_OpenCloses.edtTipo_Contas.text := sqlCaixatipo_contas.AsString;
  frmCadastro_OpenCloses.edtTipo_Pagamento.text :=
    sqlCaixatipo_pagamento.AsString;
  frmCadastro_OpenCloses.jvcValor.Value := sqlCaixavalor.Value;
  frmCadastro_OpenCloses.jvdData.Date := sqlCaixadata.Value;
  frmCadastro_OpenCloses.jvcValor.Value := sqlCaixasaldo.Value;
  frmCadastro_OpenCloses.jvcValor.Value := sqlCaixatroco.Value;
  frmCadastro_OpenCloses.jvdPrev_Fechamento.Date := sqlCaixadata.Value;
  frmCadastro_OpenCloses.jvdOpen_Date.Date := sqlCaixaopen_date.Value;
  frmCadastro_OpenCloses.jvdClose_Date.Date := sqlCaixaclose_date.Value;
  frmCadastro_OpenCloses.edtStatus_User.text := sqlCaixastatus_usuario.Value;

  if frmCadastro_OpenCloses.ShowModal = mrOk then
  begin
    sqlCaixa.Edit;
    sqlCaixanome.AsString := frmCadastro_OpenCloses.edtNome.text;
    sqlCaixadescricao.AsString := frmCadastro_OpenCloses.edtDesc.text;
    sqlCaixatipo_contas.AsString := frmCadastro_OpenCloses.edtTipo_Contas.text;
    sqlCaixatipo_pagamento.AsString :=
      frmCadastro_OpenCloses.edtTipo_Pagamento.text;
    sqlCaixavalor.Value := frmCadastro_OpenCloses.jvcValor.Value;
    sqlCaixadata.Value := frmCadastro_OpenCloses.jvdData.Date;
    sqlCaixasaldo.Value := frmCadastro_OpenCloses.jvcValor.Value;
    sqlCaixatroco.Value := frmCadastro_OpenCloses.jvcValor.Value;
    sqlCaixaprev_fechamento.Value :=
      frmCadastro_OpenCloses.jvdPrev_Fechamento.Date;
    sqlCaixaopen_date.Value := frmCadastro_OpenCloses.jvdOpen_Date.Date;
    sqlCaixaclose_date.Value := frmCadastro_OpenCloses.jvdClose_Date.Date;
    sqlCaixastatus_usuario.Value := frmCadastro_OpenCloses.edtStatus_User.text;
    sqlCaixa.Post;
    sqlCaixa.ApplyUpdates;
  end;

end;

procedure TfrmOpenCloses_Caixa.actExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente "Excluir" o registro?',
    'Abertura/Fechamento do Caixa', MB_YESNO) = mrYes then
  begin
    try
      {
        TClientDataSet(dsClientes.DataSet).Delete;
        TClientDataSet(dsClientes.DataSet).ApplyUpdates(0);
        Application.MessageBox('Registro excluido com "Sucesso!"','Cadastro de Cliente', MB_OK)
      }
      sqlCaixa.Delete;
      sqlCaixa.ApplyUpdates;
      MostraMensagem('Registro excluido com "Sucesso!"');

    except
      on E: Exception do
        raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
    end;
  end;
end;

procedure TfrmOpenCloses_Caixa.actGerarBoletoExecute(Sender: TObject);
begin
  //
end;

procedure TfrmOpenCloses_Caixa.actNovoExecute(Sender: TObject);
begin
  frmCadastro_OpenCloses := TfrmCadastro_OpenCloses.Create(Self);
  if frmCadastro_OpenCloses.ShowModal = mrOk then
  begin
    sqlCaixa.Append;
    frmCadastro_OpenCloses.edtNome.text := sqlCaixanome.AsString;
    sqlCaixadescricao.AsString          := frmCadastro_OpenCloses.edtDesc.text;
    sqlCaixatipo_contas.AsString        := frmCadastro_OpenCloses.edtTipo_Contas.text;
    sqlCaixatipo_pagamento.AsString     := frmCadastro_OpenCloses.edtTipo_Pagamento.text;
    sqlCaixavalor.Value                 := frmCadastro_OpenCloses.jvcValor.Value;
    sqlCaixadata.Value                  := frmCadastro_OpenCloses.jvdData.Date;
    sqlCaixasaldo.Value                 := frmCadastro_OpenCloses.jvcValor.Value;
    sqlCaixatroco.Value                 := frmCadastro_OpenCloses.jvcValor.Value;
    sqlCaixaprev_fechamento.Value       := frmCadastro_OpenCloses.jvdPrev_Fechamento.Date;
    sqlCaixaopen_date.Value             := frmCadastro_OpenCloses.jvdOpen_Date.Date;
    sqlCaixaclose_date.Value            := frmCadastro_OpenCloses.jvdClose_Date.Date;
    sqlCaixastatus_usuario.Value        := frmCadastro_OpenCloses.edtStatus_User.text;
    sqlCaixa.ApplyUpdates;
  end;
end;

procedure TfrmOpenCloses_Caixa.actSalvarExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmOpenCloses_Caixa.btnCancelarClick(Sender: TObject);
begin
  //
end;

procedure TfrmOpenCloses_Caixa.btnEditarClick(Sender: TObject);
begin
  //
end;

procedure TfrmOpenCloses_Caixa.btnExcluirClick(Sender: TObject);
begin
  //
end;

procedure TfrmOpenCloses_Caixa.btnNovoClick(Sender: TObject);
begin
  //
end;

procedure TfrmOpenCloses_Caixa.btnSalvarClick(Sender: TObject);
begin
  if Trim(edtNome.text) = '' then
  begin
    MostraAviso('Preenche o nome');
    edtNome.SetFocus;
    Abort;
  end;

  if StrToFloat(edtValor.text) <= 0 then
  begin
    MostraAviso('Digite um valor novamente');
    edtValor.SetFocus;
    Abort;
  end;
end;

procedure TfrmOpenCloses_Caixa.edtNomeChange(Sender: TObject);
begin
  sqlCaixa.SQL.text := 'SELECT * FROM  caixa ' + 'WHERE nome LIKE "' +
    edtNome.text + '%" ORDER BY nome';
  sqlCaixa.Open;
end;

procedure TfrmOpenCloses_Caixa.edtTrocoChange(Sender: TObject);
begin
  //
end;

procedure TfrmOpenCloses_Caixa.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmOpenCloses_Caixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;
end;

procedure TfrmOpenCloses_Caixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
end;

procedure TfrmOpenCloses_Caixa.FormShow(Sender: TObject);
begin
  edtData1.Date := StartOftheMonth(Date);
  edtData2.Date := Date;
  ListaDadosCaixa;
end;

procedure TfrmOpenCloses_Caixa.ListaDadosCaixa;
begin
  sqlCaixa.Close;
  sqlCaixa.SQL.text := 'SELECT * FROM caixa WHERE data BETWEEN ' +
    QuotedStr(FOrmatDateTime('yyyy-mm-dd', edtData1.Date)) + ' AND ' +
    QuotedStr(FOrmatDateTime('yyyy-mm-dd', edtData2.Date)) + ' ORDER BY data';
  sqlCaixa.Open;
end;

procedure TfrmOpenCloses_Caixa.SpeedButton1Click(Sender: TObject);
begin
  //
end;

procedure TfrmOpenCloses_Caixa.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].text := DateTimeToStr(now);
end;

end.
