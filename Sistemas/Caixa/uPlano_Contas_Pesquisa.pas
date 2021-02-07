unit uPlano_Contas_Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, uFuncoes_Gerais, udmCaixa,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, JvExStdCtrls, JvCombobox,
  Vcl.DBCtrls;

type
  TfPlanos_Contas_Pesquisa = class(TForm)
    Panel1: TPanel;
    btnAlterar: TSpeedButton;
    btnNovo: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    edtPlano_Contas: TEdit;
    DBGrid1: TDBGrid;
    btnDesativar: TSpeedButton;
    btnAtivar: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    edtEstado: TJvComboBox;
    edtNatureza: TJvComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAtivarClick(Sender: TObject);
    procedure btnDesativarClick(Sender: TObject);
    procedure edtPlano_ContasChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure FiltrarPesq;
    function Locate_Estrut(ALE: String): Boolean;
  public
    { Public declarations }
    TxtSQL_Plano_Contas : String;
  end;

var
  fPlanos_Contas_Pesquisa: TfPlanos_Contas_Pesquisa;

implementation

{$R *.dfm}

uses uPlano_Contas_Cadastro;



procedure TfPlanos_Contas_Pesquisa.btnExcluirClick(Sender: TObject);
var
  Situacao : String;
begin
  Situacao := dmCaixa.sqlPlano_contasSituacao.AsString;

  // - N�o permitir excluir plano de contas, caso o mesmo j� tenha sido utilizado
  if not (Situacao = 'A') then
  begin
    if SimNao('Excluir', ' Deseja excluir o plano '
      + dmCaixa.sqlPlano_contasPlano_Contas.AsString + ' ? ' ) then
    begin
      try

        if dmCaixa.sqlPlano_contasSituacao.AsString = 'I' then
        begin
          MostraAviso('Este plano j� esta Inativo!');
          Exit;
        end;

        dmCaixa.sqlPlano_contas.Edit;
        dmCaixa.sqlPlano_contasSituacao.AsString := 'I';

        ZAtualiza(dmCaixa.sqlPlano_contas);
        dmCaixa.sqlPlano_contas.Refresh;
        dmCaixa.sqlPlano_contas.SortedFields := 'plano_contas';
      except
        on E: Exception do
          raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
      end;
    end;
  end else
    MostraMensagem
      ('Este plano possui registros ativos e n�o pode ser exclu�do.');
end;


procedure TfPlanos_Contas_Pesquisa.btnNovoClick(Sender: TObject);
begin
  fPlanos_Contas_Cadastro := TfPlanos_Contas_Cadastro.Create(Self);
  if TComponent(Sender).Name = 'btnNovo' then
  begin
    dmCaixa.sqlPlano_contas.Append;
    dmCaixa.sqlPlano_contasSituacao.AsString := 'A';
  end else
    dmCaixa.sqlPlano_contas.Edit;

  if fPlanos_Contas_Cadastro.ShowModal = mrOk then
  begin
    if not Locate_Estrut(fPlanos_Contas_Cadastro.edtEstrutura.Text) then
    begin
      dmCaixa.sqlPlano_contas.Refresh;
      FreeAndNil(fPlanos_Contas_Cadastro);
      Exit;
    end;
  end
  else
    dmCaixa.sqlPlano_contas.Cancel;

  dmCaixa.sqlPlano_contas.Refresh;
  FreeAndNil(fPlanos_Contas_Cadastro);
end;

procedure TfPlanos_Contas_Pesquisa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if dmCaixa.sqlPlano_contasSituacao.AsString = 'I' then
    DBGrid1.Canvas.Font.Color := $0055559B;

  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);
end;

function TfPlanos_Contas_Pesquisa.Locate_Estrut(ALE: String): Boolean;
var
  Consult : String;
