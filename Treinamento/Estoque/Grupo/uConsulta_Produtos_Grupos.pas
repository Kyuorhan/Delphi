unit uConsulta_Produtos_Grupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids,
  Vcl.DBGrids, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmConsulta_Produtos_Grupos = class(TForm)
    JvPanel1: TJvPanel;
    Timer1: TTimer;
    Label1: TLabel;
    edtLocalizar: TEdit;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    ActionList1: TActionList;
    actNovo1: TAction;
    actEditar1: TAction;
    eactExcluir1: TAction;
    sqlGrupos: TZQuery;
    dsGrupos: TDataSource;
    sqlGruposid: TIntegerField;
    sqlGruposprodutos_grupo: TWideStringField;
    procedure Timer1Timer(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure actNovo1Execute(Sender: TObject);
    procedure actEditar1Execute(Sender: TObject);
    procedure actExcluir1Execute(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure Localizar_PG;
    { Private declarations }
  public
    { Public declarations }
    Texto_PG : String;
  end;

var
  frmConsulta_Produtos_Grupos: TfrmConsulta_Produtos_Grupos;

implementation

{$R *.dfm}

uses My_Layout, uFuncoes, uCadastro_Produtos_Grupos;

procedure TfrmConsulta_Produtos_Grupos.actEditar1Execute(Sender: TObject);
begin
  frmCadastro_Produtos_Grupos := TfrmCadastro_Produtos_Grupos.Create(Self);

  frmCadastro_Produtos_Grupos.edtDescricao.Text := sqlGruposProdutos_Grupo.AsString;

  if frmCadastro_Produtos_Grupos.ShowModal = mrOk then
  begin

    sqlGrupos.Edit;
    sqlGruposProdutos_Grupo.AsString := frmCadastro_Produtos_Grupos.edtDescricao.Text;
    sqlGrupos.Post;
    sqlGrupos.ApplyUpdates;

  end;
end;

procedure TfrmConsulta_Produtos_Grupos.actNovo1Execute(Sender: TObject);
begin
  frmCadastro_Produtos_Grupos := TfrmCadastro_Produtos_Grupos.Create(Self);
  if frmCadastro_Produtos_Grupos.ShowModal = mrOk then
  begin

    sqlGrupos.Append;
    sqlGruposProdutos_Grupo.AsString := frmCadastro_Produtos_Grupos.edtDescricao.Text;
    sqlGrupos.Post;
    sqlGrupos.ApplyUpdates;

  end;

end;

procedure TfrmConsulta_Produtos_Grupos.btnEditarClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Produtos_Grupos.btnExcluirClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Produtos_Grupos.btnNovoClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Produtos_Grupos.edtLocalizarChange(Sender: TObject);
begin
  Localizar_PG;
end;

procedure TfrmConsulta_Produtos_Grupos.FormCreate(Sender: TObject);
begin
  Texto_PG := sqlGrupos.SQL.Text;
end;

procedure TfrmConsulta_Produtos_Grupos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #27 then
  begin

  end;

end;

procedure TfrmConsulta_Produtos_Grupos.FormShow(Sender: TObject);
begin
  Localizar_PG;
end;

procedure TfrmConsulta_Produtos_Grupos.Localizar_PG;
var
  Texto: String;
begin
  Texto := Texto_PG + ' WHERE id > 0';
  if edtLocalizar.Text <> '' then
    Texto := Texto + ' AND produtos_grupo LIKE ' + Quotedstr(edtLocalizar.Text + '%');
  sqlGrupos.SQL.Text := Texto;
  sqlGrupos.Open;
end;

procedure TfrmConsulta_Produtos_Grupos.actExcluir1Execute(Sender: TObject);
var Qry: TZQuery;
begin
  Qry := TZQuery.Create(Self);
  Qry.Connection := frmPrincipal.ZConnection1;
  Qry.SQL.Text := 'SELECT COUNT(*) FROM produtos WHERE id_produto_grupo = '+
    sqlGruposid.AsString;
  Qry.Open;

  if StrToIntDef(Qry.Fields[0].AsString, 0) = 0 then
  begin
    if Application.MessageBox('Deseja realmente "Excluir" o registro?',
      'Excluir/Registro', MB_YESNO) = mrYes then
    begin
      try

        sqlGrupos.Delete;
        sqlGrupos.ApplyUpdates;

        MostraMensagem('Registro excluido com "Sucesso!"');

      except
        on E: Exception do
          raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
      end;
    end;
  end
  else
    MostraAviso
      ('Este cliente possui registros de produtos e n�o pode ser exclu�do.');
end;

procedure TfrmConsulta_Produtos_Grupos.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
