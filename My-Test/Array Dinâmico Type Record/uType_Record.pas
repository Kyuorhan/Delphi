unit uType_Record;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmType_Record = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    mmoRegistro: TMemo;
    edtAluno: TEdit;
    edtPrimeira_Nota: TEdit;
    edtSegunda_Nota: TEdit;
    btnSalvar_Aluno: TButton;
    Button1: TButton;
    lbAluno: TLabel;
    lbNota1: TLabel;
    lbNota2: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSalvar_AlunoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmType_Record: TfrmType_Record;

implementation

{$R *.dfm}

type Registro_Aluno = Record
      Nome  : String[35];
      N1    : Double;
      N2    : Double;
End;

var Aluno   : array of Registro_Aluno;
    n       : Integer = 0; // Tamanho do Vetor
    x       : Registro_Aluno;

procedure TfrmType_Record.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmType_Record.btnSalvar_AlunoClick(Sender: TObject);
begin
  { Verificar se todos os Campos enstão Preenchidos }
  if ((edtAluno.Text     <> '') and
      (edtPrimeira_Nota  <> '') and
      (edtSegunda_Nota   <> '')) then
  begin
    x.Nome  := edtAluno.Text;
    x.N1    := StrTofloat(edtPrimeira_Nota.Text);
    x.N2    := StrTofloat(edtSegunda_Nota.Text);
    Inc(n); {Redimensiona o vetor "Aluno" aumentando uma posição
             para adicionar  o novo  aluno no final  do conjunto}
  end;

end;

end.
