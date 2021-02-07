unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus,
  uPlano_Contas_Pesquisa, Vcl.ImgList;

type
  TfPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Caiuxa1: TMenuItem;
    MovimentodeCaixa1: TMenuItem;
    PlanodeContas1: TMenuItem;
    CadastrodeCaixas1: TMenuItem;
    AberturaFechamentodeCaixa1: TMenuItem;
    Panel1: TPanel;
    edtCadastr_Caixa: TSpeedButton;
    edtAbert_Fechnt_Cxa: TSpeedButton;
    edtMov_Cxa: TSpeedButton;
    Relatrios1: TMenuItem;
    MovimentodoCaixa1: TMenuItem;
    edtPlano_Contas: TSpeedButton;
    procedure CadastrodeCaixas1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure AberturaFechamentodeCaixa1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MovimentodeCaixa1Click(Sender: TObject);
    procedure edtMov_CxaClick(Sender: TObject);
    procedure edtAbert_Fechnt_CxaClick(Sender: TObject);
    procedure edtPlano_ContasClick(Sender: TObject);
    procedure edtCadastr_CaixaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

uses uCaixas_Pesquisa, uCaixas_Aberturas_Pesquisa, uCaixas_Movimentos_Pesquisa;

procedure TfPrincipal.AberturaFechamentodeCaixa1Click(Sender: TObject);
begin
  fCaixas_Aberturas_Pesquisa := TfCaixas_Aberturas_Pesquisa.Create(Self);
  fCaixas_Aberturas_Pesquisa.ShowModal;
  FreeAndNil(fCaixas_Aberturas_Pesquisa);
end;

procedure TfPrincipal.CadastrodeCaixas1Click(Sender: TObject);
begin
  fCaixas_Pesquisa := TfCaixas_Pesquisa.Create(Self);
  fCaixas_Pesquisa.ShowModal;
  FreeAndNil(fCaixas_Pesquisa);
end;

procedure TfPrincipal.edtAbert_Fechnt_CxaClick(Sender: TObject);
begin
  fCaixas_Aberturas_Pesquisa := TfCaixas_Aberturas_Pesquisa.Create(Self);
  fCaixas_Aberturas_Pesquisa.ShowModal;
  FreeAndNil(fCaixas_Aberturas_Pesquisa);
end;

procedure TfPrincipal.edtCadastr_CaixaClick(Sender: TObject);
begin
  fCaixas_Pesquisa := TfCaixas_Pesquisa.Create(Self);
  fCaixas_Pesquisa.ShowModal;
  FreeAndNil(fCaixas_Pesquisa);
end;

procedure TfPrincipal.edtMov_CxaClick(Sender: TObject);
begin
  fCaixas_Movimentos_Pesquisa := TfCaixas_Movimentos_Pesquisa.Create(Self);
  fCaixas_Movimentos_Pesquisa.ShowModal;
  FreeAndNil(fCaixas_Movimentos_Pesquisa);
end;

procedure TfPrincipal.edtPlano_ContasClick(Sender: TObject);
begin
  fPlanos_Contas_Pesquisa := TfPlanos_Contas_Pesquisa.Create(Self);
  fPlanos_Contas_Pesquisa.ShowModal;
  FreeAndNil(fPlanos_Contas_Pesquisa);
end;

procedure TfPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    close;
  end;
end;

procedure TfPrincipal.MovimentodeCaixa1Click(Sender: TObject);
begin
  fCaixas_Movimentos_Pesquisa := TfCaixas_Movimentos_Pesquisa.Create(Self);
  fCaixas_Movimentos_Pesquisa.ShowModal;
  FreeAndNil(fCaixas_Movimentos_Pesquisa);
end;

procedure TfPrincipal.PlanodeContas1Click(Sender: TObject);
begin
  fPlanos_Contas_Pesquisa := TfPlanos_Contas_Pesquisa.Create(Self);
  fPlanos_Contas_Pesquisa.ShowModal;
  FreeAndNil(fPlanos_Contas_Pesquisa);
end;

end.
