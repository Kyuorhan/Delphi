unit uClientes_Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, frameLocalizar_Cliente;

type
  TfClientes_Pesquisa = class(TForm)
    Panel1: TPanel;
    btnAlterar: TSpeedButton;
    btnNovo: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnImprimir: TSpeedButton;
    Panel2: TPanel;
    lbPesq: TLabel;
    edtNome: TEdit;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    TextSQL_Clientes : String;
  end;

var
  fClientes_Pesquisa: TfClientes_Pesquisa;

implementation

{$R *.dfm}

uses udmClientes, uFuncoes_Gerais;

procedure TfClientes_Pesquisa.edtNomeKeyPress(Sender: TObject; var Key: Char);
var
  itens : TListBox;
  frame : TframeLocalizaCliente;
begin
  if Key = '+' then
  begin
  Key := #0;
  ListBox1.Enabled := True;
  ListBox1.Visible := True;

  itens := TListBox.Create(Self);
  frame := TframeLocalizaCliente.Create(Self);
  frame.Parent  := itens; // o Frame vai ser criado dentro do Iten
  frame.Align   := TAlign.alClient;
  itens.Height  := 125;
  itens.Width   := 258;

  itens.Parent  := ListBox1;
  end;
end;

procedure TfClientes_Pesquisa.FormCreate(Sender: TObject);
begin
//  TextSQL_Clientes := dmCliente.sqlCliente.SQL.Text;
end;

procedure TfClientes_Pesquisa.FormShow(Sender: TObject);
begin
  ListarSQL(dmCliente.sqlCliente, 'SELECT * FROM clientes');
end;

end.
