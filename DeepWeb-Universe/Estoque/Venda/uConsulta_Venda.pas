unit uConsulta_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ActnList, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmConsulta_Venda = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    BalloonHint1: TBalloonHint;
    ActionList1: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    actQuitar: TAction;
    actEstornar: TAction;
    JvPanel1: TJvPanel;
    JvDBGrid2: TJvDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta_Venda: TfrmConsulta_Venda;

implementation

{$R *.dfm}

end.
