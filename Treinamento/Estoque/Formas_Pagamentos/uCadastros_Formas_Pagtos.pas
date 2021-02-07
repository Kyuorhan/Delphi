unit uCadastros_Formas_Pagtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.ActnList, Vcl.ComCtrls, Vcl.Buttons, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TfrmCadastro_Formas_Pagtos = class(TForm)
    JvPanel2: TJvPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    StatusBar1: TStatusBar;
    edtFormas_Pagtos: TEdit;
    JvPanel1: TJvPanel;
    ActionList2: TActionList;
    actSalvar1: TAction;
    actCancelar: TAction;
    Timer1: TTimer;
    BalloonHint1: TBalloonHint;
    edtTipo_Documento: TDBLookupComboBox;
    lbTipo_Pagamento: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edtCidade: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    edtIntervalo: TEdit;
    edtPrimeiro_mes: TEdit;
    Label5: TLabel;
    edtParcelas: TEdit;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Formas_Pagtos: TfrmCadastro_Formas_Pagtos;

implementation

{$R *.dfm}

procedure TfrmCadastro_Formas_Pagtos.actCancelarExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastro_Formas_Pagtos.actSalvar1Execute(Sender: TObject);
begin

  ModalResult := mrOk;
end;

end.
