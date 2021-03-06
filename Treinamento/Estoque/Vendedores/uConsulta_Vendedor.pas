unit uConsulta_Vendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ActnList, JvExExtCtrls, JvExtComponent, JvPanel,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmConsulta_Vendedor = class(TForm)
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    StatusBar1: TStatusBar;
    JvPanel1: TJvPanel;
    ActionList1: TActionList;
    actNovo1: TAction;
    actEditar1: TAction;
    actExcluir1: TAction;
    Timer1: TTimer;
    edtLocalizar: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    sqlVendedor: TZQuery;
    dsVendedor: TDataSource;
    sqlVendedorid: TIntegerField;
    sqlVendedorvendedor: TWideStringField;
    sqlVendedorcomissao: TFloatField;
    actComissao: TAction;
    btnComissao: TSpeedButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure actNovo1Execute(Sender: TObject);
    procedure actEditar1Execute(Sender: TObject);
    procedure actExcluir1Execute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actComissaoExecute(Sender: TObject);
    procedure btnComissaoClick(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Localizar_Vendedor;
  public
    { Public declarations }
    TextoPesq : String;
  end;

var
  frmConsulta_Vendedor: TfrmConsulta_Vendedor;

implementation

{$R *.dfm}

uses My_Layout, uCadastro_Vendedor, uFuncoes;

procedure TfrmConsulta_Vendedor.actComissaoExecute(Sender: TObject);
begin
  frmCadastro_Vendedor := TfrmCadastro_Vendedor.Create(Self);
  if frmCadastro_Vendedor.ShowModal = mrOk then

end;

procedure TfrmConsulta_Vendedor.actEditar1Execute(Sender: TObject);
begin
  frmCadastro_Vendedor := TfrmCadastro_Vendedor.Create(Self);
  frmCadastro_Vendedor.edtVendedor.Text     := sqlVendedorVendedor.AsString;
  frmCadastro_Vendedor.edtComissao.Value    := sqlVendedorComissao.Value;
  if frmCadastro_Vendedor.ShowModal = mrOk then
  begin
    sqlVendedor.Edit;
    sqlVendedorVendedor.AsString := frmCadastro_Vendedor.edtVendedor.Text;
    sqlVendedorcomissao.Value    := frmCadastro_Vendedor.edtComissao.Value;
    sqlVendedor.Post;
    sqlVendedor.ApplyUpdates;
  end;



end;

procedure TfrmConsulta_Vendedor.actExcluir1Execute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente "Excluir" o registro?',
    'Excluir/Registro', MB_YESNO) = mrYes then
  begin
    try

      sqlVendedor.Delete;
      sqlVendedor.ApplyUpdates;

      MostraMensagem('Registro excluido com "Sucesso!"');

    except
      on E: Exception do
        raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
    end;
  end;
end;

procedure TfrmConsulta_Vendedor.actNovo1Execute(Sender: TObject);
begin
  frmCadastro_Vendedor := TfrmCadastro_Vendedor.Create(Self);
  if frmCadastro_Vendedor.ShowModal = mrOk then
  begin
    sqlVendedor.Append;
    sqlVendedorVendedor.AsString := frmCadastro_Vendedor.edtVendedor.Text;
    sqlVendedorcomissao.Value    := frmCadastro_Vendedor.edtComissao.Value;
    sqlVendedor.Post;
    sqlVendedor.ApplyUpdates;
  end;

end;

procedure TfrmConsulta_Vendedor.btnComissaoClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Vendedor.btnEditarClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Vendedor.btnExcluirClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Vendedor.btnNovoClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Vendedor.edtLocalizarChange(Sender: TObject);
begin
  Localizar_Vendedor;
end;

procedure TfrmConsulta_Vendedor.FormCreate(Sender: TObject);
begin
  TextoPesq := sqlVendedor.SQL.Text;
end;

procedure TfrmConsulta_Vendedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if (Key = #27) then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfrmConsulta_Vendedor.FormShow(Sender: TObject);
begin
  Localizar_Vendedor;
end;

procedure TfrmConsulta_Vendedor.Localizar_Vendedor;
var
  Texto: String;
begin
  Texto := TextoPesq + ' WHERE id > 0';
  if edtLocalizar.Text <> '' then
    Texto := Texto + ' AND vendedor LIKE ' + Quotedstr(edtLocalizar.Text + '%');
  sqlVendedor.SQL.Text := Texto;
  sqlVendedor.Open;
end;
procedure TfrmConsulta_Vendedor.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.

