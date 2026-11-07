-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           26.10.0 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.21.0.7344
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando estrutura do banco de dados para projeto_parque
DROP DATABASE IF EXISTS `projeto_parque`;
CREATE DATABASE IF NOT EXISTS `projeto_parque` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projeto_parque`;

-- Copiando estrutura para tabela projeto_parque.auditoria
DROP TABLE IF EXISTS `auditoria`;
CREATE TABLE IF NOT EXISTS `auditoria` (
  `codAuditoria` int NOT NULL AUTO_INCREMENT,
  `acao` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tabela` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dataHora` datetime NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`codAuditoria`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.brinquedo
DROP TABLE IF EXISTS `brinquedo`;
CREATE TABLE IF NOT EXISTS `brinquedo` (
  `codBrinquedo` int NOT NULL AUTO_INCREMENT,
  `nomeBrinquedo` varchar(500) NOT NULL,
  `capacidadeMaxima` int NOT NULL,
  `capacidadeAtual` int DEFAULT (`capacidadeMaxima`),
  `tipoBrinquedo` varchar(200) NOT NULL,
  `idadeRestrita` int NOT NULL,
  `funcionamento` tinyint DEFAULT NULL,
  PRIMARY KEY (`codBrinquedo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.cargo
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `codCargo` int NOT NULL AUTO_INCREMENT,
  `nomeCargo` varchar(450) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `salarioInicial` double NOT NULL,
  `salarioFinal` double DEFAULT NULL,
  `comissao` int DEFAULT NULL,
  PRIMARY KEY (`codCargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.categoria
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `codCategoria` int NOT NULL AUTO_INCREMENT,
  `nomeCategoria` varchar(450) NOT NULL,
  `descricao` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`codCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.compra
DROP TABLE IF EXISTS `compra`;
CREATE TABLE IF NOT EXISTS `compra` (
  `codCompra` int NOT NULL AUTO_INCREMENT,
  `tipoPagamento` varchar(45) NOT NULL,
  `dataCompra` datetime NOT NULL DEFAULT (now()),
  `visitante_codVisitante` int NOT NULL,
  `funcionario_codFuncionario` int NOT NULL,
  PRIMARY KEY (`codCompra`,`visitante_codVisitante`,`funcionario_codFuncionario`),
  KEY `fk_compra_visitante1_idx` (`visitante_codVisitante`),
  KEY `fk_compra_funcionario1_idx` (`funcionario_codFuncionario`),
  CONSTRAINT `fk_compra_funcionario1` FOREIGN KEY (`funcionario_codFuncionario`) REFERENCES `funcionario` (`codFuncionario`),
  CONSTRAINT `fk_compra_visitante1` FOREIGN KEY (`visitante_codVisitante`) REFERENCES `visitante` (`codVisitante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.compra_ingressobrinquedos
DROP TABLE IF EXISTS `compra_ingressobrinquedos`;
CREATE TABLE IF NOT EXISTS `compra_ingressobrinquedos` (
  `codCompraBrinquedos` int NOT NULL AUTO_INCREMENT,
  `compra_codCompra` int NOT NULL,
  `ingressoBrinquedos_codIngresso` int NOT NULL,
  `quantIngBrinq` int NOT NULL,
  PRIMARY KEY (`codCompraBrinquedos`,`compra_codCompra`,`ingressoBrinquedos_codIngresso`),
  KEY `fk_compra_has_ingressoBrinquedos_ingressoBrinquedos1_idx` (`ingressoBrinquedos_codIngresso`),
  KEY `fk_compra_has_ingressoBrinquedos_compra1_idx` (`compra_codCompra`),
  CONSTRAINT `fk_compra_has_ingressoBrinquedos_compra1` FOREIGN KEY (`compra_codCompra`) REFERENCES `compra` (`codCompra`),
  CONSTRAINT `fk_compra_has_ingressoBrinquedos_ingressoBrinquedos1` FOREIGN KEY (`ingressoBrinquedos_codIngresso`) REFERENCES `ingressobrinquedos` (`codIngresso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.compra_ingressoeventos
DROP TABLE IF EXISTS `compra_ingressoeventos`;
CREATE TABLE IF NOT EXISTS `compra_ingressoeventos` (
  `codCompraEventos` int NOT NULL AUTO_INCREMENT,
  `compra_codCompra` int NOT NULL,
  `ingressoEventos_codIngresso` int NOT NULL,
  `quantIngEvent` int NOT NULL,
  PRIMARY KEY (`codCompraEventos`,`compra_codCompra`,`ingressoEventos_codIngresso`),
  KEY `fk_compra_has_ingressoEventos_ingressoEventos1_idx` (`ingressoEventos_codIngresso`),
  KEY `fk_compra_has_ingressoEventos_compra1_idx` (`compra_codCompra`),
  CONSTRAINT `fk_compra_has_ingressoEventos_compra1` FOREIGN KEY (`compra_codCompra`) REFERENCES `compra` (`codCompra`),
  CONSTRAINT `fk_compra_has_ingressoEventos_ingressoEventos1` FOREIGN KEY (`ingressoEventos_codIngresso`) REFERENCES `ingressoeventos` (`codIngresso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.compraslanche
DROP TABLE IF EXISTS `compraslanche`;
CREATE TABLE IF NOT EXISTS `compraslanche` (
  `codCompraLanche` int NOT NULL AUTO_INCREMENT,
  `compra_codCompra` int NOT NULL,
  `lanche_codLanche` int NOT NULL,
  `quantidadeLanche` int NOT NULL,
  PRIMARY KEY (`codCompraLanche`,`compra_codCompra`,`lanche_codLanche`),
  KEY `fk_compra_has_lanche_lanche1_idx` (`lanche_codLanche`),
  KEY `fk_compra_has_lanche_compra1_idx` (`compra_codCompra`),
  CONSTRAINT `fk_compra_has_lanche_compra1` FOREIGN KEY (`compra_codCompra`) REFERENCES `compra` (`codCompra`),
  CONSTRAINT `fk_compra_has_lanche_lanche1` FOREIGN KEY (`lanche_codLanche`) REFERENCES `lanche` (`codLanche`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.eventos
DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `codEventos` int NOT NULL AUTO_INCREMENT,
  `nomeEvento` varchar(45) NOT NULL,
  `tipoEvento` varchar(45) NOT NULL,
  `localEvento` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dataInicio` datetime NOT NULL,
  `dataFim` datetime NOT NULL,
  `descricao` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`codEventos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.funcionario
DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `codFuncionario` int NOT NULL AUTO_INCREMENT,
  `nomeFuncionario` varchar(450) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `carteiraTrabalho` varchar(45) NOT NULL,
  `dataAdmissao` date NOT NULL,
  `dataDemissao` date DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `senha` varchar(500) DEFAULT NULL,
  `cargo_codCargo` int NOT NULL,
  PRIMARY KEY (`codFuncionario`,`cargo_codCargo`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_funcionario_cargo_idx` (`cargo_codCargo`),
  CONSTRAINT `fk_funcionario_cargo` FOREIGN KEY (`cargo_codCargo`) REFERENCES `cargo` (`codCargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.ingressobrinquedos
DROP TABLE IF EXISTS `ingressobrinquedos`;
CREATE TABLE IF NOT EXISTS `ingressobrinquedos` (
  `codIngresso` int NOT NULL AUTO_INCREMENT,
  `tipoIngresso` varchar(45) NOT NULL,
  `valor` double NOT NULL,
  `lucroIB` int DEFAULT NULL,
  `brinquedo_codBrinquedo` int NOT NULL,
  PRIMARY KEY (`codIngresso`,`brinquedo_codBrinquedo`),
  KEY `fk_ingressoBrinquedos_brinquedo1_idx` (`brinquedo_codBrinquedo`),
  CONSTRAINT `fk_ingressoBrinquedos_brinquedo1` FOREIGN KEY (`brinquedo_codBrinquedo`) REFERENCES `brinquedo` (`codBrinquedo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.ingressoeventos
DROP TABLE IF EXISTS `ingressoeventos`;
CREATE TABLE IF NOT EXISTS `ingressoeventos` (
  `codIngresso` int NOT NULL AUTO_INCREMENT,
  `tipoIngresso` varchar(45) NOT NULL,
  `valor` double NOT NULL,
  `lucroIE` int DEFAULT NULL,
  `eventos_codEventos` int NOT NULL,
  PRIMARY KEY (`codIngresso`,`eventos_codEventos`),
  KEY `fk_ingressoEventos_eventos1_idx` (`eventos_codEventos`),
  CONSTRAINT `fk_ingressoEventos_eventos1` FOREIGN KEY (`eventos_codEventos`) REFERENCES `eventos` (`codEventos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.lanche
DROP TABLE IF EXISTS `lanche`;
CREATE TABLE IF NOT EXISTS `lanche` (
  `codLanche` int NOT NULL AUTO_INCREMENT,
  `nomeLanche` varchar(450) NOT NULL,
  `precoLanche` double NOT NULL,
  `descricao` varchar(450) DEFAULT NULL,
  `lucroLanches` int DEFAULT NULL,
  `categoria_codCategoria` int NOT NULL,
  PRIMARY KEY (`codLanche`,`categoria_codCategoria`),
  KEY `fk_lanche_categoria1_idx` (`categoria_codCategoria`),
  CONSTRAINT `fk_lanche_categoria1` FOREIGN KEY (`categoria_codCategoria`) REFERENCES `categoria` (`codCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para procedure projeto_parque.p_atualizarCargo
DROP PROCEDURE IF EXISTS `p_atualizarCargo`;
DELIMITER //
CREATE PROCEDURE `p_atualizarCargo`(
    IN `atualizarCargo` INT,
    IN `cargoNome` VARCHAR(45),
    IN `cargoSalarioI` DOUBLE,
    IN `cargoSalarioF` DOUBLE,
    IN `cargocomissa` INT
)
BEGIN

    SELECT COUNT(*) INTO @contador FROM cargo WHERE codCargo = atualizarCargo;

    if (@contador = 0)
    then SELECT "O código fornecido não consta registrado!" AS ERRO;

    else
    UPDATE cargo SET nomeCargo = cargoNome WHERE codCargo = atualizarCargo;
    UPDATE cargo SET salarioInicial = cargoSalarioI, salarioFinal = cargoSalarioF, comissao = cargoComissao WHERE codCargo = atualizarCargo;
    SELECT * FROM cargo WHERE codCargo = atualizarCargo;
    END if;

END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_atualizarCompra
DROP PROCEDURE IF EXISTS `p_atualizarCompra`;
DELIMITER //
CREATE PROCEDURE `p_atualizarCompra`(
    IN `compraPagamento` VARCHAR(45),
    IN `compraData` DATETIME,
    IN `compraVisitante` INT,
    IN `compraFuncionario` INT,
    IN `atualizarCompra` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM compra WHERE codCompra = atualizarCompra;

    if (@contador = 0)
    then SELECT "O código fornecido não consta registrado!" AS ERRO;

    else
    UPDATE compra SET tipoPagamento = compraPagamento, dataCompra = compraData, visitante_codVisitante = compraVisitante, funcionario_codFuncionario = compraFuncionario WHERE codCompra = atualizarCompra;

    SELECT * FROM compra WHERE codCompra = atualizarCompra;
    END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_atualizarEvento
DROP PROCEDURE IF EXISTS `p_atualizarEvento`;
DELIMITER //
CREATE PROCEDURE `p_atualizarEvento`(
    IN `eventoNome` VARCHAR(45),
    IN `eventoTipo` VARCHAR(45),
    IN `eventoLocal` VARCHAR(45),
    IN `eventoInicio` DATETIME,
    IN `eventoFim` DATETIME,
    IN `descricao` VARCHAR(450)
)
BEGIN
SELECT COUNT(*) INTO @contador FROM  eventos WHERE codEventos  = atualizarEvento;

    if (@contador = 0)
    then SELECT "O código fornecido não consta registrado!" AS ERRO;

    else
    UPDATE eventos SET nomeEvento = eventoNome WHERE codEventos  = atualizarEvento;
    UPDATE eventos SET tipoEvento = eventoTipo WHERE codEventos  = atualizarEvento;
    UPDATE eventos SET localEvento = eventoLocal WHERE codEventos  = atualizarEvento;
    UPDATE eventos SET dataInicio = eventoInicio WHERE codEventos  = atualizarEvento;
    UPDATE eventos SET dataFim = eventoFim WHERE codEventos  = atualizarEvento;
    UPDATE eventos SET descricao = eventoDescricao WHERE codEventos  = atualizarEvento;

    SELECT * FROM eventos WHERE codEventos  = atualizarEvento;
    END if;
end//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_atualizarFuncionario
DROP PROCEDURE IF EXISTS `p_atualizarFuncionario`;
DELIMITER //
CREATE PROCEDURE `p_atualizarFuncionario`(
    IN `funcionarioDemissao` DATE,
    IN `atualizarFuncionario` INT,
    IN `funcionarioCargo` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM funcionario WHERE codFuncionario = atualizarFuncionario;

    if (@contador = 0)
    then SELECT "O código fornecido não consta registrado!" AS ERRO;

    else
    UPDATE funcionario SET dataDemissao = funcionarioDemissao WHERE codFuncionario = atualizarFuncionario;
    UPDATE funcionario SET cargo_codCargo = funcionarioCargo WHERE codFuncionario = atualizarFuncionario;
    SELECT * FROM funcionario WHERE codFuncionario = atualizarFuncionario;
    END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_atualizarIngressoBrinquedo
DROP PROCEDURE IF EXISTS `p_atualizarIngressoBrinquedo`;
DELIMITER //
CREATE PROCEDURE `p_atualizarIngressoBrinquedo`(
    IN `atualizarIB` INT,
    IN `ibValor` DOUBLE,
    IN `ibLucro` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM ingressoBrinquedos WHERE codIngresso  = atualizarIB;

    if (@contador = 0)
    then SELECT "O código fornecido não consta registrado!" AS ERRO;

    else
    UPDATE ingressobrinquedos as ib SET valor = ibValor, ib.lucroIB = ibLucro WHERE codIngresso  = atualizarIB;
    SELECT * FROM ingressobrinquedos WHERE codIngresso  = atualizarIB;
    END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_atualizarIngressoEvento
DROP PROCEDURE IF EXISTS `p_atualizarIngressoEvento`;
DELIMITER //
CREATE PROCEDURE `p_atualizarIngressoEvento`(
    IN `atualizarIE` INT,
    IN `ieValor` DOUBLE,
    IN `ieLucro` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM ingressoEventos WHERE codIngresso  = atualizarIE;

    if (@contador = 0)
    then SELECT "O código fornecido não consta registrado!" AS ERRO;

    else
    UPDATE ingressoeventos SET valor = ieValor, lucroIE = ieLucro WHERE codIngresso  = atualizarIE;
    SELECT * FROM ingressoeventos WHERE codIngresso  = atualizarIE;
    END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_atualizarLanche
DROP PROCEDURE IF EXISTS `p_atualizarLanche`;
DELIMITER //
CREATE PROCEDURE `p_atualizarLanche`(
    IN `atualizarLanche` INT,
    IN `lancheNome` VARCHAR(450),
    IN `lanchePreco` DOUBLE,
    IN `lancheDescricao` VARCHAR(450),
    IN `lancheCategoria` INT,
    IN `lancheLucro` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM lanche WHERE codLanche = atualizarLanche;

    if (@contador = 0)
    then SELECT "O código fornecido não consta registrado!" AS ERRO;

    else
    UPDATE lanche SET nomeLanche = lancheNome WHERE codLanche = atualizarLanche;
    UPDATE lanche SET precoLanche = lanchePreco WHERE codLanche = atualizarLanche;
    UPDATE lanche SET descricao = lancheDescricao, lanche.lucroLanches = lancheLucro WHERE codLanche = atualizarLanche;
    UPDATE lanche SET categoria_codCategoria = lancheCategoria WHERE codLanche = atualizarLanche;
    SELECT * FROM lanche WHERE codLanche = atualizarLanche;
    END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_atualizarVisitante
DROP PROCEDURE IF EXISTS `p_atualizarVisitante`;
DELIMITER //
CREATE PROCEDURE `p_atualizarVisitante`(
    IN `atualizarVisitante` INT,
    IN `visitanteNome` VARCHAR(450),
    IN `visitanteNascimento` DATE,
    IN `email` VARCHAR(450)
)
BEGIN

    SELECT COUNT(*) INTO @contador FROM visitante WHERE codVisitante = atualizarVisitante;

    if (@contador = 0)
    then SELECT "O código fornecido não consta registrado!" AS ERRO;

    else
    UPDATE visitante SET nomeVisitante = visitanteNome WHERE codVisitante = atualizarVisitante;
    UPDATE visitante SET dataNascimento = visitanteNascimneto WHERE codVisitante = atualizarVisitante;
    UPDATE visitante SET email = email WHERE codVisitante = atualizarVisitante;
    SELECT * FROM visitante WHERE codVisitante = atualizarVisitante;
    END if;

END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_buscarVisitante
DROP PROCEDURE IF EXISTS `p_buscarVisitante`;
DELIMITER //
CREATE PROCEDURE `p_buscarVisitante`(
    IN `p_busca` VARCHAR(100)
)
BEGIN
 SELECT * FROM visitante
     WHERE nomeVisitante LIKE CONCAT('%', p_busca, '%')
    OR email LIKE CONCAT('%', p_busca, '%')
   ORDER BY nomeVisitante;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_deletarBrinquedo
DROP PROCEDURE IF EXISTS `p_deletarBrinquedo`;
DELIMITER //
CREATE PROCEDURE `p_deletarBrinquedo`(
    IN `deletarBrinquedo` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM brinquedo WHERE codBrinquedo = deletarBrinquedo;

    if(@contador = 0)
        then
            SELECT "Não foi possivel realizar a exclusão, pois o código inserido é inexistente!!" AS erro;
        ELSE
            DELETE FROM brinquedo WHERE codBrinquedo = deletarBrinquedo;
            SELECT * FROM brinquedo;
        END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_deletarCargo
DROP PROCEDURE IF EXISTS `p_deletarCargo`;
DELIMITER //
CREATE PROCEDURE `p_deletarCargo`(
    IN `deletarCargo` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM cargo WHERE codCargo = deletarCargo;

    if(@contador = 0)
        then
            SELECT "Não foi possivel realizar a exclusão, pois o código inserido é inexistente!!" AS erro;
        ELSE
            DELETE FROM cargo WHERE codCargo = deletarCargo;
            SELECT * FROM cargo;
        END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_deletarCategoria
DROP PROCEDURE IF EXISTS `p_deletarCategoria`;
DELIMITER //
CREATE PROCEDURE `p_deletarCategoria`(
    IN `deletarCategoria` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM categoria WHERE codCategoria = deletarCategoria;

    if(@contador = 0)
        then
            SELECT "Não foi possivel realizar a exclusão, pois o código inserido é inexistente!!" AS erro;
        ELSE
            DELETE FROM categoria WHERE codCategoria = deletarCategoria;
            SELECT * FROM categoria;
        END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_deletarCompra
DROP PROCEDURE IF EXISTS `p_deletarCompra`;
DELIMITER //
CREATE PROCEDURE `p_deletarCompra`(
    IN `deletarCompra` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM compra WHERE codCompra = deletarCompra;

    if(@contador = 0)
        then
            SELECT "Não foi possivel realizar a exclusão, pois o código inserido é inexistente!!" AS erro;
        ELSE
            DELETE FROM compra WHERE codCompra = deletarCompra;
            SELECT * FROM compra;
        END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_deletarComprasIB
DROP PROCEDURE IF EXISTS `p_deletarComprasIB`;
DELIMITER //
CREATE PROCEDURE `p_deletarComprasIB`(
    IN `deletarCompraIB` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM compra_ingressobrinquedos WHERE codCompraBrinquedos = deletarCompraIB;

    if(@contador = 0)
        then
            SELECT "Não foi possivel realizar a exclusão, pois o código inserido é inexistente!!" AS erro;
        ELSE
            DELETE FROM compra_ingressobrinquedos WHERE codCompraBrinquedos = deletarCompraIB;
            SELECT * FROM compra_ingressobrinquedos;
        END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_deletarComprasIE
DROP PROCEDURE IF EXISTS `p_deletarComprasIE`;
DELIMITER //
CREATE PROCEDURE `p_deletarComprasIE`(
    IN `deletarComprasIE` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM compra_ingressoeventos WHERE codCompraEventos = deletarCompraIE;

    if(@contador = 0)
        then
            SELECT "Não foi possivel realizar a exclusão, pois o código inserido é inexistente!!" AS erro;
        ELSE
            DELETE FROM compra_ingressoeventos WHERE codCompraEventos = deletarCompraIE;
            SELECT * FROM compra_ingressoeventos;
        END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_deletarComprasLanche
DROP PROCEDURE IF EXISTS `p_deletarComprasLanche`;
DELIMITER //
CREATE PROCEDURE `p_deletarComprasLanche`(
    IN `deletarCompraLanche` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM compraslanche WHERE codCompraLanche = deletarCompraLanche;

    if(@contador = 0)
        then
            SELECT "Não foi possivel realizar a exclusão, pois o código inserido é inexistente!!" AS erro;
        ELSE
            DELETE FROM compraslanche WHERE codCompraLanche = deletarCompraLanche;
            SELECT * FROM compraslanche;
        END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_deletarEventos
DROP PROCEDURE IF EXISTS `p_deletarEventos`;
DELIMITER //
CREATE PROCEDURE `p_deletarEventos`(
    IN `deletarEvento` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM eventos WHERE codEventos = deletarEvento;

    if(@contador = 0)
        then
            SELECT "Não foi possivel realizar a exclusão, pois o código inserido é inexistente!!" AS erro;
        ELSE
            DELETE FROM eventos WHERE codEventos = deletarEvento;
            SELECT * FROM eventos;
        END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_deletarFuncionario
DROP PROCEDURE IF EXISTS `p_deletarFuncionario`;
DELIMITER //
CREATE PROCEDURE `p_deletarFuncionario`(
    IN `deletarFuncionario` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM funcionario WHERE codFuncionario = deletarFuncionario;

    if(@contador = 0)
        then
            SELECT "Não foi possivel realizar a exclusão, pois o código inserido é inexistente!!" AS erro;
        ELSE
            DELETE FROM funcionario WHERE codFuncionario = deletarFuncionario;
            SELECT * FROM funcionario;
        END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_deletarLanche
DROP PROCEDURE IF EXISTS `p_deletarLanche`;
DELIMITER //
CREATE PROCEDURE `p_deletarLanche`(
    IN `deletarLanche` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM lanche WHERE codLanche = deletarLanche;

    if(@contador = 0)
        then
            SELECT "Não foi possivel realizar a exclusão, pois o código inserido é inexistente!!" AS erro;
        ELSE
            DELETE FROM lanche WHERE codLanche = deletarLanche;
            SELECT * FROM lanche;
        END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_deletarVisitante
DROP PROCEDURE IF EXISTS `p_deletarVisitante`;
DELIMITER //
CREATE PROCEDURE `p_deletarVisitante`(
    IN `deletarVisitante` INT
)
BEGIN
SELECT COUNT(*) INTO @contador FROM visitante WHERE codVisitante = deletarVisitante;

    if(@contador = 0)
        then
            SELECT "Não foi possivel realizar a exclusão, pois o código inserido é inexistente!!" AS erro;
        ELSE
            DELETE FROM visitante WHERE codVisitante = deletarVisitante;
            SELECT * FROM visitante;
        END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirBrinquedo
DROP PROCEDURE IF EXISTS `p_inserirBrinquedo`;
DELIMITER //
CREATE PROCEDURE `p_inserirBrinquedo`(
    IN `novoBrinquedo` VARCHAR(500),
    IN `novaCapacidade` INT,
    IN `novoTipo` VARCHAR(200),
    IN `novaRestricao` INT,
    IN `novoFuncionamento` TINYINT
)
BEGIN
    INSERT INTO brinquedo(nomeBrinquedo, capacidadeMaxima, tipoBrinquedo, idadeRestrita, funcionamento)
    VALUES (novoBrinquedo, novaCapacidade, novoTipo, novaRestricao, novoFuncionamento);
    SELECT * FROM brinquedo;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirCargo
DROP PROCEDURE IF EXISTS `p_inserirCargo`;
DELIMITER //
CREATE PROCEDURE `p_inserirCargo`(
    IN `novoCargo` VARCHAR(45),
    IN `novoSalario` DOUBLE,
    IN `novaComissao` INT
)
BEGIN
    INSERT INTO cargo(nomeCargo, salarioInicial, comissao) VALUES (novoCargo, novoSalario, novaComissao);
    SELECT * FROM cargo;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirCategoria
DROP PROCEDURE IF EXISTS `p_inserirCategoria`;
DELIMITER //
CREATE PROCEDURE `p_inserirCategoria`(
    IN `novaCategoria` VARCHAR(450),
    IN `categoriaDescricao` VARCHAR(450)
)
BEGIN
    INSERT INTO categoria(nomeCategoria, descricao) VALUES (novaCategoria, categoriaDescricao);
    SELECT * FROM categoria;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirCompra
DROP PROCEDURE IF EXISTS `p_inserirCompra`;
DELIMITER //
CREATE PROCEDURE `p_inserirCompra`(
    IN `compraPagar` VARCHAR(45),
    IN `compraVisitante` INT,
    IN `compraFuncionario` INT
)
BEGIN
INSERT INTO compra(tipoPagamento,visitante_codVisitante, funcionario_codFuncionario)
     VALUES (compraPagar, compraVisitante, compraFuncionario);
    SELECT * FROM compra;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirCompraIB
DROP PROCEDURE IF EXISTS `p_inserirCompraIB`;
DELIMITER //
CREATE PROCEDURE `p_inserirCompraIB`(
    IN `cibCompra` INT,
    IN `cibIngresso` INT,
    IN `cibQuantidade` INT
)
BEGIN
INSERT INTO compra_ingressobrinquedos(compra_codCompra, ingressoBrinquedos_codIngresso, quantIngBrinq)
     VALUES (cibCompra, cibIngresso, cibQuantidade);
    SELECT * FROM compra_ingressobrinquedos;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirCompraIE
DROP PROCEDURE IF EXISTS `p_inserirCompraIE`;
DELIMITER //
CREATE PROCEDURE `p_inserirCompraIE`(
    IN `cieCompra` INT,
    IN `cieIngresso` INT,
    IN `cieQuantidade` INT
)
BEGIN
INSERT INTO compra_ingressoeventos(compra_codCompra, ingressoEventos_codIngresso, quantIngEvent)
     VALUES (cieCompra, cieIngresso, cieQuantidade);
    SELECT * FROM compra_ingressoeventos;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirCompraLanche
DROP PROCEDURE IF EXISTS `p_inserirCompraLanche`;
DELIMITER //
CREATE PROCEDURE `p_inserirCompraLanche`(
    IN `clCompra` INT,
    IN `clLanche` INT,
    IN `clQuantidade` INT
)
BEGIN
INSERT INTO compraslanche(compra_codCompra, lanche_codLanche, quantidadeLanche)
     VALUES (clCompra, clLanche, clQuantidade);
    SELECT * FROM compraslanche;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirEvento
DROP PROCEDURE IF EXISTS `p_inserirEvento`;
DELIMITER //
CREATE PROCEDURE `p_inserirEvento`(
    IN `novoEvento` VARCHAR(45),
    IN `eventoTipo` VARCHAR(45),
    IN `eventoLocal` VARCHAR(45),
    IN `eventoInicio` DATETIME,
    IN `eventoFim` DATETIME,
    IN `eventoDescricao` VARCHAR(450)
)
BEGIN
    INSERT INTO eventos(nomeEvento, tipoEvento, localEvento, dataInicio, dataFim, descricao)
     VALUES (novoEvento, eventoTipo, eventoLocal, eventoInicio, eventoFim, eventoDescricao);
    SELECT * FROM eventos;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirFuncionario
DROP PROCEDURE IF EXISTS `p_inserirFuncionario`;
DELIMITER //
CREATE PROCEDURE `p_inserirFuncionario`(
    IN `novoFuncionario` VARCHAR(450),
    IN `funcionarioCPF` VARCHAR(45),
    IN `funcionarioCT` VARCHAR(45),
    IN `funcionarioAdmissao` DATE,
    IN `funcionarioCargo` INT,
    IN `funcionarioEmail` VARCHAR(50),
    IN `funcionarioSenhaHash` TEXT
)
BEGIN
    INSERT INTO funcionario(nomeFuncionario, cpf,carteiraTrabalho, dataAdmissao, cargo_codCargo, email, senha)
    VALUES (novoFuncionario, funcionarioCPF, funcionarioCT, funcionarioAdmissao, funcionarioCargo,funcionarioEmail,funcionarioSenhaHash );
    SELECT * FROM funcionario;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirIngressoBrinquedo
DROP PROCEDURE IF EXISTS `p_inserirIngressoBrinquedo`;
DELIMITER //
CREATE PROCEDURE `p_inserirIngressoBrinquedo`(
    IN `ibTipo` VARCHAR(45),
    IN `ibValor` DOUBLE,
    IN `ibBrinquedo` INT,
    IN `ibLucro` INT
)
BEGIN
INSERT INTO ingressobrinquedos(tipoIngresso, valor, lucroIB, brinquedo_codBrinquedo)
     VALUES (ibTipo, ibValor,ibLucro, ibBrinquedo);
    SELECT * FROM ingressobrinquedos;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirIngressoEventos
DROP PROCEDURE IF EXISTS `p_inserirIngressoEventos`;
DELIMITER //
CREATE PROCEDURE `p_inserirIngressoEventos`(
    IN `ieTipo` VARCHAR(45),
    IN `ieValor` DOUBLE,
    IN `ieEvento` INT,
    IN `ieLucro` INT
)
BEGIN
INSERT INTO ingressoeventos(tipoIngresso, valor, lucroIE, eventos_codEventos)
     VALUES (ieTipo, ieValor, ieLucro, ieEvento);
    SELECT * FROM ingressoeventos;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirLanche
DROP PROCEDURE IF EXISTS `p_inserirLanche`;
DELIMITER //
CREATE PROCEDURE `p_inserirLanche`(
    IN `novoLanche` VARCHAR(450),
    IN `lanchePreco` DOUBLE,
    IN `lancheDescricao` VARCHAR(450),
    IN `lancheCategoria` INT,
    IN `lancheLucro` INT
)
BEGIN
    INSERT INTO lanche(nomeLanche, precoLanche, descricao,lucroLanches, categoria_codCategoria)
    VALUES (novoLanche, lanchePreco, lancheDescricao,lancheLucro,lancheCategoria);
    SELECT * FROM lanche;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_inserirVisitante
DROP PROCEDURE IF EXISTS `p_inserirVisitante`;
DELIMITER //
CREATE PROCEDURE `p_inserirVisitante`(
    IN `novoVisitante` VARCHAR(450),
    IN `visitanteNascimento` DATE,
    IN `visitanteEmail` VARCHAR(450)
)
BEGIN
    INSERT INTO visitante(nomeVisitante, dataNascimento, email) VALUES (novoVisitante, visitanteNascimento, visitanteEmail);
    SELECT * FROM visitante;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_listarBrinquedos
DROP PROCEDURE IF EXISTS `p_listarBrinquedos`;
DELIMITER //
CREATE PROCEDURE `p_listarBrinquedos`()
BEGIN
    SELECT * FROM brinquedo;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_listarCompras
DROP PROCEDURE IF EXISTS `p_listarCompras`;
DELIMITER //
CREATE PROCEDURE `p_listarCompras`()
BEGIN
    SELECT * FROM compra;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_listarEventos
DROP PROCEDURE IF EXISTS `p_listarEventos`;
DELIMITER //
CREATE PROCEDURE `p_listarEventos`()
BEGIN
    SELECT * FROM eventos;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_listarIngressosBrinquedos
DROP PROCEDURE IF EXISTS `p_listarIngressosBrinquedos`;
DELIMITER //
CREATE PROCEDURE `p_listarIngressosBrinquedos`()
BEGIN
    SELECT * FROM ingressobrinquedos;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_listarIngressosEventos
DROP PROCEDURE IF EXISTS `p_listarIngressosEventos`;
DELIMITER //
CREATE PROCEDURE `p_listarIngressosEventos`()
BEGIN
    SELECT * FROM ingressoeventos;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_listarLanches
DROP PROCEDURE IF EXISTS `p_listarLanches`;
DELIMITER //
CREATE PROCEDURE `p_listarLanches`()
BEGIN
SELECT * FROM lanche;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_listarVisitantes
DROP PROCEDURE IF EXISTS `p_listarVisitantes`;
DELIMITER //
CREATE PROCEDURE `p_listarVisitantes`()
BEGIN
    SELECT * FROM visitante;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_loginFuncionario
DROP PROCEDURE IF EXISTS `p_loginFuncionario`;
DELIMITER //
CREATE PROCEDURE `p_loginFuncionario`(
    IN `p_email` VARCHAR(100)
)
BEGIN
    SELECT * FROM funcionario WHERE email = p_email AND dataDemissao IS NULL LIMIT 1;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_relatorioCompras
DROP PROCEDURE IF EXISTS `p_relatorioCompras`;
DELIMITER //
CREATE PROCEDURE `p_relatorioCompras`(
    IN `modelo` VARCHAR(1)
)
BEGIN
if (modelo = 'A' )
         then SELECT v.nomeVisitante, f.nomeFuncionario, date_format(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento
          FROM compra AS c INNER JOIN visitante AS v ON c.visitante_codVisitante = v.codVisitante INNER JOIN funcionario AS f ON c.funcionario_codFuncionario = f.codFuncionario  order BY c.codCompra ASC;
        ELSE if (modelo = 'B')
          then SELECT v.nomeVisitante, f.nomeFuncionario, date_format(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento
          FROM compra AS c INNER JOIN visitante AS v ON c.visitante_codVisitante = v.codVisitante INNER JOIN funcionario AS f ON c.funcionario_codFuncionario = f.codFuncionario ORDER BY c.codCompra desc;
            ELSE if (modelo = 'C')
            then  SELECT v.nomeVisitante, f.nomeFuncionario, date_format(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento
          FROM compra AS c INNER JOIN visitante AS v ON c.visitante_codVisitante = v.codVisitante INNER JOIN funcionario AS f ON c.funcionario_codFuncionario = f.codFuncionario ORDER BY c.dataCompra desc;
            ELSE if (modelo = 'D')
              then SELECT COUNT(*) AS total FROM compra;
               ELSE SELECT "Opção inválida!!" AS erro;
               END if;
           END if;
            END if;
      END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_relatorioComprasIB
DROP PROCEDURE IF EXISTS `p_relatorioComprasIB`;
DELIMITER //
CREATE PROCEDURE `p_relatorioComprasIB`(
    IN `modelo` VARCHAR(1)
)
BEGIN
if (modelo = 'A' )
         then SELECT v.nomeVisitante, b.nomeBrinquedo, ib.tipoIngresso, ib.valor, cib.quantIngBrinq AS quantidade, (ib.valor * cib.quantIngBrinq) as precoTotal, f.nomeFuncionario,
          date_format(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento
          FROM compra_ingressobrinquedos AS cib INNER JOIN compra AS c ON cib.compra_codCompra = c.codCompra inner join ingressobrinquedos as ib on
          cib.ingressoBrinquedos_codIngresso = ib.codIngresso INNER JOIN brinquedo AS b ON ib.brinquedo_codBrinquedo = b.codBrinquedo INNER JOIN visitante AS v
          ON c.visitante_codVisitante = v.codVisitante INNER JOIN funcionario AS f ON f.codFuncionario = c.funcionario_codFuncionario order BY codCompraBrinquedos ASC;

        ELSE if (modelo = 'B')
          then SELECT v.nomeVisitante, b.nomeBrinquedo, ib.tipoIngresso, ib.valor, cib.quantIngBrinq AS quantidade,f.nomeFuncionario, date_format(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento
          FROM compra_ingressobrinquedos AS cib INNER JOIN compra AS c ON cib.compra_codCompra = c.codCompra inner join ingressobrinquedos as ib on
          cib.ingressoBrinquedos_codIngresso = ib.codIngresso INNER JOIN brinquedo AS b ON ib.brinquedo_codBrinquedo = b.codBrinquedo inner join visitante as v
          on c.visitante_codVisitante = v.codVisitante INNER JOIN funcionario AS f ON f.codFuncionario = c.funcionario_codFuncionario order BY codCompraBrinquedos desc;

            ELSE if (modelo = 'C')
            then  SELECT v.nomeVisitante, b.nomeBrinquedo, ib.tipoIngresso, ib.valor, cib.quantIngBrinq AS quantidade,f.nomeFuncionario, date_format(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento
          FROM compra_ingressobrinquedos AS cib INNER JOIN compra AS c ON cib.compra_codCompra = c.codCompra inner join ingressobrinquedos as ib on
          cib.ingressoBrinquedos_codIngresso = ib.codIngresso INNER JOIN brinquedo AS b ON ib.brinquedo_codBrinquedo = b.codBrinquedo inner join visitante as v
          ON c.visitante_codVisitante = v.codVisitante INNER JOIN funcionario AS f ON f.codFuncionario = c.funcionario_codFuncionario order BY cib.quantIngBrinq desc;
            ELSE if (modelo = 'D')
              then SELECT COUNT(*) AS total FROM compra_ingressobrinquedos;
               ELSE SELECT "Opção inválida!!" AS erro;
               END if;
           END if;
            END if;
      END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_relatorioComprasIE
DROP PROCEDURE IF EXISTS `p_relatorioComprasIE`;
DELIMITER //
CREATE PROCEDURE `p_relatorioComprasIE`(
    IN `modelo` VARCHAR(1)
)
BEGIN
if (modelo = 'A' )
         then SELECT v.nomeVisitante, e.nomeEvento, ie.tipoIngresso, ie.valor, cie.quantIngEvent AS quantidade,(ie.valor * cie.quantIngEvent) as precoTotal, f.nomeFuncionario,
          date_format(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento
          FROM compra_ingressoeventos AS cie INNER JOIN compra AS c ON cie.compra_codCompra = c.codCompra inner join ingressoeventos as ie
          on cie.ingressoEventos_codIngresso = ie.codIngresso INNER JOIN eventos AS e ON ie.eventos_codEventos = e.codEventos INNER JOIN visitante AS v
          ON c.visitante_codVisitante = v.codVisitante INNER JOIN funcionario AS f ON f.codFuncionario = c.funcionario_codFuncionario order BY codCompraEventos ASC;

        ELSE if (modelo = 'B')
          then SELECT v.nomeVisitante, e.nomeEvento, ie.tipoIngresso, ie.valor, cie.quantIngEvent AS quantidade,(ib.valor * cie.quantIngEvent) as precoTotal,f.nomeFuncionario,
             date_format(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento
          FROM compra_ingressoeventos AS cie INNER JOIN compra AS c ON cie.compra_codCompra = c.codCompra inner join ingressoeventos as ie
          on cie.ingressoEventos_codIngresso = ie.codIngresso INNER JOIN eventos AS e ON ie.eventos_codEventos = e.codEventos INNER JOIN visitante AS v
          ON c.visitante_codVisitante = v.codVisitante INNER JOIN funcionario AS f ON f.codFuncionario = c.funcionario_codFuncionario ORDER BY codCompraEventos desc;

            ELSE if (modelo = 'C')
            then select v.nomeVisitante, e.nomeEvento, ie.tipoIngresso, ie.valor, cie.quantIngEvent AS quantidade,(ib.valor * cie.quantIngEvent) as precoTotal, f.nomeFuncionario,
            date_format(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento
          FROM compra_ingressoeventos AS cie INNER JOIN compra AS c ON cie.compra_codCompra = c.codCompra inner join ingressoeventos as ie
          on cie.ingressoEventos_codIngresso = ie.codIngresso INNER JOIN eventos AS e ON ie.eventos_codEventos = e.codEventos INNER JOIN visitante AS v
          ON c.visitante_codVisitante = v.codVisitante INNER JOIN funcionario AS f ON f.codFuncionario = c.funcionario_codFuncionario ORDER BY cie.quantIngEvent desc;
            ELSE if (modelo = 'D')
              then SELECT COUNT(*) AS total FROM compra_ingressoeventos;
               ELSE SELECT "Opção inválida!!" AS erro;
               END if;
           END if;
            END if;
      END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure projeto_parque.p_relatorioComprasLanche
DROP PROCEDURE IF EXISTS `p_relatorioComprasLanche`;
DELIMITER //
CREATE PROCEDURE `p_relatorioComprasLanche`(
    IN `modelo` VARCHAR(1)
)
BEGIN
if (modelo = 'A' )
         then SELECT v.nomeVisitante, l.nomeLanche, cat.nomeCategoria,l.precoLanche, cl.quantidadeLanche, (l.precoLanche * cl.quantidadeLanche) AS precoTotal, f.nomeFuncionario, DATE_FORMAT(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento
          FROM comprasLanche AS cl inner join lanche AS l on cl.lanche_codLanche = l.codLanche
          inner JOIN compra AS c ON cl.compra_codCompra = c.codCompra
          INNER JOIN visitante AS v ON c.visitante_codVisitante = v.codVisitante
          INNER JOIN funcionario AS f ON c.funcionario_codFuncionario = f.codFuncionario
          INNER JOIN categoria AS cat ON cat.codCategoria = l.categoria_codCategoria
          order BY cl.codCompraLanche ASC;
        ELSE if (modelo = 'B')
          then SELECT v.nomeVisitante, l.nomeLanche, cat.nomeCategoria,l.precoLanche, cl.quantidadeLanche, (l.precoLanche * cl.quantidadeLanche) AS precoTotal, f.nomeFuncionario, DATE_FORMAT(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento
          FROM comprasLanche AS cl inner join lanche AS l on cl.lanche_codLanche = l.codLanche
          inner JOIN compra AS c ON cl.compra_codCompra = c.codCompra
          INNER JOIN visitante AS v ON c.visitante_codVisitante = v.codVisitante
          INNER JOIN funcionario AS f ON c.funcionario_codFuncionario = f.codFuncionario
          INNER JOIN categoria AS cat ON cat.codCategoria = l.categoria_codCategoria
          ORDER BY cl.codCompraLanche desc;
            ELSE if (modelo = 'C')
            then SELECT v.nomeVisitante, l.nomeLanche, cat.nomeCategoria,l.precoLanche, cl.quantidadeLanche, (l.precoLanche * cl.quantidadeLanche) AS precoTotal, f.nomeFuncionario, DATE_FORMAT(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento
          FROM comprasLanche AS cl inner join lanche AS l on cl.lanche_codLanche = l.codLanche
          inner JOIN compra AS c ON cl.compra_codCompra = c.codCompra
          INNER JOIN visitante AS v ON c.visitante_codVisitante = v.codVisitante
          INNER JOIN funcionario AS f ON c.funcionario_codFuncionario = f.codFuncionario
          INNER JOIN categoria AS cat ON cat.codCategoria = l.categoria_codCategoria
          ORDER BY cl.quantidadeLanche desc;
            ELSE if (modelo = 'D')
              then SELECT COUNT(*) AS total FROM comprasLanche;
               ELSE SELECT "Opção inválida!!" AS erro;
               END if;
           END if;
            END if;
      END if;
END//
DELIMITER ;

-- Copiando estrutura para tabela projeto_parque.tokens_redefinicao
DROP TABLE IF EXISTS `tokens_redefinicao`;
CREATE TABLE IF NOT EXISTS `tokens_redefinicao` (
  `codTokens_Redefinicao` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `tipo_usuario` enum('visitante','funcionario') NOT NULL,
  `expiracao` datetime NOT NULL,
  `criado_em` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`codTokens_Redefinicao`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para tabela projeto_parque.visitante
DROP TABLE IF EXISTS `visitante`;
CREATE TABLE IF NOT EXISTS `visitante` (
  `codVisitante` int NOT NULL AUTO_INCREMENT,
  `nomeVisitante` varchar(450) NOT NULL,
  `dataNascimento` date NOT NULL,
  `email` varchar(450) DEFAULT NULL,
  `senha` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`codVisitante`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando estrutura para trigger projeto_parque.tri_admissaoFuncionario
DROP TRIGGER IF EXISTS `tri_admissaoFuncionario`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_admissaoFuncionario` AFTER INSERT ON `funcionario` FOR EACH ROW BEGIN

SELECT c.nomeCargo INTO @nomeCargo FROM cargo AS c WHERE c.codCargo = NEW.cargo_codCargo;

SET @mensagem = CONCAT("Novo Funcionário '", NEW.nomeFuncionario, "' foi admitido no Parque como '", @nomeCargo,"'");
INSERT INTO auditoria VALUES(NULL, @mensagem, "funcionário", NOW(), USER());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_ajustarCapacidade
DROP TRIGGER IF EXISTS `tri_ajustarCapacidade`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_ajustarCapacidade` AFTER UPDATE ON `compra_ingressobrinquedos` FOR EACH ROW BEGIN

-- Obter o código do brinquedo relacionado ao ingresso
    SELECT b.codBrinquedo INTO @codBrinquedo
    FROM brinquedo AS b
    INNER JOIN ingressobrinquedos AS ib ON b.codBrinquedo = ib.brinquedo_codBrinquedo
    WHERE NEW.ingressoBrinquedos_codIngresso = ib.codIngresso;

    -- Obter a capacidade atual do brinquedo
    SELECT b.capacidadeAtual INTO @capacidadeAtual
    FROM brinquedo AS b
    WHERE b.codBrinquedo = @codBrinquedo;

    -- Verificar se houve alteração na quantidade de ingressos
    IF (NEW.quantIngBrinq != OLD.quantIngBrinq) THEN
        -- Caso de acréscimo de ingressos
        IF (NEW.quantIngBrinq > OLD.quantIngBrinq) THEN
            SET @diferenca = (NEW.quantIngBrinq - OLD.quantIngBrinq);

            -- Verificar se há capacidade suficiente para o acréscimo
            IF (@capacidadeAtual >= @diferenca) THEN
                UPDATE brinquedo
                SET capacidadeAtual = (@capacidadeAtual - @diferenca)
                WHERE codBrinquedo = @codBrinquedo;
            ELSE
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Compra não permitida devido à quantidade de ingressos não disponíveis!';
            END IF;

        -- Caso de devolução de ingressos
        ELSEIF (NEW.quantIngBrinq < OLD.quantIngBrinq) THEN
            SET @diferenca = (OLD.quantIngBrinq - NEW.quantIngBrinq);
            UPDATE brinquedo
            SET capacidadeAtual = (@capacidadeAtual + @diferenca)
            WHERE codBrinquedo = @codBrinquedo;
        END IF;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_apagaCompra
DROP TRIGGER IF EXISTS `tri_apagaCompra`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_apagaCompra` BEFORE DELETE ON `compra` FOR EACH ROW BEGIN
DELETE FROM compraslanche as cl WHERE OLD.codCompra = cl.compra_codCompra;
DELETE FROM compra_ingressobrinquedos AS cib WHERE OLD.codCompra = cib.compra_codCompra;
DELETE FROM compra_ingressoeventos AS cie WHERE OLD.codCompra = cie.compra_codCompra;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_calcularLucroIB
DROP TRIGGER IF EXISTS `tri_calcularLucroIB`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_calcularLucroIB` BEFORE INSERT ON `ingressobrinquedos` FOR EACH ROW BEGIN
SET NEW.valor = NEW.valor + (NEW.valor * (NEW.lucroIB/100));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_calcularLucroIE
DROP TRIGGER IF EXISTS `tri_calcularLucroIE`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_calcularLucroIE` BEFORE INSERT ON `ingressoeventos` FOR EACH ROW BEGIN
SET NEW.valor = NEW.valor + (NEW.valor * (NEW.lucroIE/100));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_calcularPrecoLanches
DROP TRIGGER IF EXISTS `tri_calcularPrecoLanches`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_calcularPrecoLanches` BEFORE INSERT ON `lanche` FOR EACH ROW BEGIN
SET NEW.precoLanche = NEW.precoLanche + (NEW.precoLanche * (NEW.lucroLanches / 100));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_capacidadeAjustar
DROP TRIGGER IF EXISTS `tri_capacidadeAjustar`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_capacidadeAjustar` BEFORE UPDATE ON `brinquedo` FOR EACH ROW BEGIN
if (OLD.capacidadeMaxima != NEW.capacidadeMaxima)
then
-- update brinquedo
SET NEW.capacidadeAtual = NEW.capacidadeMaxima;
END if;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_comissaoCargo
DROP TRIGGER IF EXISTS `tri_comissaoCargo`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_comissaoCargo` BEFORE INSERT ON `cargo` FOR EACH ROW BEGIN
set new.salarioFinal = NEW.salarioInicial + (NEW.salarioInicial * NEW.comissao/100);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_comissaoCargos
DROP TRIGGER IF EXISTS `tri_comissaoCargos`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_comissaoCargos` BEFORE UPDATE ON `cargo` FOR EACH ROW BEGIN
set new.salarioFinal = NEW.salarioInicial + (NEW.salarioInicial * NEW.comissao/100);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_compra_before_delete
DROP TRIGGER IF EXISTS `tri_compra_before_delete`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_compra_before_delete` BEFORE DELETE ON `compra` FOR EACH ROW BEGIN
    DELETE FROM compraslanche as cl WHERE cl.compra_codCompra = OLD.codCompra;
    DELETE FROM compra_ingressobrinquedos AS cib WHERE cib.compra_codCompra = OLD.codCompra;
    DELETE FROM compra_ingressoeventos AS cie WHERE cie.compra_codCompra = OLD.codCompra;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_demissaoFuncionario
DROP TRIGGER IF EXISTS `tri_demissaoFuncionario`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_demissaoFuncionario` AFTER UPDATE ON `funcionario` FOR EACH ROW BEGIN

IF (OLD.dataDemissao IS NULL AND NEW.dataDemissao IS NOT NULL)
THen

        -- Calcular os anos trabalhados
        SET @duracaoFuncionario = TIMESTAMPDIFF(YEAR, NEW.dataAdmissao, NEW.dataDemissao);

        -- Formatar a data de demissão
        SET @demissaoFuncionario = DATE_FORMAT(NEW.dataDemissao, "%d/%m/%Y");

        -- Obter o nome do funcionário
        SET @nomeFuncionario = NEW.nomeFuncionario;

        -- Montar a mensagem
        SET @mensagem = CONCAT("Funcionário: ", @nomeFuncionario,
                              " foi demitido em: ", @demissaoFuncionario,
                              ". Anos Trabalhados: ", @duracaoFuncionario);

        -- Inserir na tabela de auditoria
        INSERT INTO auditoria VALUES (NULL, @mensagem, "funcionario", NOW(), USER());
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_exclusaoVisitante
DROP TRIGGER IF EXISTS `tri_exclusaoVisitante`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_exclusaoVisitante` AFTER DELETE ON `visitante` FOR EACH ROW BEGIN
SET @mensagem = CONCAT("Visitante: ", OLD.nomeVisitante, " excluiu o seu cadastro no Parque!");
INSERT INTO auditoria values(NULL, @mensagem, "visitante", NOW(), USER());
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_funcionamentoBrinquedo
DROP TRIGGER IF EXISTS `tri_funcionamentoBrinquedo`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_funcionamentoBrinquedo` AFTER UPDATE ON `brinquedo` FOR EACH ROW BEGIN

if (NEW.funcionamento != OLD.funcionamento)
then
     if(NEW.funcionamento = 0)
         then
         SET @mensagem = CONCAT("Brinquedo: ", NEW.nomeBrinquedo, " está em manutenção!");
     ELSE if (NEW.funcionamento = 1)
         then
         SET @mensagem = CONCAT("Brinquedo: ", NEW.nomeBrinquedo, " está em funcionamento!");
    ELSE if (NEW.funcionamento IS null)
        then
        SET @mensagem = CONCAT("O status do brinquedo: ", NEW.nomeBrinquedo, " é desconhecido!");
    ELSE
        SET @mensagem = CONCAT("O status do brinquedo: ", NEW.nomeBrinquedo, " é inválido!");
END if;
END if;
END if;
END if;

INSERT INTO auditoria VALUES (NULL, @mensagem, "brinquedo", NOW(), USER());
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_ingressoInvalido
DROP TRIGGER IF EXISTS `tri_ingressoInvalido`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_ingressoInvalido` AFTER INSERT ON `compra_ingressoeventos` FOR EACH ROW BEGIN
#pesquisar código do visitante
SELECT c.visitante_codVisitante INTO  @codVisitante FROM compra AS c WHERE c.codCompra = NEW.compra_codCompra;

#descobrir nome do visitante
SELECT v.nomeVisitante INTO @nomeVisitante FROM visitante AS v WHERE v.codVisitante = @codVisitante;

#descobrir a data fim do evento
SELECT e.dataFim INTO @datafim FROM eventos AS e
INNER JOIN ingressoeventos AS ie ON e.codEventos = ie.eventos_codEventos
WHERE NEW.ingressoEventos_codIngresso = ie.codIngresso;

#descobrir o nome do evento
SELECT e.nomeEvento INTO @nomeEvento FROM eventos AS e
INNER JOIN ingressoeventos AS ie ON e.codEventos = ie.eventos_codEventos
WHERE NEW.ingressoEventos_codIngresso = ie.codIngresso;

if (@datafim < NOW())
then
SET @mensagem = CONCAT("Visitante: ", @nomeVisitante, " tentou comprar um ingresso inválido ou cujo evento encerrou-se!");
    INSERT INTO auditoria VALUES(NULL, @mensagem , "compra_ingressoeventos", NOW(),USER());
    SIGNAL SQLSTATE '45000' -- SQLSTATE '45000' é usado para erros definidos pelo usuário
            SET MESSAGE_TEXT = 'Compra não permitida: o evento já foi encerrado ou o ingresso é inválido!';
ELSE
    SET @mensagem = CONCAT("Visitante: ", @nomeVisitante ," comprou ingresso(s) para o evento: ", @nomeEvento);
    INSERT INTO auditoria VALUES(NULL, @mensagem , "compra_ingressoeventos", NOW(),USER());
END if;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_novoVisitante
DROP TRIGGER IF EXISTS `tri_novoVisitante`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_novoVisitante` AFTER INSERT ON `visitante` FOR EACH ROW BEGIN
SET @mensagem = CONCAT("Visitante: ", new.nomeVisitante, " concluiu o seu cadastro no Parque!");
INSERT INTO auditoria values(NULL, @mensagem, "visitante", NOW(), USER());
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_recalcularLucroIB
DROP TRIGGER IF EXISTS `tri_recalcularLucroIB`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_recalcularLucroIB` BEFORE UPDATE ON `ingressobrinquedos` FOR EACH ROW BEGIN
if (OLD.valor != NEW.valor)
then
    if (OLD.lucroIB != NEW.lucroIB)
        then SET NEW.valor = NEW.valor + (NEW.valor * (NEW.lucroIB/100));
    ELSE
        SET NEW.valor = NEW.valor + (NEW.valor * (NEW.lucroIB/100));
END if;
END if;
end//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_recalcularLucroIE
DROP TRIGGER IF EXISTS `tri_recalcularLucroIE`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_recalcularLucroIE` BEFORE UPDATE ON `ingressoeventos` FOR EACH ROW BEGIN
-- Se tanto o valor quanto o lucro mudarem
    IF OLD.valor != NEW.valor AND OLD.lucroIE != NEW.lucroIE THEN
        SET NEW.valor = NEW.valor + (NEW.valor * (NEW.lucroIE / 100));

    -- Se apenas o valor mudar
    ELSEIF OLD.valor != NEW.valor THEN
        SET NEW.valor = NEW.valor + (NEW.valor * (OLD.lucroIE / 100));

    -- Se apenas o lucro mudar
    ELSEIF OLD.lucroIE != NEW.lucroIE THEN
        SET NEW.valor = OLD.valor + (OLD.valor * (NEW.lucroIE / 100));
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_recalcularPrecoLanche
DROP TRIGGER IF EXISTS `tri_recalcularPrecoLanche`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_recalcularPrecoLanche` BEFORE UPDATE ON `lanche` FOR EACH ROW BEGIN
-- Se preço e lucro mudarem
    IF OLD.precoLanche != NEW.precoLanche AND OLD.lucroLanches != NEW.lucroLanches THEN
        SET NEW.precoLanche = NEW.precoLanche + (NEW.precoLanche * (NEW.lucroLanches / 100));

    -- Se apenas o lucro mudar
    ELSEIF OLD.lucroLanches != NEW.lucroLanches THEN
        SET NEW.precoLanche = OLD.precoLanche * (1 + (NEW.lucroLanches / 100));

    -- Se apenas o preço mudar
    ELSEIF OLD.precoLanche != NEW.precoLanche THEN
        SET NEW.precoLanche = OLD.precoLanche * (1 + (OLD.lucroLanches / 100));
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_restricaoIdade
DROP TRIGGER IF EXISTS `tri_restricaoIdade`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_restricaoIdade` AFTER INSERT ON `compra_ingressobrinquedos` FOR EACH ROW BEGIN
#pesquisar código do visitante
SELECT c.visitante_codVisitante INTO  @codVisitante FROM compra AS c WHERE c.codCompra = NEW.compra_codCompra;

#pesquisar a data de nascimento do visitante
SELECT v.dataNascimento INTO @nascimento FROM visitante AS v WHERE v.codVisitante = @codVisitante;

#descobrir nome do visitante
SELECT v.nomeVisitante INTO @nomeVisitante FROM visitante AS v WHERE v.codVisitante = @codVisitante;

#calcular a idade do visitante
SELECT floor(((to_days(curdate()) - TO_DAYS(@nascimento)) / 365)) INTO @idadeVisitante;

#descobrir código do brinquedo
SELECT codBrinquedo INTO @codBrinquedo FROM brinquedo AS b
INNER JOIN ingressobrinquedos AS ib ON b.codBrinquedo = ib.brinquedo_codBrinquedo
WHERE NEW.ingressoBrinquedos_codIngresso = ib.codIngresso;

#descobrir a restricao de idade do brinquedo
SELECT idadeRestrita INTO @restricao FROM brinquedo AS b
INNER JOIN ingressobrinquedos AS ib ON b.codBrinquedo = ib.brinquedo_codBrinquedo
WHERE NEW.ingressoBrinquedos_codIngresso = ib.codIngresso;

#descobrir o nome do brinquedo
SELECT b.nomeBrinquedo INTO @nomebrinquedo FROM brinquedo AS b
INNER JOIN ingressobrinquedos AS ib ON b.codBrinquedo = ib.brinquedo_codBrinquedo
WHERE NEW.ingressoBrinquedos_codIngresso = ib.codIngresso;

#armazenar a capacidade atual
SELECT b.capacidadeAtual INTO @capacidadeAtual FROM brinquedo AS b
INNER JOIN ingressobrinquedos AS ib ON b.codBrinquedo = ib.brinquedo_codBrinquedo
WHERE NEW.ingressoBrinquedos_codIngresso = ib.codIngresso;

#armazenar o funcionamento atual
SELECT b.funcionamento INTO @funcionamento FROM brinquedo AS b
INNER JOIN ingressobrinquedos AS ib ON b.codBrinquedo = ib.brinquedo_codBrinquedo
WHERE NEW.ingressoBrinquedos_codIngresso = ib.codIngresso;

IF (@funcionamento = 1) THEN
    IF (@idadeVisitante < @restricao) THEN
        SET @mensagem = CONCAT("Visitante: ", @nomeVisitante, " não possui idade suficiente para o brinquedo: ", @nomebrinquedo, ". Idade mínima: ", @restricao, ", Idade do Visitante: ", @idadeVisitante);
        INSERT INTO auditoria VALUES(NULL, @mensagem , "compra_ingressobrinquedos", NOW(), USER());
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Compra não permitida devido à restrição de idade do brinquedo!';
    ELSE
        IF (@idadeVisitante >= @restricao) THEN
            SET @mensagem = CONCAT("Visitante: ", @nomeVisitante, " comprou ingresso(s) para o brinquedo: ", @nomebrinquedo);
            INSERT INTO auditoria VALUES(NULL, @mensagem , "compra_ingressobrinquedos", NOW(), USER());
        END IF;

        -- Atualizando a capacidade atual do brinquedo
        IF (NEW.quantIngBrinq <= @capacidadeAtual) THEN
            UPDATE brinquedo AS b SET b.capacidadeAtual = (b.capacidadeMaxima - NEW.quantIngBrinq) WHERE @codBrinquedo = b.codBrinquedo;
        ELSE
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Compra não permitida devido à quantidade de ingressos não disponíveis para comprar!';
        END IF;
    END IF;
ELSE
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Compra não permitida devido à inatividade/ou status desconhecido do brinquedo!';
END IF;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger projeto_parque.tri_restricaoVerificada
DROP TRIGGER IF EXISTS `tri_restricaoVerificada`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_restricaoVerificada` AFTER UPDATE ON `compra_ingressobrinquedos` FOR EACH ROW BEGIN
#pesquisar código do visitante
SELECT c.visitante_codVisitante INTO  @codVisitante FROM compra AS c WHERE c.codCompra = NEW.compra_codCompra;

#pesquisar a data de nascimento do visitante
SELECT v.dataNascimento INTO @nascimento FROM visitante AS v WHERE v.codVisitante = @codVisitante;

#descobrir nome do visitante
SELECT v.nomeVisitante INTO @nomeVisitante FROM visitante AS v WHERE v.codVisitante = @codVisitante;

#calcular a idade do visitante
SELECT floor(((to_days(curdate()) - TO_DAYS(@nascimento)) / 365)) INTO @idadeVisitante;

#descobrir código do brinquedo
SELECT codBrinquedo INTO @codBrinquedo FROM brinquedo AS b
INNER JOIN ingressobrinquedos AS ib ON b.codBrinquedo = ib.brinquedo_codBrinquedo
WHERE NEW.ingressoBrinquedos_codIngresso = ib.codIngresso;

#descobrir a restricao de idade do brinquedo
SELECT idadeRestrita INTO @restricao FROM brinquedo AS b
INNER JOIN ingressobrinquedos AS ib ON b.codBrinquedo = ib.brinquedo_codBrinquedo
WHERE NEW.ingressoBrinquedos_codIngresso = ib.codIngresso;

#descobrir o nome do brinquedo
SELECT b.nomeBrinquedo INTO @nomebrinquedo FROM brinquedo AS b
INNER JOIN ingressobrinquedos AS ib ON b.codBrinquedo = ib.brinquedo_codBrinquedo
WHERE NEW.ingressoBrinquedos_codIngresso = ib.codIngresso;

#armazenar a capacidade atual
SELECT b.capacidadeAtual INTO @capacidadeAtual FROM brinquedo AS b
INNER JOIN ingressobrinquedos AS ib ON b.codBrinquedo = ib.brinquedo_codBrinquedo
WHERE NEW.ingressoBrinquedos_codIngresso = ib.codIngresso;

#armazenar o funcionamento atual
SELECT b.funcionamento INTO @funcionamento FROM brinquedo AS b
INNER JOIN ingressobrinquedos AS ib ON b.codBrinquedo = ib.brinquedo_codBrinquedo
WHERE NEW.ingressoBrinquedos_codIngresso = ib.codIngresso;

IF (@funcionamento = 1) THEN
    IF (@idadeVisitante < @restricao) THEN
        SET @mensagem = CONCAT("Visitante: ", @nomeVisitante, " não possui idade suficiente para o brinquedo: ", @nomebrinquedo, ". Idade mínima: ", @restricao, ", Idade do Visitante: ", @idadeVisitante);
        INSERT INTO auditoria VALUES(NULL, @mensagem , "compra_ingressobrinquedos", NOW(), USER());
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Compra não permitida devido à restrição de idade do brinquedo!';
    ELSE
        IF (@idadeVisitante >= @restricao) THEN
            SET @mensagem = CONCAT("Visitante: ", @nomeVisitante, " comprou ingresso(s) para o brinquedo: ", @nomebrinquedo);
            INSERT INTO auditoria VALUES(NULL, @mensagem , "compra_ingressobrinquedos", NOW(), USER());
        END IF;

        -- Atualizando a capacidade atual do brinquedo
        IF (NEW.quantIngBrinq <= @capacidadeAtual) THEN
            UPDATE brinquedo AS b SET b.capacidadeAtual = (b.capacidadeMaxima - NEW.quantIngBrinq) WHERE @codBrinquedo = b.codBrinquedo;
        ELSE
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Compra não permitida devido à quantidade de ingressos não disponíveis para comprar!';
        END IF;
    END IF;
ELSE
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Compra não permitida devido à inatividade/ou status desconhecido do brinquedo!';
END IF;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
