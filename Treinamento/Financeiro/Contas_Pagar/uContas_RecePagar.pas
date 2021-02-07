unit uContas_Pagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  JvExControls, JvEmbeddedForms, Vcl.StdCtrls, JvBaseEdits, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.Buttons, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ActnList;

type
  TfrmContas_Pagar = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    lbNumero: TLabel;
    Edit1: TEdit;
    JvDateData: TJvDateEdit;
    JvDateVencimento: TJvDateEdit;
    lbData: TLabel;
    lbVencimento: TLabel;
    lbValor: TLabel;
    edtFornecedor: TEdit;
    lbFornecedor: TLabel;
    lbDocumento: TLabel;
    edtDocumento: TEdit;
    JvCalValor: TJvCalcEdit;
    edtHistorico: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtPlanoContas: TEdit;
    edtCidade: TComboBox;
    Label3: TLabel;
    edtCentroCusto: TComboBox;
    Label4: TLabel;
    JvPanel1: TJvPanel;
    JvPanel2: TJvPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    ActionList1: TActionList;
    actSalvar: TAction;
    actCancel: TAction;
    procedure Timer1Timer(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContas_Pagar: TfrmContas_Pagar;

implementation

{$R *.dfm}

uses uPrincipal;

procedure TfrmContas_Pagar.actCancelExecute(Sender: TObject);
begin
  //
end;

procedure TfrmContas_Pagar.actSalvarExecute(Sender: TObject);
begin
  //
end;

procedure TfrmContas_Pagar.btnCancelarClick(Sender: TObject);
begin
  //
end;

procedure TfrmContas_Pagar.btnSalvarClick(Sender: TObject);
begin
  //
end;

procedure TfrmContas_Pagar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmContas_Pagar.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmContas_Pagar.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

procedure TfrmContas_Pagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;
end;

end.
