unit uConsulta_Formas_Pagtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExExtCtrls, JvExtComponent, JvPanel,
  Vcl.ActnList, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TfrmConsulta_Formas_Pagtos = class(TForm)
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    StatusBar1: TStatusBar;
    edtLocalizar: TEdit;
    Label1: TLabel;
    Timer1: TTimer;
    ActionList1: TActionList;
    actNovo1: TAction;
    actEditar1: TAction;
    actExcluir1: TAction;
    JvPanel1: TJvPanel;
    DBGrid1: TDBGrid;
    sqlFormas_Pagtos: TZQuery;
    dsFormas_Pagtos: TDataSource;
    sqlFormas_Pagtosid: TIntegerField;
    sqlFormas_Pagtosforma_pagto: TWideStringField;
    sqlFormas_Pagtosentrada: TWideStringField;
    sqlFormas_Pagtosparcelas: TIntegerField;
    sqlFormas_Pagtosprimeiro_mes: TIntegerField;
    sqlFormas_Pagtosintervalo: TIntegerField;
    procedure Timer1Timer(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure actNovo1Execute(Sender: TObject);
    procedure actEditar1Execute(Sender: TObject);
    procedure actExcluir1Execute(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Localizar_Formas_Pagto;
    { Private declarations }
  public
    { Public declarations }
    Texto_Formas_Pagto : String;
  end;

var
  frmConsulta_Formas_Pagtos: TfrmConsulta_Formas_Pagtos;

implementation

{$R *.dfm}

uses My_Layout, uCadastros_Formas_Pagtos;

procedure TfrmConsulta_Formas_Pagtos.actEditar1Execute(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Formas_Pagtos.actExcluir1Execute(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Formas_Pagtos.actNovo1Execute(Sender: TObject);
begin
  frmCadastro_Formas_Pagtos := TfrmCadastro_Formas_Pagtos.Create(Self);
  if (frmCadastro_formas_Pagtos.ShowModal = mrOk) then
  begin
    sqlFormas_Pagtos.Append;
{
    sqlFormas_Pagtosv
    sqlFormas_Pagtosforma_pagto.AsString  := frmCadastro_Formas_Pagtos.edtFormas_Pagtos.Text;
    sqlFormas_Pagtosentrada               := frmCadastro_Formas_Pagtos.
    sqlFormas_Pagtosparcelas
    sqlFormas_Pagtosprimeiro_mes
    sqlFormas_Pagtosintervalo
    sqlFormas_Pagtos.Post;
    sqlFormas_Pagtos.ApplyUpdates;
 }

  end;
end;

procedure TfrmConsulta_Formas_Pagtos.btnEditarClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Formas_Pagtos.btnExcluirClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Formas_Pagtos.btnNovoClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Formas_Pagtos.edtLocalizarChange(Sender: TObject);
begin
  Localizar_Formas_Pagto;
end;

procedure TfrmConsulta_Formas_Pagtos.FormCreate(Sender: TObject);
begin
  Texto_Formas_Pagto := sqlFormas_Pagtos.SQL.Text;
end;

procedure TfrmConsulta_Formas_Pagtos.Localizar_Formas_Pagto;
var
  Texto : String;
begin
  Texto := Texto_Formas_Pagto + ' WHERE id > 0 ';
  if edtLocalizar.Text <> '' then
    Texto := Texto + ' AND forma_pgto LIKE ' +QuotedStr(edtLocalizar.Text + '%');
  sqlFormas_Pagtos.Sql.Text := Texto;
  sqlFormas_Pagtos.Open;
end;

procedure TfrmConsulta_Formas_Pagtos.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
