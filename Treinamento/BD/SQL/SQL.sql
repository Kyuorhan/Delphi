-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.5.5-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para jhonny
CREATE DATABASE IF NOT EXISTS `jhonny` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jhonny`;

-- Copiando estrutura para tabela jhonny.caixa
CREATE TABLE IF NOT EXISTS `caixa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` varchar(75) DEFAULT NULL,
  `tipo_contas` varchar(30) DEFAULT NULL,
  `tipo_pagamento` varchar(30) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `troco` decimal(10,2) DEFAULT NULL,
  `prev_fechamento` date DEFAULT NULL,
  `open_date` date DEFAULT NULL,
  `close_date` date DEFAULT NULL,
  `status_usuario` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='caixa';

-- Copiando dados para a tabela jhonny.caixa: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `caixa` DISABLE KEYS */;
INSERT INTO `caixa` (`id`, `nome`, `descricao`, `tipo_contas`, `tipo_pagamento`, `valor`, `data`, `saldo`, `troco`, `prev_fechamento`, `open_date`, `close_date`, `status_usuario`) VALUES
	(1, 'Mauro Mora', 'FIBRA/INTERNET280MB', 'FECHAM. DIÁRIO', 'DÉBITO', 240.00, '2020-09-18', 240.00, 240.00, '2020-09-18', '2020-09-09', '2020-09-17', 'ABERTO'),
	(2, 'Michael Heming', 'FIBRA/INTERNET120MB', 'FECHAM. DIÁRIO', 'CRÉDITO', 100.00, '2020-09-18', 100.00, 100.00, '2020-09-18', '2020-09-10', '2020-09-19', 'ABERTO'),
	(3, 'Gabriel Marcato', 'FIBRA/INTERNET500MB', 'FECHAM. MENSAL', 'DÉBITO', 380.00, '2020-09-18', 380.00, 380.00, '2020-09-18', '2020-09-02', '2020-09-11', 'FECHADO'),
	(4, 'John Berg', 'FIBRA/INTERNET120MB', 'FECHAM. MENSAL', 'CRÉDITO', 80.00, '2020-09-18', 80.00, 80.00, '2020-09-18', '2020-09-02', '2020-09-11', 'FECHADO'),
	(6, 'Joemil AD BRAX', 'TV - FIBRA/INTERNET 240MB', 'FECHAM. DIÁRIO', 'CRÉDITO', 186.00, '2020-09-24', 186.00, 186.00, '2020-09-24', '2020-08-18', '2020-09-18', 'ABERTO');
/*!40000 ALTER TABLE `caixa` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.cidades
CREATE TABLE IF NOT EXISTS `cidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cidade` varchar(50) DEFAULT NULL,
  `uf` char(8) DEFAULT NULL,
  `cod_ibge` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.cidades: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` (`id`, `cidade`, `uf`, `cod_ibge`) VALUES
	(1, 'Sinop', 'MT', '5107909'),
	(2, 'Cuiabá', 'MT', '5103403'),
	(3, 'Sinop', 'MT', '5107909'),
	(4, 'Sinop', 'MT', '5107909'),
	(5, 'Sinop', 'MT', '5107909'),
	(6, 'Sinop', 'MT', '5107909'),
	(7, 'Cuiabá', 'MT', '5103403'),
	(8, 'Sinop', 'MT', '5107909'),
	(9, 'Sinop', 'MT', '5107909'),
	(10, 'Rondonópolis', 'MT', '5107602'),
	(11, 'Querência', 'MT', '5107065'),
	(12, 'Novo Horizonte do Norte', 'MT', '5106273');
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cidade` int(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `num_end` varchar(20) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `insc_estadual` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cidade` (`id_cidade`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.clientes: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id`, `id_cidade`, `nome`, `tipo`, `sexo`, `cpf`, `rg`, `cep`, `endereco`, `num_end`, `bairro`, `complemento`, `insc_estadual`, `celular`, `telefone`, `email`, `data_nascimento`, `data_cadastro`) VALUES
	(1, NULL, 'John Berg', 'FÍSICA', 'MASCULINO', '062.037.061-08', '  .   .   - ', '78555-012', 'Rua dos Angicos', '1006', 'Jardim Imperial', NULL, '   .   .   .   ', '(  )     -    ', '(  )     -    ', 'JohnBerg@jb.com', '1899-12-30', '2020-11-30'),
	(2, NULL, 'Yago Murilo Diogo Castro', 'FÍSICA', 'MASCULINO', '226.463.141-40', '42.864.951-8', '78550-702', 'Avenida Abel Dal Bosco', '991', 'Residencial Cidade Jardim', NULL, '   .   .   .   ', '(  )     -    ', '(  )     -    ', 'yagomurilodiogocastro@zootecnista.com.br', '1990-07-20', '2020-11-30'),
	(3, NULL, 'Rayssa Stefany Emily da Conceição', 'FÍSICA', 'FEMENINO', '963.081.901-52', '29.827.447-4', '78075-765', 'Rua Três Mil e Quinhentos', '695', 'Jardim Imperial', NULL, '   .   .   .   ', '(  )     -    ', '(  )     -    ', 'rayssastefanyemilydaconceicao@bakerhughes.com', '1990-03-16', '2020-11-30'),
	(4, NULL, 'Isadora Sueli da Rosa', 'FÍSICA', 'FEMENINO', '200.654.981-27', '22.379.184-2', '78555-120', 'Rua Cabo Manoel Augustinho Nascimento', '902', 'Residencial Vitória Régia', NULL, '   .   .   .   ', '(  )     -    ', '(  )     -    ', 'isadorasuelidarosa_@capua.com.br', '1990-01-15', '2020-11-30'),
	(5, NULL, 'Tatiana Assmann Meinerz Eireli - EPP', 'JURÍDICA', 'FEMENINO', '05.825.100/0001-70', '  .   .   - ', '78556-106', 'Rua das Cerejeiras', '1987', 'Jardim Paraíso', NULL, '   .   .   .   ', '(  )     -    ', '(  )     -    ', 'ESCRINORTE@ESCRINORTE.COM.BR', '1899-12-30', '2020-11-30'),
	(6, NULL, 'Noah Joaquim da Cruz', 'FÍSICA', 'MASCULINO', '697.711.521-14', '19.741.844-2', '78643-970', 'Avenida Cuiabá 35 Setor C', '934', 'Centro', NULL, '   .   .   .   ', '(  )     -    ', '(  )     -    ', 'noahjoaquimdacruz-80@webin.com.br', '1985-11-11', '2020-11-30'),
	(7, NULL, 'Débora Andrea Gonçalves', 'FÍSICA', 'FEMENINO', '901.200.421-77', '10.823.436-8', '78570-970', 'Avenida Mestre Falcão 343', '755', 'Centro', NULL, '   .   .   .   ', '(  )     -    ', '(  )     -    ', 'deboraandreagoncalves@sha.com.br', '1985-11-25', '2020-11-30');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.contas_receber
CREATE TABLE IF NOT EXISTS `contas_receber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_documento` int(11) DEFAULT NULL,
  `descricao` varchar(65) DEFAULT NULL,
  `data_documento` date DEFAULT NULL,
  `data_vencimento` date DEFAULT NULL,
  `valor` decimal(18,2) NOT NULL DEFAULT 0.00,
  `desconto` decimal(18,2) NOT NULL DEFAULT 0.00,
  `pago` char(1) DEFAULT 'N',
  `data_cadastro` date DEFAULT NULL,
  `obs_quitacao` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `ndx_cliente` (`id_cliente`) USING BTREE,
  KEY `ndx_documento` (`id_documento`) USING BTREE,
  KEY `ndx_data_vencimento` (`data_vencimento`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.contas_receber: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `contas_receber` DISABLE KEYS */;
INSERT INTO `contas_receber` (`id`, `id_cliente`, `id_documento`, `descricao`, `data_documento`, `data_vencimento`, `valor`, `desconto`, `pago`, `data_cadastro`, `obs_quitacao`) VALUES
	(1, 1, 1, 'FIBRA/INTERNET - 320MB', '2020-11-05', '2020-11-18', 200.00, 0.00, 'N', NULL, NULL),
	(2, 2, 2, 'FIBRA/INTERNET - 240MB', '2020-11-07', '2020-11-28', 160.00, 0.00, 'N', '2020-11-30', NULL),
	(3, 3, 1, 'FIBRA/INTERNET - 320MB', '2020-11-30', '2020-12-10', 200.00, 0.00, 'S', '2020-11-30', NULL),
	(4, 1, 2, 'FIBRA/INTERNET - 420MB', '2020-11-13', '2020-11-30', 280.00, 0.00, 'N', '2020-11-30', NULL),
	(5, 5, 1, 'FIBRA/INTERNET - 240MB', '2020-11-05', '2020-11-19', 160.00, 0.00, 'S', '2020-11-30', NULL),
	(6, 6, 2, 'FIBRA/INTERNET - 320MB', '2020-11-05', '2020-11-19', 200.00, 0.00, 'N', '2020-11-30', NULL),
	(7, 7, 1, 'FIBRA/INTERNET - 320MB', '2020-11-30', '2020-12-16', 200.00, 0.00, 'N', '2020-11-30', NULL);
/*!40000 ALTER TABLE `contas_receber` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.contas_receber_pagtos
CREATE TABLE IF NOT EXISTS `contas_receber_pagtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_contas_receber` int(11) DEFAULT 0,
  `data_pagamento` date NOT NULL,
  `dias_atraso` int(11) NOT NULL DEFAULT 0,
  `juros` decimal(18,2) NOT NULL DEFAULT 0.00,
  `desconto` decimal(18,2) NOT NULL,
  `total_pagar` decimal(10,0) NOT NULL DEFAULT 0,
  `valor_pago` decimal(18,2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_contas_receber` (`id_contas_receber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.contas_receber_pagtos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contas_receber_pagtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contas_receber_pagtos` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.moviment_contas
CREATE TABLE IF NOT EXISTS `moviment_contas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_documento` varchar(20) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `valor` decimal(18,2) NOT NULL,
  `tipo` char(1) NOT NULL,
  `dt_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.moviment_contas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `moviment_contas` DISABLE KEYS */;
/*!40000 ALTER TABLE `moviment_contas` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_vendedores` int(11) DEFAULT NULL,
  `id_clientes` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `total_produtos` decimal(10,2) DEFAULT NULL,
  `desconto` decimal(10,3) DEFAULT NULL,
  `desconto_valor` decimal(10,2) DEFAULT NULL,
  `total_pagar` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_vendedores` (`id_vendedores`),
  KEY `id_clientes` (`id_clientes`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.pedidos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` (`id`, `id_vendedores`, `id_clientes`, `data`, `total_produtos`, `desconto`, `desconto_valor`, `total_pagar`) VALUES
	(1, NULL, NULL, NULL, 3376.25, NULL, NULL, NULL),
	(2, NULL, 6, '2020-11-23', 3376.25, 20.000, 675.25, 2701.00);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.pedidos_itens
CREATE TABLE IF NOT EXISTS `pedidos_itens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedidos` int(11) DEFAULT NULL,
  `id_produtos` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `qtde` decimal(10,3) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pedidos` (`id_pedidos`),
  KEY `id_produtos` (`id_produtos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.pedidos_itens: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `pedidos_itens` DISABLE KEYS */;
INSERT INTO `pedidos_itens` (`id`, `id_pedidos`, `id_produtos`, `valor`, `qtde`, `total`) VALUES
	(1, 0, 5, 129.27, 1.000, 3376.25),
	(2, 0, 15, 460.40, 1.000, 3376.25),
	(3, NULL, 13, 374.84, 1.000, 0.00);
/*!40000 ALTER TABLE `pedidos_itens` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto_grupo` int(11) DEFAULT NULL,
  `id_unid_medidas` int(11) DEFAULT NULL,
  `produto` varchar(80) DEFAULT NULL,
  `cod_barras` varchar(30) DEFAULT NULL,
  `cod_referencias` varchar(30) DEFAULT NULL,
  `preco_compra` decimal(10,2) DEFAULT NULL,
  `preco_venda` decimal(10,2) DEFAULT NULL,
  `margem_lucro` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_unid_medidas` (`id_unid_medidas`),
  KEY `id_produto_grupo` (`id_produto_grupo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.produtos: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` (`id`, `id_produto_grupo`, `id_unid_medidas`, `produto`, `cod_barras`, `cod_referencias`, `preco_compra`, `preco_venda`, `margem_lucro`) VALUES
	(1, 2, 9, 'ADAPTADOR OPTICO SC/UPC SEM ABA', '111111111', '111111111111', 100.00, 123.00, 123.000),
	(2, 3, 8, 'ANTENA PAINEL SETORIAL 5.8 ', 'AAAA', 'BBBB', 123.00, 200.00, 77.000),
	(3, 6, 9, 'CABO FIBRA ÓTICA ', 'ASD', 'ASD', 8.00, 12.00, 4.000),
	(4, 6, 9, 'CABO OPTICO CFOAC-BLI-A/B-CM-01-AR-LSZH PR - BOBINA', 'A12H23H1G', '1231J1N1NS', 0.65, 0.85, 0.200),
	(5, 6, 9, 'CABO OPTICO CFOA-SM-AS80', 'AA23ST1TDS', '122AAEDW11', 128.00, 129.27, 1.270),
	(6, 11, 8, 'CAIXA DE ATENDIMENTO ÓPTICA', 'AA43134FF2', '123SS13412', 94.50, 109.50, 15.000),
	(7, 8, 8, 'CAIXA DE EMENDA FIBRA ÓPTICA FIBRACEM 24 F SVM (7A12)', 'GGH12341', '123FGG144', 190.00, 214.52, 24.520),
	(8, 1, 8, 'COMPUTADORES', 'ASD3311DSA', '123ZA123S', 3200.50, 3376.25, 175.750),
	(9, 13, 8, 'DIO DISTRIBUIDOR INTERNO ÓPTICO', 'KJKFÇPLÇ12', 'LLKK1I2311', 400.00, 425.00, 25.000),
	(10, 9, 9, 'DROP COMPACTO FIG.8 LOW FRICTION', 'KK23K8K8K', 'K3888I122', 1200.00, 1500.00, 300.000),
	(11, 17, 8, 'ESCADA DUPLA ESTICAVEL 13 DEGRAUS', 'KLKHLF3543', '345FF3533', 600.00, 690.00, 90.000),
	(12, 9, 9, 'FITA M-TAPE M-231 12MM PRETO SOBRE BRANCO ROLO 8M', 'JJ34599JA', 'QQ12EW1W', 59.00, 64.90, 5.900),
	(13, 17, 8, 'FONTE NOBREAK', 'CCE4RLK22', '44K2L2DDSA', 357.00, 374.84, 17.840),
	(14, 17, 8, 'GABINETE 1 PARA PAC-EPON', 'HH567J4GGF', '5456GG344', 96.60, 151.35, 54.750),
	(15, 9, 8, 'OLT HUAWEI', 'GG644K54M', '55G2B3DD3', 199.90, 460.40, 260.500),
	(16, 8, 8, 'ONU GPON AN5506-02B', 'FF234D144', '123DD213D', 59.00, 276.00, 217.000),
	(17, 9, 8, 'ONU GPON HUAWEI', 'KK45723KKD', '23SSS312', 161.40, 180.72, 19.320),
	(18, 7, 7, 'P H2I BOB CABO', 'FF78J224', '44GTFR77', 522.32, 580.00, 57.680),
	(20, 18, 8, 'SPLITTER 1X2 DESBALANCEADO 20/80 - FIBRA OPTICA COM PRISMA DIVISOR DE FOTONS 1X2', '', '', 40.91, 60.91, 20.000),
	(21, 18, 8, 'SPLITTER 1X2 DESBALANCEADO 5/95 - FIBRA OPTICA COM PRISMA DIVISOR DE FOTONS 1X2 ', '', '', 40.91, 65.91, 25.000),
	(22, 18, 8, 'SPLITTER 1X2 DESBALANCEADO 90/10 - FIBRA OPTICA COM PRISMA DIVISOR DE FOTONS 1X2', '', '', 40.91, 85.91, 45.000);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.produtos_grupo
CREATE TABLE IF NOT EXISTS `produtos_grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produtos_grupo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.produtos_grupo: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `produtos_grupo` DISABLE KEYS */;
INSERT INTO `produtos_grupo` (`id`, `produtos_grupo`) VALUES
	(1, 'TOPSAPP'),
	(2, 'GRUPO CIDADE SINOP'),
	(3, 'GRUPO CIDADE PEIXOTO'),
	(4, 'GRUPO CIDADE SORRISO'),
	(5, 'CONECTORES'),
	(6, 'CABOS'),
	(7, 'ANTENAS'),
	(8, 'FTTX'),
	(9, 'FTTH'),
	(10, 'GRUPO SUPORTE'),
	(11, 'TOPMAPS'),
	(12, 'GRUPO CIDADE CUIABA'),
	(13, 'GRUPO TOPMAPS'),
	(14, 'GRUPO TOPSAPP'),
	(15, 'GRUPO ADBRAX'),
	(17, 'OUTROS'),
	(18, 'INFRAESTRUTURA');
/*!40000 ALTER TABLE `produtos_grupo` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.tipos_documentos
CREATE TABLE IF NOT EXISTS `tipos_documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.tipos_documentos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tipos_documentos` DISABLE KEYS */;
INSERT INTO `tipos_documentos` (`id`, `documento`) VALUES
	(1, 'DINHEIRO'),
	(2, 'BOLETO'),
	(3, 'CARNÊ'),
	(4, 'DUPLICATA');
/*!40000 ALTER TABLE `tipos_documentos` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.unid_medidas
CREATE TABLE IF NOT EXISTS `unid_medidas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unid_medida` varchar(30) DEFAULT NULL,
  `abrev` char(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.unid_medidas: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `unid_medidas` DISABLE KEYS */;
INSERT INTO `unid_medidas` (`id`, `unid_medida`, `abrev`) VALUES
	(7, 'CENTIMENTROS', 'CM'),
	(8, 'UNIDADE', 'UN'),
	(9, 'METROS', 'M'),
	(10, 'TONELADAS', 'TON'),
	(11, 'KILO', 'K'),
	(12, 'PECAS', 'PC');
/*!40000 ALTER TABLE `unid_medidas` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Copiando estrutura para tabela jhonny.vendedores
CREATE TABLE IF NOT EXISTS `vendedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendedor` varchar(60) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela jhonny.vendedores: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` (`id`, `vendedor`, `comissao`) VALUES
	(1, 'Michael Hemming', 0.00),
	(2, 'Mauro Moura', 0.00),
	(3, 'Gabriel Neves', 0.00),
	(4, 'Gabriel da Silva', 0.00);
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
