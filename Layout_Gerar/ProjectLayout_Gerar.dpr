program ProjectLayout_Gerar;

uses
  Vcl.Forms,
  Layout_Gerar in 'Layout_Gerar.pas' {frmLayout_Gerar},
  frameLocalizar_Cliente in 'frameLocalizar_Cliente.pas' {frameLocalizaCliente: TFrame},
  uClientes_Pesquisa in 'Cliente\uClientes_Pesquisa.pas' {fClientes_Pesquisa},
  uFuncoes_Gerais in 'funcoes_gerais\uFuncoes_Gerais.pas',
  udmPrincipal in 'data_modules\udmPrincipal.pas' {dmPrincipal: TDataModule},
  udmClientes in 'data_modules\udmClientes.pas' {dmCliente: TDataModule},
  uClientes_Cadastro in 'Cliente\uClientes_Cadastro.pas' {fCliente_Cadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLayout_Gerar, frmLayout_Gerar);
  Application.CreateForm(TfClientes_Pesquisa, fClientes_Pesquisa);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TdmCliente, dmCliente);
  Application.CreateForm(TfCliente_Cadastro, fCliente_Cadastro);
  Application.Run;
end.
