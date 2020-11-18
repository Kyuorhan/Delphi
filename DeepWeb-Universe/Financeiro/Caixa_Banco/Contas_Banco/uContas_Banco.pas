unit uContas_Banco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.StdCtrls, Vcl.ComCtrls, JvExComCtrls, JvComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ActnList, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmContas_Banco = class(TForm)
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
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    tbPesquisar: TJvPageControl;
    tbsPesquisar: TTabSheet;
    edtNome: TEdit;
    JvDBGrid2: TJvDBGrid;
    sqlBanco: TZQuery;
    dsBanco: TDataSource;
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
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContas_Banco: TfrmContas_Banco;

implementation

{$R *.dfm}

procedure TfrmContas_Banco.actCancelarExecute(Sender: TObject);
begin
  //
end;

procedure TfrmContas_Banco.actEditarExecute(Sender: TObject);
begin
  //
end;

procedure TfrmContas_Banco.actExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente "Excluir" o registro?',
    'Conta/Banco', MB_YESNO) = mrYes then
  begin
    try
      {
        TClientDataSet(dsClientes.DataSet).Delete;
        TClientDataSet(dsClientes.DataSet).ApplyUpdates(0);
        Application.MessageBox('Registro excluido com "Sucesso!"','Cadastro de Cliente', MB_OK)
      }
      // sql.Delete;
      // sql.ApplyUpdates;
      // MostraMensagem('Registro excluido com "Sucesso!"');

    except
      on E: Exception do
        raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
    end;
  end;
end;

procedure TfrmContas_Banco.actNovoExecute(Sender: TObject);
begin
  //
end;

procedure TfrmContas_Banco.actSalvarExecute(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmContas_Banco.btnCancelarClick(Sender: TObject);
begin
  //
end;

procedure TfrmContas_Banco.btnEditarClick(Sender: TObject);
begin
  //
end;

procedure TfrmContas_Banco.btnExcluirClick(Sender: TObject);
begin
  //
end;

procedure TfrmContas_Banco.btnNovoClick(Sender: TObject);
begin
  //
end;

procedure TfrmContas_Banco.btnSalvarClick(Sender: TObject);
begin
  //
end;

procedure TfrmContas_Banco.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmContas_Banco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;
end;

procedure TfrmContas_Banco.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
