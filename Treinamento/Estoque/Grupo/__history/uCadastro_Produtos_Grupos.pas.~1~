unit uCadastro_Grupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ActnList, Vcl.Buttons,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmCadastro_Grupos = class(TForm)
    StatusBar1: TStatusBar;
    JvPanel2: TJvPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    ActionList2: TActionList;
    actSalvar1: TAction;
    actCancelar: TAction;
    BalloonHint1: TBalloonHint;
    Timer1: TTimer;
    JvPanel1: TJvPanel;
    edtDescricao: TEdit;
    lbDescricao: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Grupos: TfrmCadastro_Grupos;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TfrmCadastro_Grupos.actCancelarExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastro_Grupos.actSalvar1Execute(Sender: TObject);
begin
  if edtDescricao.Text = '' then
  begin
  ShowMessage('A descrição deve ser "Informado!"');
  edtDescricao.SetFocus;
  Exit;
  end;

  ModalResult := mrOk;
end;

procedure TfrmCadastro_Grupos.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmCadastro_Grupos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
  Close;

end;

procedure TfrmCadastro_Grupos.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
