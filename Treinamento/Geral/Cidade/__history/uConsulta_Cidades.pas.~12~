unit uConsulta_Cidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ActnList, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, JvExExtCtrls, JvExtComponent,
  JvPanel, JvExComCtrls, JvComCtrls, Vcl.StdCtrls;

type
  TfrmConsulta_Cidades = class(TForm)
    tbPesquisar: TJvPageControl;
    tbsPesquisar: TTabSheet;
    JvPanel1: TJvPanel;
    dsCidades: TDataSource;
    sqlCidades: TZQuery;
    sqlCidadesid: TIntegerField;
    sqlCidadescidade: TWideStringField;
    sqlCidadesuf: TWideStringField;
    sqlCidadescod_ibge: TWideStringField;
    ActionList1: TActionList;
    actNovo1: TAction;
    actEditar1: TAction;
    actExcluir1: TAction;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    JvDBGrid2: TJvDBGrid;
    Timer1: TTimer;
    Label1: TLabel;
    edtLocalizar: TEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure actNovo1Execute(Sender: TObject);
    procedure actEditar1Execute(Sender: TObject);
    procedure actExcluir1Execute(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    procedure Timer1Timer(Sender: TObject);
    { Private declarations }
    procedure Localizar_Cidade;
  public
    { Public declarations }
    TextoPesq : String;
  end;

var
  frmConsulta_Cidades: TfrmConsulta_Cidades;

implementation

{$R *.dfm}

uses My_Layout, uConsulta_Clientes, uCadastro_Cidades, uFuncoes;

procedure TfrmConsulta_Cidades.actEditar1Execute(Sender: TObject);
begin
  frmCadastro_Cidades.edtCidade.Text    := sqlCidadesCidade.AsString;
  frmCadastro_Cidades.edtUF.Text        := sqlCidadesUF.AsString;
  frmCadastro_Cidades.edtCod_IBGE.Text  := sqlCidadesCod_IBGE.AsString;

  if frmCadastro_Cidades.ShowModal = mrOk then
  begin
    sqlCidades.Edit;
    sqlCidadesCidade.AsString     := frmCadastro_Cidades.edtCidade.Text;
    sqlCidadesUF.AsString         := frmCadastro_Cidades.edtUF.Text;
    sqlCidadesCod_IBGE.AsString   := frmCadastro_Cidades.edtCod_IBGE.Text;
    sqlCidades.Post;
    sqlCidades.ApplyUpdates;
  end;
end;

procedure TfrmConsulta_Cidades.actExcluir1Execute(Sender: TObject);
var Qry: TZQuery;
begin
  Qry := TZQuery.Create(Self);
  Qry.Connection := frmPrincipal.ZConnection1;
  Qry.SQL.Text := 'SELECT COUNT(*) FROM clientes WHERE id_cidade = '+
    sqlCidadesID.AsString;
  Qry.Open;

  if StrToIntDef(Qry.Fields[0].AsString, 0) > 0 then
  begin
    MostraMensagem('Existem clientes ligados a esta cidade.');
    Qry.Free;
    Exit;
  end;
  Qry.Free;

  if Application.MessageBox('Deseja realmente "Excluir" o registro?',
    'Consulta/Cidade', MB_YESNO) = mrYes then
  begin
    try
      sqlCidades.Delete;
      sqlCidades.ApplyUpdates;
      MostraMensagem('Registro excluido com "Sucesso!"');

    except
      on E: Exception do
        raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
    end;
  end
end;

procedure TfrmConsulta_Cidades.actNovo1Execute(Sender: TObject);
begin

  frmCadastro_Cidades := TfrmCadastro_Cidades.Create(Self);

  if frmCadastro_Cidades.ShowModal = mrOk then
  begin

    sqlCidades.Append;
    sqlCidadesCidade.AsString     := frmCadastro_Cidades.edtCidade.Text;
    sqlCidadesUF.AsString         := frmCadastro_Cidades.edtUF.Text;
    sqlCidadesCod_IBGE.AsString   := frmCadastro_Cidades.edtCod_IBGE.Text;
    sqlCidades.Post;
    sqlCidades.ApplyUpdates;
  end;
end;

procedure TfrmConsulta_Cidades.btnEditarClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Cidades.btnExcluirClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Cidades.btnNovoClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Cidades.edtLocalizarChange(Sender: TObject);
begin
  Localizar_Cidade;
end;

procedure TfrmConsulta_Cidades.FormCreate(Sender: TObject);
begin
  TextoPesq := sqlCidades.SQL.Text;
end;

procedure TfrmConsulta_Cidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NCACTIVATE, 0, 0);
  end
  else if Key = #27 then
  begin
    Key := #0;
    Close;
  end;

end;

procedure TfrmConsulta_Cidades.FormShow(Sender: TObject);
begin
  Localizar_Cidade;
end;

procedure TfrmConsulta_Cidades.Localizar_Cidade;
var
  Texto : String;
begin
  Texto := TextoPesq + ' WHERE id > 0';
  if edtLocalizar.Text <> '' then
    Texto := Texto + ' AND cidade LIKE ' + QuotedStr(edtLocalizar.Text + '%');
    Texto := Texto + ' ORDER BY cidade';
  sqlCidades.SQL.Text := Texto;
  sqlCidades.Open

end;

procedure TfrmConsulta_Cidades.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
