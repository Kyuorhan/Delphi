unit uVetor_Matriz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmVator_Matriz = class(TForm)
    rgTipo_Array: TRadioGroup;
    edtTamanho: TEdit;
    Label1: TLabel;
    mmoResult: TMemo;
    btnCriar: TButton;
    btnLimpar: TButton;
    procedure btnCriarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Vetor    : array of Integer;
    Matriz  : array of array of Integer;
    Tamanho : Integer; // Tamanho do Vetor
  public
    { Public declarations }
  end;

var
  frmVator_Matriz: TfrmVator_Matriz;

implementation

{$R *.dfm}

procedure TfrmVator_Matriz.btnCriarClick(Sender: TObject);
var   i, j : Integer;
      s : String;
begin
  Tamanho := StrToInt(edtTamanho.Text);
  mmoResult.Lines.Clear;
  Randomize;

  if rgTipo_Array.ItemIndex = -1 then
  begin
    ShowMessage('Precisa seleciona um "Tipo do Array" ');
    Abort;
  end;

  if rgTipo_Array.ItemIndex = 0 then
  begin
    SetLength(Vetor, Tamanho); // Criar Vetor Dinâmico
    for i := Low(Vetor) to High(Vetor) do
    begin
      Vetor[i] := Random(100);
      mmoResult.Lines.Add(Format('Vetor[%2d] = %2d', [i, vetor [i]]));
    end;
  end
  else
  begin
    SetLength(Matriz, Tamanho); // Cria Matriz Dinãmico
    for i := Low(Matriz) to High(Matriz) do
    begin
      s := Format('%2d. linha = ', [i + 1]); // Cria uma linhsa Matriz Dinâmicamente
      SetLength(Matriz[i], Tamanho); // Seta Tamanho da Linha
      for j := Low(Matriz[i]) to High(Matriz[i]) do
      begin
        Matriz[i, j]  := Random(100);
        s := s + Format('%2d ', [Matriz[i, j]]);
      end;
        mmoResult.Lines.Add(s);
    end;

  end;


end;

procedure TfrmVator_Matriz.btnLimparClick(Sender: TObject);
begin
  if (rgTipo_Array.ItemIndex = 0) then
    Finalize(Vetor)
  else
    Finalize(Matriz);

  mmoResult.Clear;

end;

procedure TfrmVator_Matriz.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmVator_Matriz.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;


end;

end.
