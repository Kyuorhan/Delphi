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


-- Copiando estrutura do banco de dados para my_test
CREATE DATABASE IF NOT EXISTS `my_test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `my_test`;

-- Copiando estrutura para tabela my_test.caixas
CREATE TABLE IF NOT EXISTS `caixas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `caixa` varchar(30) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Copiando dados para a tabela my_test.caixas: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `caixas` DISABLE KEYS */;
INSERT INTO `caixas` (`id`, `caixa`, `ativo`) VALUES
	(1, 'CAIXA EMPRESA - MENSAL', 'S'),
	(3, 'CAIXA TOPSAPP WEB', 'S'),
	(4, 'CAIXA TEST - DIÁRIA', 'S'),
	(6, 'CAIXA EMPRESA - DIÁRIA', 'S'),
	(7, 'CAIXA TEST', 'S'),
	(9, 'CAIXA TOPSAPP WEB - MENSAL', 'S'),
	(10, 'CAIXA TOPSAPP WEB - DIÁRIA', 'S'),
	(11, 'CAIXA TWSPEED WEB - MENSAL', 'S'),
	(12, 'CAIXA TWSPEED WEB - DIÁRIA', 'S'),
	(13, 'CAIXA TWSPEED WEB ', 'S'),
	(14, 'CAIXA TEST - MENSAL', 'S'),
	(17, 'test1', 'S'),
	(20, 'test2', 'S'),
	(21, 'CAIXA EMPRESA', 'S'),
	(24, 'CAIXA TOPSAPP WEB - TESTE', 'N'),
	(26, 'CAIXA TWSPEED WEB - TESTE', 'N'),
	(27, 'CAIXA EMPRESA - TESTE', 'N');
/*!40000 ALTER TABLE `caixas` ENABLE KEYS */;

