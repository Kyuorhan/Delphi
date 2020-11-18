unit Receber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, DateUtils,
  JvExMask, JvToolEdit;

type
  TForm7 = class(TForm)
    lbValor: TLabel;
    edtValor: TEdit;
    lbVencimento: TLabel;
    lbPagamento: TLabel;
    btnProcessar: TButton;
    lbUsuario: TLabel;
    edtUser: TEdit;
    Label1: TLabel;
    lbJuros: TLabel;
    edtDias_Atrasos: TEdit;
    edtTotal_Pagar: TEdit;
    edtJuros: TEdit;
    Label2: TLabel;
    JvDatePagamento: TJvDateEdit;
    JvDateVencimento: TJvDateEdit;
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.btnProcessarClick(Sender: TObject);
var Valor, Juros, JurosAM, TotalPagar : Real;
    Dias: Integer;
    Vencimento : TDate;
    Pagamento : TDate;
begin
  Vencimento := JvDateVencimento.Date;
  Pagamento := JvDatePagamento.Date;
  Vencimento := StrToDate(JvDateVencimento.Text);
  Pagamento := StrToDate(JvDatePagamento.Text);
  Valor := StrToFloat(edtValor.Text);
  Juros := 0;
  Dias := 0;
  if (Pagamento > Vencimento) then
  begin
    Dias := DaysBetween(Vencimento, Pagamento);
    Juros := (Valor * 0.00333 * Dias);
  end;
  TotalPagar := Valor + Juros;
  edtDias_Atrasos.Text := IntToStr(Dias);
  edtJuros.Text := FormatFloat('0.00', Juros);
  edtTotal_Pagar.Text := FormatFloat('0.00', TotalPagar);
end;
end.