begin
  Result := false;

  if (ALE) <> '' then
  begin
    Consult := dmCaixa.sqlPlano_contas.FieldByName('estrutura').AsString;

    // - No plano de contas, pode haver duplicidade de descri��o,
    // mas em agrupamentos diferentes
    if dmCaixa.sqlPlano_contas.Locate('estrutura', Consult, []) then
    begin
      MostraMensagem('Formato de agrupamento ja existe!');
      Exit;
    end;
    ZAtualiza(dmCaixa.sqlPlano_contas);
    dmCaixa.sqlPlano_contas.SortedFields := 'plano_contas';
    Result := True;
  end;
  if not Result then
    ShowMessage('Teste')

end;

procedure TfPlanos_Contas_Pesquisa.btnAtivarClick(Sender: TObject);
begin
  if SimNao('Ativar', ' Deseja ativar o plano '
    + dmCaixa.sqlPlano_contasPlano_Contas.AsString + ' ? ' ) then
  begin
    try
      dmCaixa.sqlPlano_contas.Edit;
      dmCaixa.sqlPlano_contasSituacao.AsString := 'A';

      ZAtualiza(dmCaixa.sqlPlano_contas);
      dmCaixa.sqlPlano_contas.Refresh;
      dmCaixa.sqlPlano_contas.SortedFields := 'plano_contas';
      MostraMensagem('Registro ativado com Sucesso!');
    except
      on E: Exception do
        raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
    end;
  end;
end;

procedure TfPlanos_Contas_Pesquisa.btnDesativarClick(Sender: TObject);
begin
  if SimNao('Desativar', ' Deseja desativar o plano '
    + dmCaixa.sqlPlano_contasPlano_Contas.AsString + ' ? ' ) then
  begin
    try

      if dmCaixa.sqlPlano_contasSituacao.AsString = 'I' then
      begin
        MostraAviso('Este plano j� esta Inativo!');
        Exit;
      end;


      dmCaixa.sqlPlano_contas.Edit;
      dmCaixa.sqlPlano_contasSituacao.AsString := 'I';

      ZAtualiza(dmCaixa.sqlPlano_contas);
      dmCaixa.sqlPlano_contas.Refresh;
      dmCaixa.sqlPlano_contas.SortedFields := 'plano_contas';
      MostraMensagem('Registro desativado com Sucesso!');
    except
      on E: Exception do
        raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
    end;
  end;
end;

procedure TfPlanos_Contas_Pesquisa.edtPlano_ContasChange(Sender: TObject);
begin
  FiltrarPesq;
end;

procedure TfPlanos_Contas_Pesquisa.FiltrarPesq;
var
  Texto, Situacao : String;
begin
  Texto := 'id > 0';
  if edtPlano_Contas.Text <> '' then
    Texto := Texto + ' AND plano_contas LIKE ' + QuotedStr(edtPlano_Contas.Text + '*');

  case edtNatureza.ItemIndex of

    1: begin
      Texto := Texto + ' AND tipo = ' + QuotedStr('E');
    end;
    2: begin
      Texto := Texto + ' AND tipo = ' + QuotedStr('S');
    end;
  end;

  case edtEstado.ItemIndex of

    1: Texto := Texto + ' AND situacao =  ''A'' ';
    2: Texto := Texto + ' AND situacao =  ''I'' ';

  end;

  dmCaixa.sqlPlano_contas.Filter := Texto;
  dmCaixa.sqlPlano_contas.Filtered := True;
end;

procedure TfPlanos_Contas_Pesquisa.FormCreate(Sender: TObject);
begin
  TxtSQL_Plano_Contas := dmCaixa.sqlPlano_contas.SQL.Text;
end;

procedure TfPlanos_Contas_Pesquisa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfPlanos_Contas_Pesquisa.FormShow(Sender: TObject);
begin
  ListarSQL(dmCaixa.sqlNatureza, 'SELECT * FROM natureza');
  ListarSQL(dmCaixa.sqlPlano_contas, TxtSQL_Plano_Contas);
  FiltrarPesq;
end;

end.
