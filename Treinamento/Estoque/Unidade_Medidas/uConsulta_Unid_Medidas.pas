unit uConsulta_Unid_Medidas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExExtCtrls, JvExtComponent, JvPanel,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ActnList, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TfrmConsulta_Unid_Medidas = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    StatusBar1: TStatusBar;
    edtLocalizar: TEdit;
    ActionList1: TActionList;
    actNovo1: TAction;
    actEditar1: TAction;
    actExcluir1: TAction;
    Timer1: TTimer;
    Label1: TLabel;
    JvPanel1: TJvPanel;
    sqlUnid_Medidas: TZQuery;
    dsUnid_Medidas: TDataSource;
    sqlUnid_Medidasid: TIntegerField;
    sqlUnid_Medidasunid_medida: TWideStringField;
    sqlUnid_Medidasabrev: TWideStringField;
    procedure btnExcluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure actNovo1Execute(Sender: TObject);
    procedure actEditar1Execute(Sender: TObject);
    procedure actExcluir1Execute(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Localizar_UM;

    { Private declarations }
  public
    { Public declarations }
    Texto_UM: String;
  end;

var
  frmConsulta_Unid_Medidas: TfrmConsulta_Unid_Medidas;

implementation

{$R *.dfm}

uses My_Layout, uFuncoes, uCadastro_Unid_Medidas;

procedure TfrmConsulta_Unid_Medidas.actEditar1Execute(Sender: TObject);
begin
  frmCadastro_Unid_Medidas := TfrmCadastro_Unid_Medidas.Create(Self);
  frmCadastro_Unid_Medidas.edtAbrevia.Text    := sqlUnid_MedidasAbrev.AsString;
  frmCadastro_Unid_Medidas.edtDescricao.Text  := sqlUnid_MedidasUnid_Medida.AsString;

  if frmCadastro_Unid_Medidas.ShowModal = mrOk then
  begin

    sqlUnid_Medidas.Edit;
    sqlUnid_MedidasAbrev.AsString         := frmCadastro_Unid_Medidas.edtAbrevia.Text;
    sqlUnid_MedidasUnid_Medida.AsString   := frmCadastro_Unid_Medidas.edtDescricao.Text;
    sqlUnid_Medidas.Post;
    sqlUnid_Medidas.ApplyUpdates;

  end;
end;

procedure TfrmConsulta_Unid_Medidas.actNovo1Execute(Sender: TObject);
begin
  frmCadastro_Unid_Medidas := TfrmCadastro_Unid_Medidas.Create(Self);
  if frmCadastro_Unid_Medidas.ShowModal = mrOk then
  begin

    sqlUnid_Medidas.Append;
    sqlUnid_Medidasabrev.AsString         := frmCadastro_Unid_Medidas.edtAbrevia.Text;
    sqlUnid_MedidasUnid_Medida.AsString   := frmCadastro_Unid_Medidas.edtDescricao.Text;
    sqlUnid_Medidas.Post;
    sqlUnid_Medidas.ApplyUpdates;

  end;

end;

procedure TfrmConsulta_Unid_Medidas.btnEditarClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Unid_Medidas.btnExcluirClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Unid_Medidas.btnNovoClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Unid_Medidas.edtLocalizarChange(Sender: TObject);
begin
  Localizar_UM;
end;

procedure TfrmConsulta_Unid_Medidas.FormCreate(Sender: TObject);
begin
  Texto_UM := sqlUnid_Medidas.SQL.Text;
end;

procedure TfrmConsulta_Unid_Medidas.FormShow(Sender: TObject);
begin
  Localizar_UM;
end;

procedure TfrmConsulta_Unid_Medidas.Localizar_UM;
var
  Texto : String;
begin
  Texto := Texto_UM + ' WHERE id > 0';
  if edtLocalizar.Text <> '' then
    Texto := Texto + 'AND unid_medida LIKE' + QuotedStr(edtLocalizar.Text + '%');
  sqlUnid_Medidas.SQL.Text := Texto;
  sqlUnid_Medidas.Open;
end;

procedure TfrmConsulta_Unid_Medidas.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

procedure TfrmConsulta_Unid_Medidas.actExcluir1Execute(Sender: TObject);
var
  Qry: TZQuery;
begin
  Qry := TZQuery.Create(Self);
  Qry.Connection := frmPrincipal.ZConnection1;
  Qry.SQL.Text := 'SELECT COUNT(*) FROM produtos WHERE id_unid_medidas = ' +
    sqlUnid_MedidasID.AsString;
  Qry.Open;

  if StrToIntDef(Qry.Fields[0].AsString, 0) = 0 then
  begin
    if Application.MessageBox('Deseja realmente "Excluir" o registro?',
      'Excluir/Registro', MB_YESNO) = mrYes then
    begin
      try

        sqlUnid_Medidas.Delete;
        sqlUnid_Medidas.ApplyUpdates;

        MostraMensagem('Registro excluido com "Sucesso!"');

      except
        on E: Exception do
          raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
      end;
    end;
  end
  else
    MostraAviso
      ('Este cliente possui registros de produtos e não pode ser excluído.');
end;

end.
