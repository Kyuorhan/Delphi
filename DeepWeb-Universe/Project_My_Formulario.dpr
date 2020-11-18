program Project_My_Formulario;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  My_Layout in 'My_Layout.pas' {frmPrincipal},
  uCadastro_Clientes in 'Geral\Clientes\uCadastro_Clientes.pas' {frmCliente},
  uConsulta_Clientes in 'Geral\Clientes\uConsulta_Clientes.pas' {frmConsulta},
  uFuncoes in 'uFuncoes.pas',
  uFinanceiro in 'Financeiro\uFinanceiro.pas' {frmFinanceiro},
  uContas_Receber in 'Financeiro\Contas_Receber\uContas_Receber.pas' {frmContas_Receber},
  uContas_Receber_Pagtos in 'Financeiro\Contas_Receber\Contas_Receber_Pagtos\uContas_Receber_Pagtos.pas' {frmContas_Receber_Pagtos},
  uCaixa_Banco in 'Financeiro\Caixa_Banco\uCaixa_Banco.pas' {frmCaixa_Banco},
  uOpenCloses_Caixa in 'Financeiro\Caixa_Banco\OpenClose_Caixa\uOpenCloses_Caixa.pas' {frmOpenCloses_Caixa},
  uCadastro_OpenCloses in 'Financeiro\Caixa_Banco\OpenClose_Caixa\uCadastro_OpenCloses.pas' {frmCadastro_OpenCloses},
  uContas_Banco in 'Financeiro\Caixa_Banco\Contas_Banco\uContas_Banco.pas' {frmContas_Banco},
  uContas_Caixa in 'Financeiro\Caixa_Banco\Contas_Caixa\uContas_Caixa.pas' {frmContas_Caixa},
  uCadastro_Receber in 'Financeiro\Contas_Receber\uCadastro_Receber.pas' {frmCadastro_Receber},
  uConsulta_Cidades in 'Geral\Cidade\uConsulta_Cidades.pas' {frmConsulta_Cidades},
  uCadastro_Cidades in 'Geral\Cidade\uCadastro_Cidades.pas' {frmCadastro_Cidades},
  uGeral in 'Geral\uGeral.pas' {frmGeral},
  uEstoque in 'Estoque\uEstoque.pas' {frmEstoque},
  uConsulta_Produtos in 'Estoque\Produto\uConsulta_Produtos.pas' {frmConsulta_Produto},
  uCadastro_Produtos in 'Estoque\Produto\uCadastro_Produtos.pas' {frmCadastro_Produto},
  uConsulta_Venda in 'Estoque\Venda\uConsulta_Venda.pas' {frmConsulta_Venda},
  uConsulta_Grupos in 'Estoque\Grupo\uConsulta_Grupos.pas' {frmConsulta_Grupos},
  uCadastro_Grupos in 'Estoque\Grupo\uCadastro_Grupos.pas' {frmCadastro_Grupos},
  uConsulta_Unid_Medidas in 'Estoque\Unidade_Medidas\uConsulta_Unid_Medidas.pas' {frmConsulta_Unid_Medidas},
  uCadastro_Unid_Medidas in 'Estoque\Unidade_Medidas\uCadastro_Unid_Medidas.pas' {frmCadastro_Unid_Medidas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;

end.
