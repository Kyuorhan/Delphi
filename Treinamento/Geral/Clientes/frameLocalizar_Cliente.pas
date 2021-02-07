unit frameLocalizar_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TframeLocalizaCliente = class(TFrame)
    lbCliente: TLabel;
    edtClientes: TEdit;
    procedure edtClientesKeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
    Cliente_ID : string;
  end;

implementation

{$R *.dfm}

uses uConsulta_Clientes;

procedure TframeLocalizaCliente.edtClientesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = '+' then
  begin
    Key := #0;
    frmConsulta := TfrmConsulta.Create(nil);
    frmConsulta.ShowModal;
    Cliente_ID :=  frmConsulta.sqlClientesNome.AsString;
    edtClientes.Text := Cliente_ID;
    FreeAndNil(frmConsulta);
  end;
end;

end.
