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


-- Copiando estrutura do banco de dados para sistema
CREATE DATABASE IF NOT EXISTS `sistema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sistema`;

-- Copiando estrutura para tabela sistema.caixas
CREATE TABLE IF NOT EXISTS `caixas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caixa` varchar(30) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela sistema.caixas: ~17 rows (aproximadamente)
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

-- Copiando estrutura para tabela sistema.caixas_aberturas
CREATE TABLE IF NOT EXISTS `caixas_aberturas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caixas_id` int(10) unsigned NOT NULL DEFAULT 0,
  `data` date DEFAULT NULL,
  `situacao` char(1) DEFAULT 'A',
  `troco` decimal(10,2) DEFAULT 0.00,
  `entradas` decimal(10,2) DEFAULT 0.00,
  `saidas` decimal(10,2) DEFAULT 0.00,
  `saldo` decimal(10,2) DEFAULT 0.00,
  `data_hora_fecham` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caixas_id` (`caixas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela sistema.caixas_aberturas: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `caixas_aberturas` DISABLE KEYS */;
INSERT INTO `caixas_aberturas` (`id`, `caixas_id`, `data`, `situacao`, `troco`, `entradas`, `saidas`, `saldo`, `data_hora_fecham`) VALUES
	(1, 1, '2021-01-12', 'F', 128.00, 0.00, 200.00, -72.00, '2021-01-20 11:24:50'),
	(2, 7, '2021-01-07', 'F', 300.00, 0.00, 330.00, -30.00, '2021-01-12 11:27:41'),
	(3, 11, '2021-01-12', 'R', 20.00, 300.00, 0.00, 320.00, '2021-01-12 11:26:02'),
	(4, 11, '2021-01-11', 'F', 100.00, 20.00, 0.00, 120.00, '2021-01-12 14:01:23'),
	(5, 17, '2021-01-20', 'A', 200.00, 0.00, 0.00, 0.00, NULL);
/*!40000 ALTER TABLE `caixas_aberturas` ENABLE KEYS */;

-- Copiando estrutura para tabela sistema.caixas_movimentos
CREATE TABLE IF NOT EXISTS `caixas_movimentos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caixas_aberturas_id` int(10) unsigned NOT NULL,
  `plano_contas_id` int(10) unsigned NOT NULL,
  `data` date DEFAULT NULL,
  `historico` varchar(60) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT 0.00,
  `entrada` decimal(10,2) DEFAULT 0.00,
  `saida` decimal(10,2) DEFAULT 0.00,
  `tipo` char(1) DEFAULT 'E',
  `data_hora_lancam` datetime DEFAULT NULL,
  `situacao` char(1) DEFAULT 'A',
  PRIMARY KEY (`id`),
  KEY `caixas_movimentos_FKIndex2` (`plano_contas_id`),
  KEY `caixas_movimentos_FKIndex3` (`caixas_aberturas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela sistema.caixas_movimentos: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `caixas_movimentos` DISABLE KEYS */;
INSERT INTO `caixas_movimentos` (`id`, `caixas_aberturas_id`, `plano_contas_id`, `data`, `historico`, `valor`, `entrada`, `saida`, `tipo`, `data_hora_lancam`, `situacao`) VALUES
	(1, 2, 10, '2021-01-12', 'TRANSFERENCIA ENTRE CAIXA', 330.00, 0.00, 0.00, 'S', '2021-01-12 11:20:44', 'I'),
	(2, 3, 35, '2021-01-12', 'FIBRA/INTERNET - 320MB + TV', 300.00, 0.00, 0.00, 'E', '2021-01-12 11:22:33', 'A'),
	(3, 4, 35, '2021-01-13', 'TV -  PREMIUM EM HD + INSTALAÇÃO', 20.00, 0.00, 0.00, 'E', '2021-01-12 13:56:46', 'A'),
	(4, 1, 7, '2021-01-20', 'ALUGUEL DA EMPRESA', 200.00, 0.00, 0.00, 'S', '2021-01-20 11:20:19', 'A'),
	(5, 5, 10, '2021-01-20', 'TRANFESRENCIA TESTE', 200.00, 0.00, 0.00, 'S', '2021-01-20 11:27:25', 'A');
/*!40000 ALTER TABLE `caixas_movimentos` ENABLE KEYS */;

-- Copiando estrutura para tabela sistema.natureza
CREATE TABLE IF NOT EXISTS `natureza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `natureza` varchar(15) DEFAULT '',
  `tipo` char(1) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela sistema.natureza: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `natureza` DISABLE KEYS */;
INSERT INTO `natureza` (`id`, `natureza`, `tipo`) VALUES
	(1, 'ENTRADA', 'E'),
	(2, 'SAÍDA', 'S');
/*!40000 ALTER TABLE `natureza` ENABLE KEYS */;

-- Copiando estrutura para tabela sistema.plano_contas
CREATE TABLE IF NOT EXISTS `plano_contas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plano_contas` varchar(60) DEFAULT NULL,
  `estrutura` varchar(30) DEFAULT NULL,
  `tipo` char(1) DEFAULT 'E',
  `situacao` char(1) DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela sistema.plano_contas: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `plano_contas` DISABLE KEYS */;
INSERT INTO `plano_contas` (`id`, `plano_contas`, `estrutura`, `tipo`, `situacao`) VALUES
	(1, 'PLANO TWSPEED TEST 1', '50.100.003', 'E', 'I'),
	(3, 'EMPRESTIMOS E FINANCIAMENTOS', '20.100.020', 'E', 'A'),
	(5, 'PLANO MULTIWARE TEST 1', '50.100.001', 'E', 'I'),
	(6, 'PLANO TOPSAPP TEST 1', '50.100.002', 'E', 'I'),
	(7, 'ALUGUEL', '10.400.100', 'S', 'A'),
	(8, 'ATIVO', '10.100.001', 'S', 'A'),
	(9, 'MENSALIDADE', '11.100.002', 'S', 'A'),
	(10, 'CAIXA', '20.100.010', 'S', 'A'),
	(11, 'BANCOS CONTA MOVIMENTO', '20.100.020', 'S', 'A'),
	(12, 'SEGUROS', '10.500.100', 'S', 'A'),
	(14, 'IMPOSTOS A PAGAR', '10.600.100', 'S', 'A'),
	(15, 'INSTALACOES', '12.100.040', 'S', 'A'),
	(16, 'FORNECEDORES', '10.300.100', 'S', 'A'),
	(19, 'TELEFONE', '12.100.030', 'S', 'A'),
	(24, 'LUZ', '12.100.010', 'S', 'A'),
	(25, 'AGUA', '12.100.020', 'S', 'A'),
	(26, 'DIÁRIA', '11.100.001', 'S', 'A'),
	(27, 'ESTORNO ENTRADA', '70.100.001', 'E', 'A'),
	(28, 'ESTORNO SAÍDA', '70.100.002', 'S', 'A'),
	(29, 'SALARIOS A PAGAR', '10.700.100', 'S', 'A'),
	(30, 'VENDA DA EMPRESA', '40.100.001', 'E', 'A'),
	(31, 'VENDA/WEB DA EMRPESA', '40.100.002', 'E', 'A'),
	(32, 'INATIVO', '10.100.002', 'S', 'I'),
	(33, 'PLANO TOPSAPP', '50.000.002', 'E', 'A'),
	(34, 'PLANO MULTIWARE', '50.000.001', 'E', 'A'),
	(35, 'PLANO TWSPEED', '50.000.003', 'E', 'A');
/*!40000 ALTER TABLE `plano_contas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
