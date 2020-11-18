unit uCadastro_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  ACBrBase, ACBrValidador, ACBrSocket, ACBrCEP, JvExControls, JvEmbeddedForms,
  Vcl.ComCtrls, Vcl.ExtCtrls, JvExButtons, JvBitBtn, uFuncoes, Vcl.ActnList,
  Vcl.DBCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, JvExMask, JvToolEdit, ACBrConsultaCNPJ,
  Vcl.imaging.pngimage, Data.DB, JvMemoryDataset;

{$DEFINE SUPPORT_PNG}

type
  TfrmCliente = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    ACBrValidador: TACBrValidador;
    ActionList1: TActionList;
    actSearch1: TAction;
    actSearch2: TAction;
    ActionList2: TActionList;
    actSalvar1: TAction;
    actCancelar: TAction;
    JvPanel2: TJvPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    JvPanel1: TJvPanel;
    ACBrCEP: TACBrCEP;
    Label3: TLabel;
    lbSexo: TLabel;
    NOME: TLabel;
    lbInsc_Est: TLabel;
    lbInsc_Municp: TLabel;
    Label11: TLabel;
    lbTipo_Empresa: TLabel;
    Label4: TLabel;
    lbRazaoSocial: TLabel;
    edtFantasia: TEdit;
    edtSexo: TComboBox;
    edtInsc_Estadual: TMaskEdit;
    edtInsc_Municipal: TMaskEdit;
    edtRG: TMaskEdit;
    edtNome: TEdit;
    Panel1: TPanel;
    lbCPF: TLabel;
    lbCaptcha: TLabel;
    btnSearch1: TSpeedButton;
    lbCPF1: TLabel;
    lbPessoa: TLabel;
    edtCPF: TMaskEdit;
    edtCaptcha: TEdit;
    Panel2: TPanel;
    lbAtualizarCaptcha: TLabel;
    imgCaptcha: TImage;
    ckRmvEspcDuplos: TCheckBox;
    edtTipo: TComboBox;
    edtTipo_Empresa: TEdit;
    ACBrConsultaCNPJ: TACBrConsultaCNPJ;
    JvMemoryList_City: TJvMemoryData;
    JvMemoryList_Citycidade: TStringField;
    JvMemoryList_Citybairro: TStringField;
    JvMemoryList_Citycep: TVariantField;
    JvMemoryList_Cityuf: TStringField;
    JvMemoryList_Cityend: TStringField;
    JvMemoryList_Citycod_ibge: TIntegerField;
    Label5: TLabel;
    lbEnd_Comple: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ENDERE�O: TLabel;
    Label8: TLabel;
    UF: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lbCity_Comple: TLabel;
    lbData_Nascimento: TLabel;
    lbData_Cadastro: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    btnSearch2: TSpeedButton;
    Label19: TLabel;
    lbect1: TLabel;
    edtEnd_Comple: TEdit;
    edtEmail: TEdit;
    edtEnd: TEdit;
    edtNumEnd: TEdit;
    edtBairro: TEdit;
    edtCity_Comple: TEdit;
    edtNaturalidade: TEdit;
    edtUFNatural: TEdit;
    edtUF: TEdit;
    edtTelefone: TMaskEdit;
    edtCelular: TMaskEdit;
    edtFax: TMaskEdit;
    edtCEP: TMaskEdit;
    JvDateNascimento: TJvDateEdit;
    JvDateCadastro: TJvDateEdit;
    edtCX_Postal: TEdit;
    edtID_Cidade: TEdit;
    edtCidade: TEdit;
    edtIBGE_Municipio: TEdit;
    procedure edtTipoChange(Sender: TObject);
    procedure Form1(Sender: TObject);
    procedure edtInsc_EstadualExit(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
    procedure edtRGExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnSearch1Click(Sender: TObject);
    procedure btnSearch2Click(Sender: TObject);
    procedure actSearch1Execute(Sender: TObject);
    procedure actSearch2Execute(Sender: TObject);
    procedure actSearch3Execute(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtUFExit(Sender: TObject);
    procedure btnSavlar1Click(Sender: TObject);
    procedure btnCancelar2Click(Sender: TObject);
    procedure actSalvar1Execute(Sender: TObject);
    procedure ACBrCEPBuscaEfetuada(Sender: TObject);
    procedure lbAtualizarCaptchaClick(Sender: TObject);
    procedure edtCidadeKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    function SoNumeros(ATexto: String): String;
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.dfm}

uses My_Layout, uConsulta_Clientes, uConsulta_Cidades;

procedure TfrmCliente.btnCancelar2Click(Sender: TObject);
begin
  //
end;

procedure TfrmCliente.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCliente.edtTipoChange(Sender: TObject);
begin
  if AnsiUpperCase(edtTipo.Text) = 'F�SICA' then
  begin
    lbCPF.Caption := 'CPF';
    edtCPF.EditMask := '999.999.999-99';
  end
  else
  begin
    lbCPF.Caption := 'CNPJ';
    edtCPF.EditMask := '99.999.999/9999-99';
  end;
end;

procedure TfrmCliente.edtUFExit(Sender: TObject);
begin
  if not ValidarUF(edtUF.Text) then
    // edtUF.SetFocus;
end;

procedure TfrmCliente.Form1(Sender: TObject);
begin
  edtTipoChange(edtTipo);
end;

procedure TfrmCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfrmCliente.lbAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  // Jpg: TJPEGImage;
{$IFDEF DELPHI2009_UP}
  png: TPngImage;
{$ELSE}
  ImgArq: String;
{$ENDIF}
begin
{$IFNDEF SUPPORT_PNG}
  ShowMessage
    ('Aten��o: Seu Delphi n�o d� suporte nativo a imagens PNG. Queira verificar o c�digo fonte deste exemplo para saber como proceder.');
  Exit;
{$ENDIF}
  Stream := TMemoryStream.Create;
  try
    frmCliente.ACBrConsultaCNPJ.Captcha(Stream);

{$IFDEF DELPHI2009_UP}
    // Use esse c�digo quando a imagem do site for do tipo PNG
    png := TPngImage.Create;
    try
      png.LoadFromStream(Stream);
      imgCaptcha.Picture.Assign(png);
    finally
      png.Free;
    end;
    { //Use esse c�digo quando a imagem do site for do tipo JPG
      Jpg:= TJPEGImage.Create;
      try
      Jpg.LoadFromStream(Stream);
      Image1.Picture.Assign(Jpg);
      finally
      Jpg.Free;
      end;
    }
{$ELSE}
    ImgArq := ExtractFilePath(ParamStr(0)) + PathDelim + 'captch.png';
    Stream.SaveToFile(ImgArq);
    frmCliente.imgCaptcha.Picture.LoadFromFile(ImgArq);
{$ENDIF}
    frmCliente.edtCaptcha.Clear;
    frmCliente.edtCaptcha.SetFocus;
  finally
    Stream.Free;
  end;
end;

procedure TfrmCliente.edtCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '+' then
  begin
    frmConsulta_Cidades := TfrmConsulta_Cidades.Create(Self);
    frmConsulta_Cidades.sqlCidades.SQL.Text := 'SELECT * FROM cidades ' +
      'WHERE cidade LIKE ' + QuotedStr(edtCidade.Text+'%') +
      'ORDER BY cidade';
    frmConsulta_Cidades.sqlCidades.Open;
    if (frmConsulta_Cidades.sqlCidades.RecordCount = 0) or
      (frmConsulta_Cidades.sqlCidades.RecordCount > 1) then
      frmConsulta_Cidades.ShowModal;
    edtCidade.Text          := frmConsulta_Cidades.sqlCidadescidade.AsString;
    edtUF.Text              := frmConsulta_Cidades.sqlCidadesUF.AsString;
    edtIBGE_Municipio.Text  := frmConsulta_Cidades.sqlCidadescod_ibge.AsString;
    edtID_Cidade.Text       := frmConsulta_Cidades.sqlCidadesID.AsString;
    edtID_Cidade.Visible := True;
    edtIBGE_Municipio.Visible := True;
    FreeAndNil(frmConsulta_Cidades);
  end;
end;

procedure TfrmCliente.edtEmailExit(Sender: TObject);
begin
  if not ValidarEmail(edtEmail.Text) then
end;

procedure TfrmCliente.edtInsc_EstadualExit(Sender: TObject);
var
  sInsc_Estadual: String;
  IEValido: Boolean;
begin
  sInsc_Estadual := SoNumeros(edtCPF.Text);
  IEValido := False;
  if edtTipo.Text = 'JUR�DICA' then
    sInsc_Estadual := SoNumeros(edtCPF.Text);
  IEValido := True;
  if sInsc_Estadual <> '' then
  begin
    ACBrValidador.Documento := sInsc_Estadual;
    if Length(sInsc_Estadual) = 11 then
      ACBrValidador.TipoDocto := docInscEst
  end;

  if not(IEValido) then
  begin
    Application.MessageBox('ATEN��O!: INSCRI��O ESTADUAL - INV�LIDO',
      'Preenchimento do Formul�rio', +MB_OK);
    edtInsc_Estadual.SetFocus;
  end;
end;

procedure TfrmCliente.edtRGExit(Sender: TObject);
begin
{
  if (edtRG.Text) <> '' then
  begin
    ACBrValidador.Documento := edtRG.Text;
    ACBrValidador.TipoDocto := docSuframa;
    begin
      if ACBrValidador.Validar then
        Application.MessageBox('ATEN��O!: RG DIGITADO - V�LIDO','"Preenchimento do Formul�rio', + MB_OK )
      else
      begin
        Application.MessageBox('ATEN��O!: RG DIGITADO - INV�LIDO','"ERRO" Preenchimento do Formul�rio', + MB_OK );
        edtUF.SetFocus;
      end;
    end;
  end;
  }
end;

procedure TfrmCliente.actCancelarExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCliente.actSalvar1Execute(Sender: TObject);
begin
  if edtNome.Text = '' then
  begin
    MostraAviso('NOME - Inv�lido');
    MostraAviso('O NOME deve ser "Inserido!"');
    edtNome.SetFocus;
    Exit;
  end;

  if not ValidarCPF(edtCPF.Text) then
  begin
    MostraAviso('O CPF/CNPJ deve ser "Inserido!"');
    edtCPF.SetFocus;
    Exit;
  end;

  if not ValidarUF(edtUF.Text) then
  begin
    MostraAviso('Consulte o seu CEP ou fa�a cadastro da sua CIDADE');
    begin
      lbect1.Visible := True;
      Exit;
    end;
  end;

  if not ValidarEmail(edtEmail.Text) then
  begin
    MostraAviso('O EMAIL deve ser "Inserido!"');
    Exit;
  end;

  if edtCidade.Text = '' then
  begin
    MostraAviso('CIDADE - Inv�lido');
    MostraAviso('Consulte o seu CEP ou fa�a cadastro da sua CIDADE');
    begin
      lbect1.Visible := True;
      Exit;
    end;
  end;

  ModalResult := mrOK;
end;


procedure TfrmCliente.actSearch1Execute(Sender: TObject);
begin
  if not ValidarCPF(edtCPF.Text) then
  begin
    edtCPF.SetFocus;
  end;

  if AnsiUpperCase(edtTipo.Text) = 'F�SICA' then
  begin
    lbCPF.Caption := 'CPF';
    edtCPF.EditMask := '999.999.999-99';
    Exit;
  end
  else
    lbCPF.Caption := 'CNPJ';
  edtCPF.EditMask := '99.999.999/9999-99';
  begin
    if edtCaptcha.Text <> '' then
    begin
      if ACBrConsultaCNPJ.Consulta(edtCPF.Text, edtCaptcha.Text,
        ckRmvEspcDuplos.Checked

        ) then
        // EditTipo.Text        := ACBrConsultaCNPJ1.EmpresaTipo;
        // EditRazaoSocial.Text := ACBrConsultaCNPJ1.RazaoSocial;
        // EditPorte.Text       := ACBrConsultaCNPJ1.Porte;

      edtFantasia.Text      := ACBrConsultaCNPJ.Fantasia;
      edtEnd.Text           := ACBrConsultaCNPJ.Endereco;
      edtNumEnd.Text        := ACBrConsultaCNPJ.Numero;
      edtEnd_Comple.Text    := ACBrConsultaCNPJ.Complemento;
      edtBairro.Text        := ACBrConsultaCNPJ.Bairro;
      edtEnd_Comple.Text    := ACBrConsultaCNPJ.Complemento;
      edtCidade.Text        := ACBrConsultaCNPJ.Cidade;
      edtUF.Text            := ACBrConsultaCNPJ.UF;
      edtCEP.Text           := ACBrConsultaCNPJ.CEP;
      edtTipo_Empresa.Text  := ACBrConsultaCNPJ.EmpresaTipo;
      // edtCNAE1.Text         := ACBrConsultaCNPJ1.CNAE1;
      edtEmail.Text := ACBrConsultaCNPJ.EndEletronico;
      lbRazaoSocial.Visible := True;
      lbRazaoSocial.Caption := ACBrConsultaCNPJ.RazaoSocial;

    end
    { ListCNAE2.Clear;
      for I := 0 to ACBrConsultaCNPJ1.CNAE2.Count - 1 do
      ListCNAE2.Items.Add(ACBrConsultaCNPJ1.CNAE2[I]);
    }
    else
    begin
      ShowMessage('� necess�rio digitar Captcha');
      edtCaptcha.SetFocus;
    end;
  end;
  ACBrCEP.BuscarPorCEP(edtCEP.Text);
end;

procedure TfrmCliente.ACBrCEPBuscaEfetuada(Sender: TObject);
var
  Consult: Integer;
begin

  if Trim(edtCEP.Text) <> EmptyStr then
  begin
    for Consult := 0 to ACBrCEP.Enderecos.Count - 1 do
    begin
      edtBairro.Text  := ACBrCEP.Enderecos[Consult].Bairro;
      edtCidade.Text  := ACBrCEP.Enderecos[Consult].Municipio;
      edtUF.Text      := ACBrCEP.Enderecos[Consult].UF;
      edtEnd.Text     := ACBrCEP.Enderecos[Consult].Logradouro;

      //frmConsulta.sqlCidadescod_ibge.AsInteger :=
      //StrToInt(ACBrCEP.Enderecos[Consult].IBGE_Municipio);
    end;
  end;
end;

procedure TfrmCliente.actSearch2Execute(Sender: TObject);
var
  Consult: Integer;
begin

  if not ValidarCEP(edtCEP.Text) then
  begin
    edtCEP.SetFocus;
  end;

  ACBrCEP.BuscarPorCEP(edtCEP.Text);
  edtNumEnd.SetFocus;




  JvMemoryList_City.Close;
  JvMemoryList_City.Open;

  For Consult := 0 to ACBrCEP.Enderecos.Count - 1 do
  begin
    JvMemoryList_City.Edit;
    JvMemoryList_CityCidade.AsString      := ACBrCEP.Enderecos[Consult].Municipio;
    JvMemoryList_CityBairro.AsString      := ACBrCEP.Enderecos[Consult].Bairro;
    JvMemoryList_CityCEP.AsString         := ACBrCEP.Enderecos[Consult].CEP;
    JvMemoryList_CityEnd.AsString         := ACBrCEP.Enderecos[Consult].Logradouro;
    JvMemoryList_CityUF.AsString          := ACBrCEP.Enderecos[Consult].UF;
    JvMemoryList_CityCod_IBGE.AsString    := ACBrCEP.Enderecos[Consult].IBGE_Municipio;
  end;

  if (JvMemoryList_City.RecordCount > 1) then
  begin
    frmConsulta_Cidades := TfrmConsulta_Cidades.Create(self);
    frmConsulta_Cidades.ShowModal;
    FreeAndNil(frmConsulta_Cidades);
  end;

  if not frmConsulta.sqlCidades.Locate('cod_ibge', JvMemoryList_CityCod_IBGE.Value, []) then
  begin

    frmConsulta := TfrmConsulta.Create(Self);
    frmConsulta.sqlCidades.Append;
    frmConsulta.sqlCidadesCidade.Value    := JvMemoryList_CityCidade.Value;
    frmConsulta.sqlCidadescod_ibge.Value  := JvMemoryList_CityCod_IBGE.AsString;
    frmConsulta.sqlCidadesUF.AsString     := JvMemoryList_CityUF.AsString;
    frmConsulta.sqlCidades.ApplyUpdates;

    if frmConsulta.ShowModal = mrOk then
    begin
      frmConsulta.sqlClientes.Edit;
      //frmConsulta.sqlClientesCidade.AsString  := frmConsulta.sqlCidadesCidade.AsString;
      //frmConsulta.sqlClientesUF.AsString      := frmConsulta.sqlCidadesUF.AsString;
      frmConsulta.sqlClientesID_Cidade.Value  := frmConsulta.sqlCidadesID.Value;
      frmConsulta.sqlClientes.ApplyUpdates;
    end;
  end;

  JvMemoryList_City.Close;

  // FreeAndNil(frmLista_Cidades);
end;

procedure TfrmCliente.actSearch3Execute(Sender: TObject);
begin
  //
end;

function TfrmCliente.SoNumeros(ATexto: String): String;
var
  x: Integer;
  y: String;
begin
  x := 0;
  y := '';
  for x := 1 to Length(ATexto) do
  begin
    if (ATexto[x] IN ['0' .. '9']) then
      y := y + Copy(ATexto, x, 1);
  end;
  result := y;
end;

procedure TfrmCliente.btnSalvarClick(Sender: TObject);
begin

  if edtNome.Text = '' then
  begin
    MostraAviso('Preenche novamente seu  "Nome"');
    edtNome.SetFocus;
    Exit;
  end;

  if not ValidarCPF(edtCPF.Text) then
  begin
    MostraAviso('Preenche novamente seu "CPF/CNPJ"');
    edtCPF.SetFocus;
    Exit;
  end;

  if not ValidarCEP(edtCEP.Text) then
  begin
    MostraAviso('Preenche novamente seu "CEP)"');
    edtCEP.SetFocus;
    Exit;
  end;

  if not ValidarUF(edtUF.Text) then
  begin
    MostraAviso('Preenche novamente seu "Estado(UF)"');
    edtUF.SetFocus;
    Exit;
  end;

  if not ValidarEmail(edtEmail.Text) then
  begin
    MostraAviso('Preenche novamente seu "Email"');
    Exit;
  end;

  ModalResult := mrOK;
end;

procedure TfrmCliente.btnSavlar1Click(Sender: TObject);
begin
  //
end;

procedure TfrmCliente.btnSearch1Click(Sender: TObject);
begin
  if not ValidarCPF(edtCPF.Text) then
  begin
    edtCPF.SetFocus;
  end;
  {
    var sNumeros : String;
    bValido : Boolean;
    begin
    sNumeros := SoNumeros(edtCPF.Text);
    bValido := False;
    if sNumeros <> '' then
    begin
    ACBrValidador.Documento := sNumeros;
    if Length(sNumeros) = 11 then
    ACBrValidador.TipoDocto := docCPF
    else
    ACBrValidador.TipoDocto := docCNPJ;
    bValido := ACBrValidador.Validar;
    end;

    if not bValido then
    begin
    Application.MessageBox('ATEN��O! CPF/CNPJ - INV�LIDO',' "ERRO" Preenchimento do Formul�rio', + MB_OK );
    edtCPF.SetFocus;
    end;
    end:
  }
end;

procedure TfrmCliente.btnSearch2Click(Sender: TObject);
begin
  if not ValidarCEP(edtCEP.Text) then
  begin
    edtCEP.SetFocus;
  end;
  {
    begin
    if not ValidarCEP(edtCEP.Text) then
    begin
    MostraAviso('CEP inv�lida.');
    edtCEP.SetFocus;
    end;

    if (edtCEP.Text) <> '' then
    begin
    ACBrValidador.Documento := edtCEP.Text;
    ACBrValidador.TipoDocto := docCEP;
    begin
    if ACBrValidador.Validar then
    Application.MessageBox('ATEN��O!: CEP DIGITADO - V�LIDO','"Preenchimento do Formul�rio', + MB_OK )
    else
    begin
    Application.MessageBox('ATEN��O!: CEP DIGITADO - INV�LIDO','"ERRO" Preenchimento do Formul�rio', + MB_OK );
    edtEmail.SetFocus;
    end;
    end;
    end;
    end;
  }
end;

procedure TfrmCliente.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
  Timer1.Enabled := False;
  lbAtualizarCaptchaClick(lbAtualizarCaptcha);
  edtCPF.SetFocus;
end;

end.
