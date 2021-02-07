unit uCadastro_Receber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ActnList, Vcl.ExtCtrls, Math,
  DateUtils,
  Vcl.ComCtrls, Vcl.Buttons, JvExExtCtrls, JvExtComponent, JvPanel, JvToolEdit,
  Vcl.Mask, JvExMask, JvBaseEdits, Vcl.StdCtrls, JvExComCtrls, JvComCtrls,
  Vcl.DBCtrls;

type
  TfrmCadastro_Receber = class(TForm)
    JvPanel2: TJvPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    StatusBar1: TStatusBar;
    JvPanel1: TJvPanel;
    Timer1: TTimer;
    ActionList1: TActionList;
    actSalvar: TAction;
    actCancel: TAction;
    tbPesquisar: TJvPageControl;
    tbsPesquisar: TTabSheet;
    Panel1: TPanel;
    edtNome: TEdit;
    edtData_Documento: TJvDateEdit;
    edtData_Vencimento: TJvDateEdit;
    lbData_Documento: TLabel;
    lbData_Vencimento: TLabel;
    lbNome: TLabel;
    lbValor: TLabel;
    lbTipo_Pagamento: TLabel;
    edtID_Cliente: TEdit;
    lbect1: TLabel;
    Panel2: TPanel;
    lbTroco_Restante: TLabel;
    lbValor_Pago: TLabel;
    lbDesconto: TLabel;
    lbData_Pagamento: TLabel;
    lbJuros: TLabel;
    lbDias_Atraso: TLabel;
    lbTotal_Pagar: TLabel;
    edtData_Pagamento: TJvDateEdit;
    edtTroco_Restante: TJvCalcEdit;
    edtValor_Pago: TJvCalcEdit;
    edtDesconto: TJvCalcEdit;
    edtTotal_pagar: TJvCalcEdit;
    edtJuros: TJvCalcEdit;
    edtDias_Atrasos: TEdit;
    Label1: TLabel;
    edtTipo_Documento: TDBLookupComboBox;
    edtValor: TJvCalcEdit;
    edtDescricao: TEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CalcularTotal1;
    procedure edtData_PagamentoExit(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtTroco_RestanteChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtValor_PagoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Receber: TfrmCadastro_Receber;

implementation

uses
  uFuncoes, uConsulta_Clientes, uContas_Receber;

{$R *.dfm}

procedure TfrmCadastro_Receber.actCancelExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastro_Receber.actSalvarExecute(Sender: TObject);
begin
  if Panel1.Enabled then
  begin
    if edtID_Cliente.Text = '' then
    begin
      MostraAviso('O Nome deve ser Informado!');
      if lbect1.Visible = False then
      begin
        lbect1.Visible := True;
        edtNome.SetFocus;
        Exit;
      end;
    end;

    if edtValor.Value <= 0.00 then
    begin
      MostraAviso('O Valor deve ser Informado!');
      edtValor.SetFocus;
      Exit;
    end;

    if edtTipo_Documento.Text = '' then
    begin
      MostraAviso('O campo Tipo de Pagamento � Obrigat�rio!');
      edtTipo_Documento.SetFocus;
      Exit;
    end;

    if StrToDateDef(edtData_Documento.Text, 0) = 0 then
    begin
      MostraAviso('A Data do Documento � Obrigat�rio!');
      edtData_Documento.SetFocus;
      Exit;
    end;

    if edtData_Vencimento.Text = '' then
    begin
      MostraAviso('A Data do Vencimento � Obrigat�rio!');
      edtData_Vencimento.SetFocus;
      Exit;
    end;
  end;

  ModalResult := mrOk;
end;

procedure TfrmCadastro_Receber.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastro_Receber.btnSalvarClick(Sender: TObject);
begin

  ModalResult := mrOk;
end;


procedure TfrmCadastro_Receber.CalcularTotal1;
var
  Valor, Juros, JurosAM, Desconto, Total: Currency;
  Dias: Integer;
  Vencimento: TDate;
  Pagamento: TDate;
begin

  Vencimento := edtData_Vencimento.Date;
  Pagamento := edtData_Pagamento.Date;
  Valor := edtValor.Value;
  Desconto := edtDesconto.Value;
  Juros := 0;
  Dias  := 0;
  JurosAM := 10;

  if (Pagamento > Vencimento) then
  begin
    Dias := DaysBetween(Vencimento, Pagamento);
    Juros := SimpleRoundTo(Valor * (JurosAM / 30 / 100) * Dias, -2);

  end;

  Total := Valor + Juros - Desconto;
  edtDias_Atrasos.Text := IntToStr(Dias);
  edtJuros.Value := Juros;
  edtTotal_Pagar.Value := Total;
end;

procedure TfrmCadastro_Receber.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '+' then
  begin
    Key := #0;
    frmConsulta := TfrmConsulta.Create(nil);
    frmConsulta.ShowModal;
    edtID_Cliente.Text := frmConsulta.sqlClientesID.AsString;
    edtNome.Text := frmConsulta.sqlClientesNome.AsString;
    FreeAndNil(frmConsulta);
  end;
end;

procedure TfrmCadastro_Receber.edtTroco_RestanteChange(Sender: TObject);
begin
  if edtTroco_Restante.Value >= 0 then
  begin
    lbTroco_Restante.Caption := 'RESTANTE';
    edtTroco_Restante.Value := edtTotal_Pagar.Value - edtValor_Pago.Value;
  end else
  begin
    lbTroco_Restante.Caption := 'TROCO';
    edtTroco_Restante.Value := edtTotal_Pagar.Value - edtValor_Pago.Value;
  end;

end;

procedure TfrmCadastro_Receber.edtValor_PagoExit(Sender: TObject);
begin
  edtTroco_Restante.Value := edtTotal_Pagar.Value - edtValor_Pago.Value;
end;

procedure TfrmCadastro_Receber.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Key = #13 <- Simula tecla Enter
  if Key = #13 then
  begin
    // desabilita o processamento posterior da tecla
    Key := #0;
    // simula tecla   "TAB"
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  // Key = #27 <- Simula tecla Esc
  else if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfrmCadastro_Receber.FormShow(Sender: TObject);
begin
  if Panel1.Enabled then
  begin
    edtNome.SetFocus;
  end;

end;

procedure TfrmCadastro_Receber.edtData_PagamentoExit(Sender: TObject);
begin
  CalcularTotal1;
end;

procedure TfrmCadastro_Receber.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
