unit frameLocalizar_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TframeLocalizaCliente = class(TFrame)
    lbCliente: TLabel;
    edtCliente: TEdit;
    procedure edtClienteKeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uClientes_Pesquisa, udmClientes;


procedure TframeLocalizaCliente.edtClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = '+' then
  begin
    Key := #0;
    fClientes_Pesquisa := TfClientes_Pesquisa.Create(Self);
    fClientes_Pesquisa.ShowModal;
    edtCliente.Text := dmCliente.sqlClienteNome.AsString;
    FreeAndNil(fClientes_Pesquisa)
  end;

end;

end.
