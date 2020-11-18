unit uCadastro_Unid_Medidas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ActnList, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TfrmCadastro_Unid_Medidas = class(TForm)
    JvPanel2: TJvPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    StatusBar1: TStatusBar;
    edtDescricao: TEdit;
    lbDescricao: TLabel;
    JvPanel1: TJvPanel;
    BalloonHint1: TBalloonHint;
    Timer1: TTimer;
    ActionList2: TActionList;
    actSalvar1: TAction;
    actCancelar: TAction;
    Label1: TLabel;
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Unid_Medidas: TfrmCadastro_Unid_Medidas;

implementation

{$R *.dfm}

end.
