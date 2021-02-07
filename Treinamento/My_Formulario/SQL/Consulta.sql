CREATE TABLE `contas_pagar` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`num_documento` VARCHAR(20) NOT NULL COLLATE 'utf8_general_ci',
	`descricao` VARCHAR(200) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`parcela` INT(11) NOT NULL,
	`valor_parcela` DECIMAL(18,2) NOT NULL,
	`valor_compra` DECIMAL(18,2) NOT NULL,
	`valor_abatido` DECIMAL(18,2) NOT NULL,
	`data_compra` DATE NOT NULL,
	`data_cadastro` DATE NOT NULL,
	`data_vencimento` DATE NOT NULL,
	`data_pagamento` DATE NULL DEFAULT NULL,
	`status` CHAR(1) NOT NULL COLLATE 'utf8_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
CREATE TABLE `contas_receber` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`num_documento` VARCHAR(20) NOT NULL COLLATE 'utf8_general_ci',
	`descrcao` VARCHAR(200) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`parcela` INT(11) NOT NULL,
	`valor_parcela` DECIMAL(18,2) NOT NULL,
	`valor_compra` DECIMAL(18,2) NOT NULL,
	`valor_abatido` DECIMAL(18,2) NOT NULL,
	`data_compra` DATE NOT NULL,
	`data_cadastro` DATE NOT NULL,
	`data_vencimento` DATE NOT NULL,
	`data_pagamento` DATE NULL DEFAULT NULL,
	`status` CHAR(1) NOT NULL COLLATE 'utf8_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
CREATE TABLE `moviment_contas` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`num_documento` VARCHAR(20) NOT NULL COLLATE 'utf8_general_ci',
	`descricao` VARCHAR(200) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`valor` DECIMAL(18,2) NOT NULL,
	`tipo` CHAR(1) NOT NULL COLLATE 'utf8_general_ci',
	`dt_cadastro` DATE NULL DEFAULT NULL,
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
CREATE TABLE `usuario` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`cpf` VARCHAR(20) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`email` VARCHAR(80) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`data_cadastro` DATE NULL DEFAULT NULL,
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
clientesclientesclientesclientescaixacaixacaixaclientescaixacaixacaixacaixa