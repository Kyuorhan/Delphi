unit uClientes_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.Buttons, Vcl.ComCtrls, frameLocalizar_Cliente;

type
  TfCliente_Cadastro = class(TForm)
    btnSalvar: TButton;
    btnVoltar: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label3: TLabel;
    lbSexo: TLabel;
    lbInsc_Est: TLabel;
    lbInsc_Municp: TLabel;
    Label11: TLabel;
    lbTipo_Empresa: TLabel;
    frameLocalizaCliente1: TframeLocalizaCliente;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCliente_Cadastro: TfCliente_Cadastro;

implementation

{$R *.dfm}

end.
