unit uCaixas_Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, udmCaixa, uFuncoes_Gerais, uFuncoes_Caixa;

type
  TfCaixas_Pesquisa = class(TForm)
    Panel1: TPanel;
    btnAlterar: TSpeedButton;
    btnNovo: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    edtCaixa: TEdit;
    DBGrid1: TDBGrid;
    btnExcluir: TSpeedButton;
    cInativos: TCheckBox;
    btnAtivar: TSpeedButton;
    btnDesativar: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edtCaixaChange(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnAtivarClick(Sender: TObject);
    procedure btnDesativarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure FiltrarCaixa;
  public
    { Public declarations }
  end;

var
  fCaixas_Pesquisa: TfCaixas_Pesquisa;

implementation

{$R *.dfm}

uses uCaixas_Cadastro, udmPrincipal;

procedure TfCaixas_Pesquisa.btnNovoClick(Sender: TObject);
begin
  fCaixas_Cadastro := TfCaixas_Cadastro.Create(Self);
  if TComponent(Sender).Name = 'btnNovo' then  // Verficando qual componente na tela
  begin                                        // Vai busca Pelo nome do(Componente)
    dmCaixa.sqlCaixas.Append;
    //dmCaixa.sqlCaixasAtivo.AsString := 'S';
  end else
  begin
    dmPrincipal.qTemp.SQL.Text := 'SELECT caixas_id FROM caixas_aberturas'
      + ' WHERE caixas_id = ' + dmCaixa.sqlCaixasID.AsString;
    dmPrincipal.qTemp.Open;

    if dmPrincipal.qTemp.fields[0].AsString <> '' then
    begin
      MostraAviso('Este caixa possui registros no caixa movimentos');
      Exit;
    end;

    fCaixas_Cadastro.OperacaoCaixa := ocAlterar;
    dmCaixa.sqlCaixas.Edit;
  end;

  if fCaixas_Cadastro.ShowModal = mrOK then  // Vai dar um ShowModal(Abrir) a tela
  begin

    ZAtualiza(dmCaixa.sqlCaixas);
    dmCaixa.sqlCaixas.SortedFields := 'caixa';
  end else
    dmCaixa.sqlCaixas.Cancel;

  dmCaixa.sqlCaixas.Refresh;
  FreeandNil(fCaixas_Cadastro);
end;

procedure TfCaixas_Pesquisa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if dmCaixa.sqlCaixasativo.AsString = 'N' then
    DBGrid1.Canvas.Font.Color := $0055559B;

      if not odd(DBGrid1.DataSource.DataSet.RecNo) then // se for �mpar
      begin
        if not(gdSelected in State) then
        begin // se a c�lula n�o est� selecionada
          DBGrid1.Canvas.Brush.Color := cl3DLight;
          DBGrid1.Canvas.FillRect(Rect); // pinta a c�lula
        end;
      end;

  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);
end;

procedure TfCaixas_Pesquisa.edtCaixaChange(Sender: TObject);
begin
  FiltrarCaixa;
end;

procedure TfCaixas_Pesquisa.FiltrarCaixa;
var
  s: String;
begin
  s := 'id > 0';
  if edtCaixa.Text <> '' then
    s := s + ' AND caixa LIKE ' + QuotedStr(edtCaixa.Text + '*');
  if not cInativos.Checked then
    s := s + ' AND ativo = ''S'' ';

  dmCaixa.sqlCaixas.Filter := s;
  dmCaixa.sqlCaixas.Filtered := True;
end;

procedure TfCaixas_Pesquisa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfCaixas_Pesquisa.FormShow(Sender: TObject);
begin
  ListarSQL(dmCaixa.sqlCaixas, 'SELECT * FROM caixas ORDER BY caixa');
  FiltrarCaixa;
end;

procedure TfCaixas_Pesquisa.btnAlterarClick(Sender: TObject);
begin
  fCaixas_Cadastro := TfCaixas_Cadastro.Create(Self);
  dmCaixa.sqlCaixas.Edit;

  if fCaixas_Cadastro.ShowModal = mrOK then  // Vai dar um ShowModal(Abrir) a tela
  begin
{
    if SalvarCaixa(fCaixas_Cadastro.edtDescricao.Text) then
    begin
      dmCaixa.sqlCaixas.Refresh;
      FreeandNil(fCaixas_Cadastro);
      Exit;
    end;
 }
  end
  else
    dmCaixa.sqlCaixas.Cancel;

  dmCaixa.sqlCaixas.Refresh;
  FreeandNil(fCaixas_Cadastro);
end;

procedure TfCaixas_Pesquisa.btnAtivarClick(Sender: TObject);
begin
  if SimNao('Ativar', ' Deseja ativar este caixa '
    + dmCaixa.sqlCaixasCaixa.AsString + ' ? ' ) then
  begin
    try

      if dmCaixa.sqlCaixasAtivo.AsString = 'S' then
      begin
        MostraAviso('Este caixa j� esta Ativo!');
        Exit;
      end;

      dmCaixa.sqlCaixas.Edit;
      dmCaixa.sqlCaixasAtivo.AsString := 'S';

      ZAtualiza(dmCaixa.sqlCaixas);
      dmCaixa.sqlCaixas.Refresh;
      dmCaixa.sqlCaixas.SortedFields := 'caixa';
      MostraMensagem('Registro ativado com Sucesso!');
    except
      on E: Exception do
        raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
    end;
  end;
end;

procedure TfCaixas_Pesquisa.btnDesativarClick(Sender: TObject);
begin
  dmPrincipal.qTemp.SQL.Text := 'SELECT caixas_id FROM caixas_aberturas'
    + ' WHERE caixas_id = ' + dmCaixa.sqlCaixasID.AsString;
  dmPrincipal.qTemp.Open;

    if dmPrincipal.qTemp.fields[0].AsString <> '' then
    begin
      MostraAviso('Este caixa possui registros no caixa movimentos');
      Exit;
    end;


  if SimNao('Desativar', ' Deseja desativar este caixa '
    + dmCaixa.sqlCaixasCaixa.AsString + ' ? ' ) then
  begin
    try

      if dmCaixa.sqlCaixasAtivo.AsString = 'N' then
      begin
        MostraAviso('Este caixa j� esta Inativo!');
        Exit;
      end;

      dmCaixa.sqlCaixas.Edit;
      dmCaixa.sqlCaixasAtivo.AsString := 'N';

      ZAtualiza(dmCaixa.sqlCaixas);
      dmCaixa.sqlCaixas.Refresh;
      dmCaixa.sqlCaixas.SortedFields := 'caixa';
      MostraMensagem('Registro desativado com Sucesso!');
    except
      on E: Exception do
        raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
    end;
  end;
end;

procedure TfCaixas_Pesquisa.btnExcluirClick(Sender: TObject);
begin
  if SimNao('Excluir', 'Deseja excluir o caixa '
      + dmCaixa.sqlCaixasCaixa.AsString + '?') then
    ZDeleta(dmCaixa.sqlCaixas);
end;

end.
