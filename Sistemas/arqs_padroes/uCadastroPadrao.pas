unit uCadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TfCadastroPadrao = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadastroPadrao: TfCadastroPadrao;

implementation

{$R *.dfm}

procedure TfCadastroPadrao.Button1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfCadastroPadrao.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TfCadastroPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end
  else if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfCadastroPadrao.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

end.
