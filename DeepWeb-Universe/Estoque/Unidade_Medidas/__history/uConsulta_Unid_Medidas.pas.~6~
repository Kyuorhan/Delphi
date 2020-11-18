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
    eactExcluir1: TAction;
    Timer1: TTimer;
    Label1: TLabel;
    JvPanel1: TJvPanel;
    sqlUnid_Medidas: TZQuery;
    dsUnid_Medidas: TDataSource;
    sqlUnid_Medidasid: TIntegerField;
    sqlUnid_Medidasunid_medida: TWideStringField;
    sqlUnid_Medidasabrev: TWideStringField;
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta_Unid_Medidas: TfrmConsulta_Unid_Medidas;

implementation

{$R *.dfm}

uses My_Layout, uFuncoes;

procedure TfrmConsulta_Unid_Medidas.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente "Excluir" o registro?',
    'Abertura/Fechamento do Caixa', MB_YESNO) = mrYes then
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
end;

end.
