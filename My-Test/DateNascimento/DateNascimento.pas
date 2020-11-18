unit DateNascimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit;

type
  TForm7 = class(TForm)
    lbDateNasc: TLabel;
    Button1: TButton;
    lbHoje0: TLabel;
    lbDate: TLabel;
    lbHoje1: TLabel;
    JvDateNascimento: TJvDateEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
  Nasc : TDate;
  Atual : TDateTime;
  Anos : Integer;
begin
  Atual := Date;
  Nasc := JvDateNascimento.Date;
  JvDateNascimento.Text := DateTimeToStr(Atual);
  Nasc := StrToDate(JvDateNascimento.Text);
  Anos := IntToStr(Nasc - Atual)/365.25;
  Atual := 0;
  lbDate.Caption := FormatFloat('0',Anos);

end;

end.
