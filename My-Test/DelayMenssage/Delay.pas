unit Delay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
  Inicio : TDateTime;
  Fim : TDateTime;
  ConsultarDadosCliente : ;
  ConsultarDadosItensPedido;
  ConsultarDadosPedido;
begin
  Inicio := Now;

  ConsultarDadosCliente
  ConsultarDadosItensPedido;
  ConsultarDadosPedido;

  Fim := Now;

  ShowMessage(Format('Consultas realizadas em %s segundos.',
    [FormatDateTime('ss', Fim - Inicio)]));
end;

procedure ConsultarDadosCliente(Sender: TObject);
begin
  Sleep(2000);
end;
end.
