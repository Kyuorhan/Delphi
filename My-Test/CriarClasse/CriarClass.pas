unit CriarClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPessoa;

type
  TForm7 = class(TForm)
    edtPessoa: TButton;
    edtNome: TEdit;
    edtCodigo: TEdit;
    edtIdade: TEdit;
    edtIdadeSoma: TEdit;
    edtResult: TEdit;
    procedure edtPessoaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.edtPessoaClick(Sender: TObject);
var oPessoa : TPessoa;
begin
  try
  oPessoa := TPessoa.Create;
  oPessoa.codigo := StrToInt(edtCodigo.Text);
  oPessoa.nome := edtNome.Text;
  oPessoa.idade := StrToInt(edtIdade.Text);

  edtResult.Text := IntToStr(oPessoa.SaberIdade(StrToInt(edtIdadeSoma.Text)));
  finally
    FreeAndNil(oPessoa);
  end;
end;

end.
