unit CalcularMedia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    lbCodigo: TLabel;
    Label2: TLabel;
    lbIdade: TLabel;
    lbMedia1: TLabel;
    lbMedia2: TLabel;
    lbMedia3: TLabel;
    lbMedia4: TLabel;
    Label8: TLabel;
    edtNome: TEdit;
    edtCodigo: TEdit;
    edtIdade: TEdit;
    edtMedia1: TEdit;
    edtMedia2: TEdit;
    edtMedia3: TEdit;
    edtMedia4: TEdit;
    edtResultado: TMemo;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.btnCalcularClick(Sender: TObject);
var
  aluno : TPessoa;
begin
  try
    aluno := TPessoa.Create;
    aluno.codigo := StrToInt(edtCodigo.Text);
    aluno.nome := edtNome.Text;
    aluno.idade := StrToInt(edtIdade.Text);

    aluno.Media1 := StrToFloat(edtMedia1.Text);
    aluno.Media2 := StrToFloat(edtMedia2.Text);
    aluno.Media3 := StrToFloat(edtMedia3.Text);
    aluno.Media4 := StrToFloat(edtMedia4.Text);

   edtResultado.Text := IntToStr(aluno.CalcularMedia(StrToInt(edtResultado.Text)));


  finally
    FreeAndNil(aluno);
  end;
end;

end.
