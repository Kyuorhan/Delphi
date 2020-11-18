unit uContas_Caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ActnList, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.StdCtrls, JvExComCtrls, JvComCtrls;

type
  TfrmContas_Caixa = class(TForm)
    JvPanel1: TJvPanel;
    ActionList1: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    ActionList2: TActionList;
    actGerarBoleto: TAction;
    Timer1: TTimer;
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    StatusBar1: TStatusBar;
    tbPesquisar: TJvPageControl;
    tbsPesquisar: TTabSheet;
    edtNome: TEdit;
    JvDBGrid2: TJvDBGrid;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContas_Caixa: TfrmContas_Caixa;

implementation

{$R *.dfm}

procedure TfrmContas_Caixa.actCancelarExecute(Sender: TObject);
begin
//
end;

procedure TfrmContas_Caixa.actEditarExecute(Sender: TObject);
begin
//
end;

procedure TfrmContas_Caixa.actExcluirExecute(Sender: TObject);
begin
//
end;

procedure TfrmContas_Caixa.actNovoExecute(Sender: TObject);
begin
//
end;

procedure TfrmContas_Caixa.actSalvarExecute(Sender: TObject);
begin
//
end;

procedure TfrmContas_Caixa.btnCancelarClick(Sender: TObject);
begin
//
end;

procedure TfrmContas_Caixa.btnEditarClick(Sender: TObject);
begin
//
end;

procedure TfrmContas_Caixa.btnExcluirClick(Sender: TObject);
begin
//
end;

procedure TfrmContas_Caixa.btnNovoClick(Sender: TObject);
begin
//
end;

procedure TfrmContas_Caixa.btnSalvarClick(Sender: TObject);
begin
//
end;

procedure TfrmContas_Caixa.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmContas_Caixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;
end;

procedure TfrmContas_Caixa.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.