-- Copiando estrutura para tabela my_test.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `num_end` varchar(20) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Copiando dados para a tabela my_test.clientes: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id`, `nome`, `sexo`, `endereco`, `num_end`, `data_nascimento`) VALUES
	(1, 'John Berg', 'MASCULINO', 'Rua dos Angicos', '1006', '1996-12-30'),
	(2, 'Yago Murilo Diogo Castro', 'MASCULINO', 'Avenida Abel Dal Bosco', '991', '1990-07-20'),
	(3, 'Rayssa Stefany Emily da Conceição', 'FEMENINO', 'Rua Três Mil e Quinhentos', '695', '1990-03-16'),
	(4, 'Isadora Sueli da Rosa', 'FEMENINO', 'Rua Cabo Manoel Augustinho Nascimento', '902', '1990-01-15'),
	(5, 'Tatiana Assmann Meinerz Eireli - EPP', 'FEMENINO', 'Rua das Cerejeiras', '1987', '1975-12-30'),
	(6, 'Noah Joaquim da Cruz', 'MASCULINO', 'Avenida Cuiabá 35 Setor C', '934', '1985-11-11'),
	(7, 'Débora Andrea Gonçalves', 'FEMENINO', 'Avenida Mestre Falcão 343', '755', '1985-11-25'),
	(8, 'Catarina Sophia Débora Carvalho', 'MASCULINO', 'Rua Gal Costa', '559', '1987-12-20'),
	(9, 'Hugo Thales Moreira', 'MASCULINO', 'Rua Tapiriri', '671', '1987-04-20');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela my_test.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_clientes` int(11) DEFAULT 0,
  `data` date DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT 0.00,
  `desc` decimal(10,2) DEFAULT 0.00,
  `valor_total` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`id`),
  KEY `id_clientes` (`id_clientes`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela my_test.pedidos: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` (`id`, `id_clientes`, `data`, `nome`, `valor`, `desc`, `valor_total`) VALUES
	(1, 1, '2020-12-16', 'John Berg', 9250.00, 1500.00, 7750.00),
	(2, 2, '2020-12-18', 'Yago Murilo Diogo Castro', 6020.00, 600.00, 5420.00),
	(3, 1, '2020-12-22', 'John Berg', 360.00, 0.00, 360.00),
	(4, 3, '2020-12-22', 'Rayssa Stefany Emily da Conceição', 2560.00, 240.00, 2320.00),
	(5, 4, '2020-12-24', 'Isadora Sueli da Rosa', 2680.00, 260.00, 2420.00),
	(6, 2, '2020-12-26', 'Yago Murilo Diogo Castro', 780.00, 100.00, 680.00),
	(7, 5, '2020-12-28', 'Tatiana Assmann Meinerz Eireli - EPP', 8000.00, 1200.00, 6800.00),
	(8, 7, '2021-01-02', 'Débora Andrea Gonçalves', 6260.00, 660.00, 5600.00),
	(9, 5, '2021-01-02', 'Tatiana Assmann Meinerz Eireli - EPP', 12360.00, 3300.00, 9060.00),
	(10, 8, '2021-01-04', 'Catarina Sophia Débora Carvalho', 3440.00, 280.00, 3160.00),
	(11, 6, '2021-01-05', 'Noah Joaquim da Cruz', 5440.00, 540.00, 4900.00),
	(12, 1, '2021-01-06', 'John Berg', 3440.00, 280.00, 3440.00);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;

-- Copiando estrutura para tabela my_test.pedidos_itens
CREATE TABLE IF NOT EXISTS `pedidos_itens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedidos` int(11) NOT NULL,
  `produto` varchar(120) DEFAULT '',
  `valor` decimal(10,2) DEFAULT 0.00,
  `qtde` int(11) DEFAULT 0,
  `total` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`id`),
  KEY `id_pedidos` (`id_pedidos`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela my_test.pedidos_itens: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `pedidos_itens` DISABLE KEYS */;
INSERT INTO `pedidos_itens` (`id`, `id_pedidos`, `produto`, `valor`, `qtde`, `total`) VALUES
	(101, 1, 'MONITOR / 4K / UHD - 144Hz ', 2210.00, 1, 2210.00),
	(102, 1, 'NOTEBOOK / DELL G5 / i7 Intel 9G 4.5Ghz / GTX 1660 TI', 6260.00, 1, 6260.00),
	(103, 1, 'TECLADO / MECANICO / RGB - COLLERS FULL', 780.00, 1, 780.00),
	(104, 2, 'FONTE NOBREAK', 360.00, 1, 360.00),
	(105, 2, 'COMPUTADOR / ASUS / i7 Intel 9G 4.5Ghz / GTX 1660 TI', 5660.00, 1, 5660.00),
	(106, 1, 'FONTE NOBREAK', 360.00, 1, 360.00),
	(107, 3, 'CELULAR / SAMSUNG / GALAXY / S10 - 128GB', 2560.00, 1, 2650.00),
	(108, 4, 'CELULAR / SAMSUNG / GALAXY / A71 - 128GB', 2680.00, 1, 2680.00),
	(109, 2, 'TECLADO / MECANICO / RGB - COLLERS FULL', 780.00, 1, 780.00),
	(110, 5, 'TECLADO / MECANICO / RGB - COLLERS FULL', 780.00, 2, 1560.00),
	(111, 5, 'COMPUTADOR / ASUS / i7 Intel 9G 4.5Ghz / GTX 1660 TI', 5660.00, 1, 5660.00),
	(112, 7, 'NOTEBOOK / DELL G5 / i7 Intel 9G 4.5Ghz / GTX 1660 TI', 6260.00, 1, 6260.00),
	(113, 5, 'FONTE NOBREAK', 360.00, 2, 720.00),
	(119, 5, 'MONITOR / 4K / UHD - 144Hz ', 2210.00, 2, 4420.00),
	(120, 5, 'NOTEBOOK / DELL G7/ i7 Intel 9G 4.5Ghz / GTX 1660 TI', 7220.00, 1, 7220.00),
	(121, 8, 'CELULAR / XIAOMI / M9 - PRO 256GB', 3440.00, 1, 3440.00),
	(122, 6, 'NOTEBOOK / ASUS / i7 Intel 9G 4.5Ghz / GTX 1050 TI', 5440.00, 1, 5440.00),
	(123, 1, 'CELULAR / XIAOMI / M9 - PRO 256GB', 3440.00, 1, 3440.00);
/*!40000 ALTER TABLE `pedidos_itens` ENABLE KEYS */;

-- Copiando estrutura para tabela my_test.plano_contas
CREATE TABLE IF NOT EXISTS `plano_contas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `plano_contas` varchar(60) DEFAULT NULL,
  `estrutura` varchar(30) DEFAULT NULL,
  `situacao` char(1) DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela my_test.plano_contas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plano_contas` DISABLE KEYS */;
/*!40000 ALTER TABLE `plano_contas` ENABLE KEYS */;

-- Copiando estrutura para tabela my_test.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto` varchar(80) DEFAULT NULL,
  `preco_compra` decimal(10,2) DEFAULT NULL,
  `preco_venda` decimal(10,2) DEFAULT NULL,
  `margem_lucro` decimal(10,3) DEFAULT NULL,
  `cod_barras` varchar(30) DEFAULT NULL,
  `cod_referencias` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Copiando dados para a tabela my_test.produtos: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` (`id`, `produto`, `preco_compra`, `preco_venda`, `margem_lucro`, `cod_barras`, `cod_referencias`) VALUES
	(1, 'ADAPTADOR OPTICO SC/UPC SEM ABA', 100.00, 123.00, 123.000, '96822456', '111111111111'),
	(2, 'ANTENA PAINEL SETORIAL 5.8 ', 123.00, 200.00, 77.000, '68838411', 'BBBB'),
	(3, 'CABO FIBRA ÓTICA ', 8.00, 12.00, 4.000, '55873440', 'ASD'),
	(4, 'CABO OPTICO CFOAC-BLI-A/B-CM-01-AR-LSZH PR - BOBINA', 0.65, 0.85, 0.200, '18006811', '1231J1N1NS'),
	(5, 'CABO OPTICO CFOA-SM-AS80', 128.00, 129.27, 1.270, '99667581', '122AAEDW11'),
	(6, 'CAIXA DE ATENDIMENTO ÓPTICA', 94.50, 109.50, 15.000, '45688070', '123SS13412'),
	(7, 'CAIXA DE EMENDA FIBRA ÓPTICA FIBRACEM 24 F SVM (7A12)', 190.00, 214.52, 24.520, '72239011', '123FGG144'),
	(8, 'COMPUTADORES', 3200.50, 3376.25, 175.750, '78695524', '123ZA123S'),
	(9, 'DIO DISTRIBUIDOR INTERNO ÓPTICO', 400.00, 425.00, 25.000, '65695521', 'LLKK1I2311'),
	(10, 'DROP COMPACTO FIG.8 LOW FRICTION', 1200.00, 1500.00, 300.000, '28224569', 'K3888I122'),
	(11, 'ESCADA DUPLA ESTICAVEL 13 DEGRAUS', 600.00, 690.00, 90.000, '96556687', '345FF3533'),
	(12, 'FITA M-TAPE M-231 12MM PRETO SOBRE BRANCO ROLO 8M', 59.00, 64.90, 5.900, '55202144', 'QQ12EW1W'),
	(13, 'FONTE NOBREAK', 357.00, 374.84, 17.840, '42324490', '44K2L2DDSA'),
	(14, 'GABINETE 1 PARA PAC-EPON', 96.60, 151.35, 54.750, '00214502', '5456GG344'),
	(15, 'OLT HUAWEI', 199.90, 460.40, 260.500, '91004752', '55G2B3DD3'),
	(16, 'ONU GPON AN5506-02B', 59.00, 276.00, 217.000, '75112543', '123DD213D'),
	(17, 'ONU GPON HUAWEI', 161.40, 180.72, 19.320, '47882014', '23SSS312'),
	(18, 'P H2I BOB CABO', 522.32, 580.00, 57.680, '94318346', '44GTFR77'),
	(20, 'SPLITTER 1X2 DESBALANCEADO 20/80 - FIBRA OPTICA COM PRISMA DIVISOR DE FOTONS 1X2', 40.91, 60.91, 20.000, '79922434', ''),
	(21, 'SPLITTER 1X2 DESBALANCEADO 5/95 - FIBRA OPTICA COM PRISMA DIVISOR DE FOTONS 1X2 ', 40.91, 65.91, 25.000, '77581394', ''),
	(22, 'SPLITTER 1X2 DESBALANCEADO 90/10 - FIBRA OPTICA COM PRISMA DIVISOR DE FOTONS 1X2', 40.91, 85.91, 45.000, '93211080', ''),
	(27, 'MONITOR / LED - 1080P/ 60HZ', 1863.00, 2158.00, 295.000, '', '');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;

-- Copiando estrutura para tabela my_test.receber
CREATE TABLE IF NOT EXISTS `receber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT 0.00,
  `historico` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela my_test.receber: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `receber` DISABLE KEYS */;
INSERT INTO `receber` (`id`, `nome`, `vencimento`, `valor`, `historico`) VALUES
	(1, 'John Berg', '2021-01-12', 100.00, 'TV/CANAL - PREMIUM/FULL HD'),
	(2, 'Rayssa Stefany Emily da Conceição', '2021-01-24', 180.00, 'FIBRA/INTERNET - 180MB + TV/CANAL - PREMIUM'),
	(3, 'Catarina Sophia Débora Carvalho', '2020-12-27', 280.00, 'FIBRA/INTERNET - 320MB + TV/CANAL - PREMIUM'),
	(4, 'Hugo Thales Moreira', '2021-01-06', 240.00, 'FIBRA/INTERNET - 240MB + TV/CANAL - PREMIUM'),
	(5, 'Yago Murilo Diogo Castro', '2021-01-24', 280.00, 'FIBRA/INTERNET - 320MB + TV/CANAL - PREMIUM'),
	(6, 'Isadora Sueli da Rosa', '2021-01-06', 240.00, 'FIBRA/INTERNET - 240MB + TV/CANAL - PREMIUM'),
	(7, 'Débora Andrea Gonçalves', '2021-01-19', 280.00, 'FIBRA/INTERNET - 320MB + TV/CANAL - PREMIUM');
/*!40000 ALTER TABLE `receber` ENABLE KEYS */;

-- Copiando estrutura para tabela my_test.tipo_documentos
CREATE TABLE IF NOT EXISTS `tipo_documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela my_test.tipo_documentos: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_documentos` DISABLE KEYS */;
INSERT INTO `tipo_documentos` (`id`, `documento`) VALUES
	(1, 'DINHEIRO'),
	(2, 'BOLETO'),
	(3, 'CARNÊ'),
	(4, 'DUPLICATA'),
	(5, 'CARTÃO DE CRÉDITO'),
	(6, 'CARTÃO DE DÉBITO'),
	(7, 'CHEQUE');
/*!40000 ALTER TABLE `tipo_documentos` ENABLE KEYS */;

-- Copiando estrutura para tabela my_test.vendas
CREATE TABLE IF NOT EXISTS `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento_id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `qtd` decimal(10,3) DEFAULT 0.000,
  `total` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`id`),
  KEY `id_documento` (`documento_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela my_test.vendas: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` (`id`, `documento_id`, `data`, `descricao`, `qtd`, `total`) VALUES
	(1, 1, '2020-10-02', 'Sabonete', 85.000, 350.00),
	(2, 1, '2020-10-02', 'Sabão Pedra', 35.000, 250.00),
	(3, 4, '2020-09-02', 'Celular', 4.000, 8000.00),
	(4, 2, '2020-11-02', 'Tablet', 2.000, 1500.00),
	(5, 5, '2020-09-02', 'Notebook Gamer', 4.000, 16000.00),
	(6, 1, '2020-08-02', 'Capinha de Celular', 60.000, 600.00),
	(7, 4, '2020-08-02', 'Mouse Pad', 3.000, 275.00),
	(8, 2, '2020-08-02', 'Teclado Mecanico', 1.000, 1250.00),
	(9, 5, '2020-08-02', 'Monitor Full HD', 2.000, 4100.00),
	(10, 5, '2020-10-02', 'Monitor 4K', 3.000, 7200.00),
	(11, 5, '2020-11-02', 'TV 4K', 3.000, 8800.00),
	(12, 5, '2020-09-02', 'Iphone 11x', 2.000, 9000.00);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
