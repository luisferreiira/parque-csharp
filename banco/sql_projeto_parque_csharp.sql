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
CREATE DATABASE IF NOT EXISTS `projeto_parque` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projeto_parque`;

-- Copiando estrutura para tabela projeto_parque.auditoria
DROP TABLE IF EXISTS `auditoria`;
CREATE TABLE IF NOT EXISTS `auditoria` (
  `codAuditoria` int NOT NULL AUTO_INCREMENT,
  `acao` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tabela` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dataHora` datetime NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`codAuditoria`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.auditoria: ~135 rows (aproximadamente)
INSERT IGNORE INTO `auditoria` (`codAuditoria`, `acao`, `tabela`, `dataHora`, `usuario`) VALUES
	(1, 'Novo Funcionário \'teste\' foi admitido no Parque como \'Operador de Brinquedo\'', 'funcionário', '2025-01-18 16:04:13', 'root@localhost'),
	(2, 'Novo Funcionário \'teste\' foi admitido no Parque como \'Operador de Brinquedo\'', 'funcionário', '2025-01-18 16:23:25', 'root@localhost'),
	(3, 'Novo Funcionário \'teste\' foi admitido no Parque como \'Operador de Brinquedo\'', 'funcionário', '2025-01-18 16:44:49', 'root@localhost'),
	(4, 'Novo Funcionário \'eeeeee\' foi admitido no Parque como \'Operador de Brinquedo\'', 'funcionário', '2025-01-18 16:48:28', 'root@localhost'),
	(5, 'Novo Funcionário \'eeeeeeeee\' foi admitido no Parque como \'Operador de Brinquedo\'', 'funcionário', '2025-01-18 16:49:54', 'root@localhost'),
	(6, 'Novo Funcionário \'teste\' foi admitido no Parque como \'Operador de Brinquedo\'', 'funcionário', '2025-01-18 17:17:24', 'root@localhost'),
	(7, 'Funcionário: teste foi demitido em: 19/01/2025. Anos Trabalhados: 0', 'funcionario', '2025-01-18 17:24:10', 'root@localhost'),
	(8, 'Funcionário: teste foi demitido em: 19/01/2025. Anos Trabalhados: 0', 'funcionario', '2025-01-18 18:27:34', 'root@localhost'),
	(9, 'Visitante: Elena Gilbert comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2025-01-20 20:09:13', 'root@localhost'),
	(10, 'Visitante: Elena Gilbert comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2025-01-20 20:09:13', 'root@localhost'),
	(11, 'Visitante: Serena van der Woodsen comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2025-01-20 20:15:10', 'root@localhost'),
	(12, 'Visitante: Serena van der Woodsen comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2025-01-20 20:15:10', 'root@localhost'),
	(13, 'Brinquedo: teste2 está em manutenção!', 'brinquedo', '2025-01-21 08:39:44', 'root@localhost'),
	(14, NULL, 'brinquedo', '2025-01-21 08:54:04', 'root@localhost'),
	(15, NULL, 'brinquedo', '2025-01-21 09:01:17', 'root@localhost'),
	(16, 'Visitante: tulio concluiu o seu cadastro no Parque!', 'visitante', '2025-01-21 09:18:53', 'root@localhost'),
	(17, 'Visitante: tulio excluiu o seu cadastro no Parque!', 'visitante', '2025-01-21 09:19:02', 'root@localhost'),
	(18, 'Novo Funcionário \'teste\' foi admitido no Parque como \'Técnico de Manutenção\'', 'funcionário', '2025-01-21 10:33:42', 'root@localhost'),
	(19, 'Visitante: testes concluiu o seu cadastro no Parque!', 'visitante', '2025-01-21 20:57:56', 'root@localhost'),
	(23, 'Visitante: testes comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2025-01-25 14:21:24', 'root@localhost'),
	(24, 'Visitante: testes comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2025-01-25 14:21:24', 'root@localhost'),
	(25, 'Visitante: testes comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2025-01-25 14:28:29', 'root@localhost'),
	(26, 'Visitante: testes comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2025-01-25 14:28:29', 'root@localhost'),
	(27, 'Visitante: testes comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2025-01-25 16:25:53', 'root@localhost'),
	(28, 'Visitante: testes comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2025-01-25 16:25:53', 'root@localhost'),
	(31, 'Visitante: testes comprou ingresso(s) para o evento: Baile de Máscaras', 'compra_ingressoeventos', '2025-01-25 16:49:23', 'root@localhost'),
	(33, 'Visitante: testes comprou ingresso(s) para o evento: Baile de Máscaras', 'compra_ingressoeventos', '2025-01-27 21:34:07', 'root@localhost'),
	(34, 'Visitante: testes comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2025-01-27 21:50:09', 'root@localhost'),
	(35, 'Visitante: testes comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2025-01-27 21:50:09', 'root@localhost'),
	(36, 'Visitante: testes comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2025-01-27 21:51:55', 'root@localhost'),
	(37, 'Visitante: testes comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2025-01-27 21:51:55', 'root@localhost'),
	(38, 'Visitante: testes comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2025-01-27 21:52:48', 'root@localhost'),
	(39, 'Visitante: testes comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2025-01-27 21:52:48', 'root@localhost'),
	(40, 'Visitante: testes comprou ingresso(s) para o evento: Baile de Máscaras', 'compra_ingressoeventos', '2025-01-27 21:53:10', 'root@localhost'),
	(42, 'Visitante: testes comprou ingresso(s) para o evento: Baile de Máscaras', 'compra_ingressoeventos', '2025-01-28 09:15:21', 'root@localhost'),
	(45, 'Visitante: testes comprou ingresso(s) para o evento: Show de Luzes', 'compra_ingressoeventos', '2025-04-08 19:41:35', 'root@localhost'),
	(46, 'Brinquedo: tobogã está em funcionamento!', 'brinquedo', '2025-04-19 10:38:57', 'root@localhost'),
	(47, NULL, 'brinquedo', '2025-04-19 10:39:13', 'root@localhost'),
	(48, 'O status do brinquedo: tobogãaa é inválido!', 'brinquedo', '2025-04-19 10:40:34', 'root@localhost'),
	(49, NULL, 'brinquedo', '2025-04-19 11:03:45', 'root@localhost'),
	(50, NULL, 'brinquedo', '2025-04-19 11:03:57', 'root@localhost'),
	(51, NULL, 'brinquedo', '2025-04-19 11:04:57', 'root@localhost'),
	(52, 'Visitante: Luis concluiu o seu cadastro no Parque!', 'visitante', '2025-04-19 12:28:14', 'root@localhost'),
	(53, 'Visitante: Luis concluiu o seu cadastro no Parque!', 'visitante', '2025-04-19 12:31:14', 'root@localhost'),
	(54, 'Visitante: eu dnv concluiu o seu cadastro no Parque!', 'visitante', '2025-04-19 12:31:34', 'root@localhost'),
	(55, 'Visitante: eu dnv excluiu o seu cadastro no Parque!', 'visitante', '2025-04-19 12:40:56', 'root@localhost'),
	(56, 'Visitante: Luis excluiu o seu cadastro no Parque!', 'visitante', '2025-04-19 12:41:03', 'root@localhost'),
	(57, 'Visitante: eu dnv concluiu o seu cadastro no Parque!', 'visitante', '2025-04-21 17:33:45', 'root@localhost'),
	(58, 'Visitante: eu dnv excluiu o seu cadastro no Parque!', 'visitante', '2025-04-21 17:34:06', 'root@localhost'),
	(59, 'roubo', ' brinquedo', '2025-05-12 21:42:00', ' ladrao'),
	(60, 'Novo Funcionário \'Paola Scalco\' foi admitido no Parque como \'Segurança\'', 'funcionário', '2025-06-07 17:12:08', 'root@localhost'),
	(61, 'Funcionário: Izzie Stevenss foi demitido em: 15/08/2026. Anos Trabalhados: 1', 'funcionario', '2025-06-07 17:15:24', 'root@localhost'),
	(62, 'Novo Funcionário \'Paola Scalco\' foi admitido no Parque como \'Zeladora\'', 'funcionário', '2025-06-07 17:24:15', 'root@localhost'),
	(63, 'Funcionário: Paola Scalco foi demitido em: 30/06/2025. Anos Trabalhados: 0', 'funcionario', '2025-06-07 17:24:26', 'root@localhost'),
	(64, 'Novo Funcionário \'Paola Scalco\' foi admitido no Parque como \'Gerente\'', 'funcionário', '2025-06-10 13:45:56', 'root@localhost'),
	(65, 'Novo Funcionário \'Paola Scalco\' foi admitido no Parque como \'Operador de Brinquedo\'', 'funcionário', '2025-06-10 13:52:47', 'root@localhost'),
	(66, 'Visitante: Túlio concluiu o seu cadastro no Parque!', 'visitante', '2025-07-01 13:17:29', 'root@localhost'),
	(67, 'Novo Funcionário \'Crisitna Yang\' foi admitido no Parque como \'Atendente\'', 'funcionário', '2025-07-01 13:32:49', 'root@localhost'),
	(71, 'Novo Funcionário \'Crisitna Yang\' foi admitido no Parque como \'Atendente\'', 'brinquedo', '2025-07-01 14:03:58', 'root@localhost'),
	(72, 'Novo Funcionário \'Crisitna Yang\' foi admitido no Parque como \'Atendente\'', 'brinquedo', '2025-07-01 14:04:07', 'root@localhost'),
	(73, 'Novo Funcionário \'Crisitna Yang\' foi admitido no Parque como \'Atendente\'', 'brinquedo', '2025-07-01 14:04:09', 'root@localhost'),
	(74, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-01 14:13:28', 'root@localhost'),
	(75, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-01 14:13:28', 'root@localhost'),
	(76, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2025-07-01 14:13:28', 'root@localhost'),
	(77, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2025-07-01 14:13:28', 'root@localhost'),
	(78, 'Visitante: Luis comprou ingresso(s) para o evento: Noite do Terror', 'compra_ingressoeventos', '2025-07-01 14:13:28', 'root@localhost'),
	(79, 'Visitante: Luis comprou ingresso(s) para o evento: Show de Luzes', 'compra_ingressoeventos', '2025-07-01 14:13:28', 'root@localhost'),
	(80, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-01 14:20:36', 'root@localhost'),
	(81, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-01 14:20:36', 'root@localhost'),
	(82, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-01 14:20:36', 'root@localhost'),
	(83, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-01 14:20:36', 'root@localhost'),
	(84, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2025-07-01 14:20:36', 'root@localhost'),
	(85, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2025-07-01 14:20:36', 'root@localhost'),
	(86, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2025-07-01 14:20:36', 'root@localhost'),
	(87, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2025-07-01 14:20:36', 'root@localhost'),
	(88, 'Brinquedo: Trem Fantasma está em funcionamento!', 'brinquedo', '2025-07-01 14:23:42', 'root@localhost'),
	(89, 'Visitante: Luis comprou ingresso(s) para o evento: Noite do Terror', 'compra_ingressoeventos', '2025-07-01 14:28:03', 'root@localhost'),
	(90, 'Visitante: Luis comprou ingresso(s) para o evento: Noite do Terror', 'compra_ingressoeventos', '2025-07-01 14:28:03', 'root@localhost'),
	(91, 'Visitante: Luis comprou ingresso(s) para o evento: Festival de Magia', 'compra_ingressoeventos', '2025-07-01 14:28:03', 'root@localhost'),
	(92, 'Visitante: Luis comprou ingresso(s) para o evento: Festival de Magia', 'compra_ingressoeventos', '2025-07-01 14:28:03', 'root@localhost'),
	(93, 'Visitante: Luis comprou ingresso(s) para o evento: Show de Luzes', 'compra_ingressoeventos', '2025-07-01 14:28:03', 'root@localhost'),
	(94, 'Visitante: Luis comprou ingresso(s) para o evento: Show de Luzes', 'compra_ingressoeventos', '2025-07-01 14:28:03', 'root@localhost'),
	(95, 'Visitante: Luis comprou ingresso(s) para o evento: Baile de Máscaras', 'compra_ingressoeventos', '2025-07-01 14:28:03', 'root@localhost'),
	(96, 'Visitante: Luis comprou ingresso(s) para o evento: Baile de Máscaras', 'compra_ingressoeventos', '2025-07-01 14:28:03', 'root@localhost'),
	(97, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-01 14:29:06', 'root@localhost'),
	(98, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-01 14:29:06', 'root@localhost'),
	(99, 'Visitante: Luis comprou ingresso(s) para o evento: Noite do Terror', 'compra_ingressoeventos', '2025-07-01 14:29:06', 'root@localhost'),
	(100, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-01 15:02:01', 'root@localhost'),
	(101, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-01 15:02:01', 'root@localhost'),
	(102, 'Visitante: Luis comprou ingresso(s) para o evento: Show de Luzes', 'compra_ingressoeventos', '2025-07-01 15:02:01', 'root@localhost'),
	(103, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-02 10:25:49', 'root@localhost'),
	(104, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-02 10:25:49', 'root@localhost'),
	(105, 'Visitante: Luis comprou ingresso(s) para o evento: Baile de Máscaras', 'compra_ingressoeventos', '2025-07-02 10:31:34', 'root@localhost'),
	(106, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-02 10:42:23', 'root@localhost'),
	(107, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-02 10:42:23', 'root@localhost'),
	(108, 'Visitante: Luis comprou ingresso(s) para o evento: Noite do Terror', 'compra_ingressoeventos', '2025-07-02 10:42:23', 'root@localhost'),
	(109, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-02 10:42:53', 'root@localhost'),
	(110, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-02 10:42:53', 'root@localhost'),
	(111, 'Visitante: Luis comprou ingresso(s) para o evento: Noite do Terror', 'compra_ingressoeventos', '2025-07-02 10:42:53', 'root@localhost'),
	(112, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-02 10:43:11', 'root@localhost'),
	(113, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-02 10:43:11', 'root@localhost'),
	(114, 'Visitante: Luis comprou ingresso(s) para o evento: Noite do Terror', 'compra_ingressoeventos', '2025-07-02 10:43:11', 'root@localhost'),
	(115, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-08 13:05:05', 'root@localhost'),
	(116, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-08 13:05:05', 'root@localhost'),
	(117, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-08 13:06:10', 'root@localhost'),
	(118, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-08 13:06:10', 'root@localhost'),
	(119, 'Visitante: Túlio excluiu o seu cadastro no Parque!', 'visitante', '2025-07-15 09:25:00', 'root@localhost'),
	(120, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-15 09:53:00', 'root@localhost'),
	(121, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-15 09:53:00', 'root@localhost'),
	(122, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-15 09:59:30', 'root@localhost'),
	(123, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-15 09:59:30', 'root@localhost'),
	(124, 'Visitante: Luis comprou ingresso(s) para o evento: Noite do Terror', 'compra_ingressoeventos', '2025-07-15 09:59:31', 'root@localhost'),
	(125, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2025-07-15 10:00:04', 'root@localhost'),
	(126, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2025-07-15 10:00:04', 'root@localhost'),
	(127, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2025-07-15 10:06:29', 'root@localhost'),
	(128, 'Visitante: Luis comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2025-07-15 10:06:29', 'root@localhost'),
	(129, 'Visitante: Luis comprou ingresso(s) para o evento: Baile de Máscaras', 'compra_ingressoeventos', '2025-07-15 10:06:48', 'root@localhost'),
	(130, 'Visitante: Tulio concluiu o seu cadastro no Parque!', 'visitante', '2025-07-15 14:00:17', 'root@localhost'),
	(133, 'Visitante: Tulio comprou ingresso(s) para o evento: Noite do Terror', 'compra_ingressoeventos', '2025-07-15 14:01:43', 'root@localhost'),
	(136, 'Novo Funcionário \'ket\' foi admitido no Parque como \'Técnico de Manutenção\'', 'funcionário', '2025-08-05 14:13:59', 'root@localhost'),
	(137, 'Visitante: teste concluiu o seu cadastro no Parque!', 'visitante', '2025-08-05 19:22:46', 'root@localhost'),
	(138, 'Novo Funcionário \'Luis\' foi admitido no Parque como \'Gerente\'', 'funcionário', '2025-08-05 19:48:17', 'root@localhost'),
	(140, 'Visitante: LUIS FERREIRA comprou ingresso(s) para o evento: Baile de Máscaras', 'compra_ingressoeventos', '2025-08-05 20:36:11', 'root@localhost'),
	(142, 'Visitante: Tulio concluiu o seu cadastro no Parque!', 'visitante', '2025-09-02 13:29:45', 'root@localhost'),
	(145, 'Visitante: Visitante Maior de Idade concluiu o seu cadastro no Parque!', 'visitante', '2026-11-08 16:15:39', 'root@localhost'),
	(146, 'Visitante: Visitante Menor de Idade concluiu o seu cadastro no Parque!', 'visitante', '2026-11-08 16:15:51', 'root@localhost'),
	(147, 'Visitante: Serena van der Woodsen comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2026-11-08 17:18:43', 'root@localhost'),
	(148, 'Visitante: Serena van der Woodsen comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2026-11-08 17:18:43', 'root@localhost'),
	(149, 'Visitante: Serena van der Woodsen comprou ingresso(s) para o evento: Baile de Máscaras', 'compra_ingressoeventos', '2026-11-08 17:18:43', 'root@localhost'),
	(153, 'Visitante: Visitante Menor de Idade comprou ingresso(s) para o evento: Show de Luzes', 'compra_ingressoeventos', '2026-11-08 17:21:49', 'root@localhost'),
	(155, 'Visitante: Nate Archibald comprou ingresso(s) para o brinquedo: Torre do Medo', 'compra_ingressobrinquedos', '2026-11-08 19:23:52', 'root@localhost'),
	(156, 'Visitante: Nate Archibald comprou ingresso(s) para o brinquedo: Torre do Medo', 'brinquedo', '2026-11-08 19:23:52', 'root@localhost'),
	(157, 'Visitante: Nate Archibald comprou ingresso(s) para o brinquedo: Roda Encantada', 'compra_ingressobrinquedos', '2026-11-08 19:23:52', 'root@localhost'),
	(158, 'Visitante: Nate Archibald comprou ingresso(s) para o brinquedo: Roda Encantada', 'brinquedo', '2026-11-08 19:23:52', 'root@localhost'),
	(159, 'Visitante: Nate Archibald comprou ingresso(s) para o evento: Show de Luzes', 'compra_ingressoeventos', '2026-11-08 19:23:52', 'root@localhost'),
	(160, 'Novo Funcionário \'Maria\' foi admitido no Parque como \'Gerente\'', 'funcionário', '2026-11-08 19:56:21', 'root@localhost'),
	(161, 'Visitante: Elena Gilbert comprou ingresso(s) para o brinquedo: Trem Fantasma', 'compra_ingressobrinquedos', '2026-11-14 09:55:06', 'root@localhost'),
	(162, 'Visitante: Elena Gilbert comprou ingresso(s) para o brinquedo: Trem Fantasma', 'brinquedo', '2026-11-14 09:55:06', 'root@localhost'),
	(163, 'Visitante: Elena Gilbert comprou ingresso(s) para o evento: Show de Luzes', 'compra_ingressoeventos', '2026-11-14 09:55:06', 'root@localhost'),
	(164, 'Novo Funcionário \'admin\' foi admitido no Parque como \'Gerente\'', 'funcionário', '2026-11-14 10:01:54', 'root@localhost');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.brinquedo: ~5 rows (aproximadamente)
INSERT IGNORE INTO `brinquedo` (`codBrinquedo`, `nomeBrinquedo`, `capacidadeMaxima`, `capacidadeAtual`, `tipoBrinquedo`, `idadeRestrita`, `funcionamento`) VALUES
	(1, 'Torre do Medo', 100, 99, 'Radical', 14, 1),
	(2, 'Roda Encantada', 100, 99, 'Familiar', 0, 1),
	(3, 'Trem Fantasma', 100, 99, 'Temático', 10, 1),
	(14, 'tobogãaa', 21, 21, 'aquáticooo', 17, 2),
	(15, 'teste', 1, 1, 'testee', 10, 0);

-- Copiando estrutura para tabela projeto_parque.cargo
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `codCargo` int NOT NULL AUTO_INCREMENT,
  `nomeCargo` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `salarioInicial` double NOT NULL,
  `salarioFinal` double DEFAULT NULL,
  `comissao` int DEFAULT NULL,
  PRIMARY KEY (`codCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.cargo: ~6 rows (aproximadamente)
INSERT IGNORE INTO `cargo` (`codCargo`, `nomeCargo`, `salarioInicial`, `salarioFinal`, `comissao`) VALUES
	(1, 'Operador de Brinquedo', 2000, 2000, 0),
	(2, 'Técnico de Manutenção', 2500, 2500, 0),
	(3, 'Segurança', 2200, 2200, 0),
	(4, 'Atendente', 2000, 2000, 0),
	(5, 'Gerente', 3500, 3500, 0),
	(29, 'Zeladora', 3000, 3000, 0);

-- Copiando estrutura para tabela projeto_parque.categoria
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `codCategoria` int NOT NULL AUTO_INCREMENT,
  `nomeCategoria` varchar(450) NOT NULL,
  `descricao` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`codCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.categoria: ~4 rows (aproximadamente)
INSERT IGNORE INTO `categoria` (`codCategoria`, `nomeCategoria`, `descricao`) VALUES
	(1, 'Bebidas', 'Bebidas variadas como sucos e refrigerantes.'),
	(2, 'Lanche Rápido', 'Alimentos de fácil preparo, como salgados.'),
	(3, 'Sobremesa', 'Doces e sobremesas para visitantes.'),
	(20, 'teste', '');

-- Copiando estrutura para tabela projeto_parque.compra
DROP TABLE IF EXISTS `compra`;
CREATE TABLE IF NOT EXISTS `compra` (
  `codCompra` int NOT NULL AUTO_INCREMENT,
  `tipoPagamento` varchar(45) NOT NULL,
  `dataCompra` datetime NOT NULL DEFAULT (now()),
  `visitante_codVisitante` int NOT NULL,
  `funcionario_codFuncionario` int NOT NULL,
  PRIMARY KEY (`codCompra`,`visitante_codVisitante`,`funcionario_codFuncionario`),
  UNIQUE KEY `uq_compra_codigo` (`codCompra`),
  KEY `fk_compra_visitante1_idx` (`visitante_codVisitante`),
  KEY `fk_compra_funcionario1_idx` (`funcionario_codFuncionario`),
  CONSTRAINT `fk_compra_funcionario1` FOREIGN KEY (`funcionario_codFuncionario`) REFERENCES `funcionario` (`codFuncionario`),
  CONSTRAINT `fk_compra_visitante1` FOREIGN KEY (`visitante_codVisitante`) REFERENCES `visitante` (`codVisitante`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.compra: ~48 rows (aproximadamente)
INSERT IGNORE INTO `compra` (`codCompra`, `tipoPagamento`, `dataCompra`, `visitante_codVisitante`, `funcionario_codFuncionario`) VALUES
	(1, 'Cartão de Crédito', '2024-11-19 00:00:00', 1, 6),
	(2, 'Cartão de Débito', '2024-12-11 16:05:24', 6, 4),
	(4, 'Dinheiro', '2025-01-17 11:57:07', 8, 6),
	(5, 'PIX', '2025-01-17 12:50:28', 3, 4),
	(7, 'Dinheiro', '2025-01-20 00:00:00', 8, 15),
	(16, 'Dinheiro', '2025-01-21 00:00:00', 2, 15),
	(17, 'Cartão de Crédito', '2025-01-21 00:00:00', 8, 6),
	(22, 'Dinheiro', '2025-01-21 00:00:00', 8, 15),
	(30, 'Dinheiro', '2025-01-21 20:21:25', 8, 15),
	(34, 'Dinheiro', '2025-01-21 20:29:06', 2, 15),
	(92, 'Dinheiro', '2025-01-27 21:33:15', 10, 4),
	(93, 'Pix', '2025-01-27 21:41:43', 10, 4),
	(94, 'Cartão de Crédito', '2025-01-27 21:49:37', 10, 6),
	(95, 'Dinheiro', '2025-01-27 21:52:37', 10, 6),
	(96, 'Dinheiro', '2025-01-28 09:13:09', 10, 4),
	(97, 'Dinheiro', '2025-01-28 09:13:55', 10, 15),
	(98, 'Dinheiro', '2025-01-28 09:15:06', 10, 6),
	(99, 'Dinheiro', '2025-01-28 09:16:33', 10, 6),
	(100, 'Dinheiro', '2025-01-28 09:49:47', 10, 6),
	(101, 'Dinheiro', '2025-04-08 19:28:11', 10, 6),
	(102, 'Dinheiro', '2025-04-08 19:36:47', 10, 4),
	(103, 'Dinheiro', '2025-04-08 19:40:36', 10, 4),
	(106, 'PIX', '2025-07-01 13:50:54', 11, 4),
	(107, 'CartÃ£o de CrÃ©dito', '2025-07-01 14:13:28', 11, 6),
	(108, 'Dinheiro', '2025-07-01 14:20:36', 11, 4),
	(109, 'PIX', '2025-07-01 14:28:03', 11, 4),
	(110, 'CartÃ£o de CrÃ©dito', '2025-07-01 14:28:36', 11, 21),
	(112, 'PIX', '2025-07-01 15:01:29', 11, 6),
	(113, 'Dinheiro', '2025-07-01 15:02:01', 11, 6),
	(114, 'PIX', '2025-07-02 10:12:34', 11, 21),
	(115, 'Dinheiro', '2025-07-02 10:25:49', 11, 6),
	(116, 'PIX', '2025-07-02 10:31:34', 11, 4),
	(117, 'Dinheiro', '2025-07-02 10:34:03', 11, 6),
	(118, 'Dinheiro', '2025-07-02 10:34:55', 11, 21),
	(119, 'PIX', '2025-07-02 10:38:11', 11, 21),
	(120, 'PIX', '2025-07-02 10:39:28', 11, 6),
	(121, 'PIX', '2025-07-02 10:39:53', 11, 6),
	(122, 'Cartão de Crédito', '2025-07-02 10:42:23', 11, 6),
	(123, 'Cartão de Crédito', '2025-07-02 10:42:53', 11, 21),
	(124, 'Cartão de Crédito', '2025-07-02 10:43:11', 11, 4),
	(127, 'PIX', '2025-07-15 09:59:30', 11, 4),
	(128, 'Cartão de Débito', '2025-07-15 10:06:29', 11, 21),
	(130, 'Cartão de Crédito', '2025-07-15 14:03:11', 16, 4),
	(131, 'PIX', '2025-08-05 20:29:47', 17, 6),
	(132, 'Cartão de Débito', '2025-08-05 20:36:10', 17, 21),
	(133, 'Dinheiro', '2025-08-12 13:44:50', 16, 21),
	(141, 'Cartão de Crédito', '2026-11-08 19:23:52', 5, 23),
	(142, 'Cartão de Débito', '2026-11-14 09:55:06', 8, 23);

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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.compra_ingressobrinquedos: ~22 rows (aproximadamente)
INSERT IGNORE INTO `compra_ingressobrinquedos` (`codCompraBrinquedos`, `compra_codCompra`, `ingressoBrinquedos_codIngresso`, `quantIngBrinq`) VALUES
	(1, 4, 2, 2),
	(2, 1, 4, 1),
	(3, 4, 2, 2),
	(4, 5, 4, 2),
	(15, 5, 2, 12),
	(17, 7, 6, 1),
	(30, 107, 1, 1),
	(31, 107, 4, 2),
	(32, 108, 1, 1),
	(33, 108, 2, 1),
	(34, 108, 3, 1),
	(35, 108, 4, 1),
	(39, 113, 1, 4),
	(40, 115, 1, 1),
	(41, 122, 1, 2),
	(43, 124, 1, 2),
	(46, 106, 1, 1),
	(47, 127, 1, 1),
	(48, 127, 1, 1),
	(49, 128, 4, 1),
	(63, 141, 1, 1),
	(64, 141, 4, 1),
	(65, 142, 6, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.compra_ingressoeventos: ~23 rows (aproximadamente)
INSERT IGNORE INTO `compra_ingressoeventos` (`codCompraEventos`, `compra_codCompra`, `ingressoEventos_codIngresso`, `quantIngEvent`) VALUES
	(2, 1, 8, 1),
	(4, 1, 7, 2),
	(6, 2, 5, 4),
	(14, 98, 7, 5),
	(17, 103, 5, 5),
	(19, 107, 1, 2),
	(20, 107, 6, 3),
	(21, 109, 1, 1),
	(22, 109, 2, 1),
	(23, 109, 3, 1),
	(24, 109, 4, 1),
	(25, 109, 5, 1),
	(26, 109, 6, 1),
	(27, 109, 7, 1),
	(28, 109, 8, 1),
	(30, 113, 5, 5),
	(31, 116, 8, 1),
	(32, 122, 2, 3),
	(33, 123, 2, 3),
	(34, 124, 2, 3),
	(35, 127, 1, 1),
	(36, 128, 8, 1),
	(38, 132, 8, 2),
	(41, 141, 5, 1),
	(42, 142, 6, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.compraslanche: ~33 rows (aproximadamente)
INSERT IGNORE INTO `compraslanche` (`codCompraLanche`, `compra_codCompra`, `lanche_codLanche`, `quantidadeLanche`) VALUES
	(1, 1, 5, 1),
	(2, 2, 3, 2),
	(3, 4, 5, 1),
	(5, 5, 1, 3),
	(6, 16, 5, 1),
	(7, 17, 2, 2),
	(8, 22, 5, 5),
	(9, 30, 4, 1),
	(10, 34, 1, 1),
	(30, 106, 2, 1),
	(31, 106, 5, 1),
	(32, 107, 3, 5),
	(33, 110, 1, 1),
	(34, 110, 2, 1),
	(35, 110, 3, 1),
	(36, 110, 4, 1),
	(37, 110, 5, 1),
	(39, 112, 1, 10),
	(40, 113, 2, 7),
	(41, 114, 1, 1),
	(42, 117, 4, 1),
	(43, 118, 4, 1),
	(44, 119, 2, 1),
	(45, 120, 2, 1),
	(46, 121, 2, 1),
	(47, 122, 5, 5),
	(48, 123, 5, 5),
	(50, 127, 1, 1),
	(51, 128, 2, 1),
	(54, 130, 2, 50),
	(55, 131, 1, 8),
	(56, 128, 5, 2),
	(57, 128, 4, 1);

-- Copiando estrutura para tabela projeto_parque.eventos
DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `codEventos` int NOT NULL AUTO_INCREMENT,
  `nomeEvento` varchar(45) NOT NULL,
  `tipoEvento` varchar(45) NOT NULL,
  `localEvento` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dataInicio` datetime NOT NULL,
  `dataFim` datetime NOT NULL,
  `descricao` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`codEventos`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.eventos: ~4 rows (aproximadamente)
INSERT IGNORE INTO `eventos` (`codEventos`, `nomeEvento`, `tipoEvento`, `localEvento`, `dataInicio`, `dataFim`, `descricao`) VALUES
	(1, 'Noite do Terror', 'Temático', 'Casa Assombrada', '2029-12-01 18:00:00', '2030-12-01 23:59:00', 'Uma noite assustadora com desafios e diversão.'),
	(2, 'Festival de Magia', 'Cultural', 'Praça Central', '2029-12-10 14:00:00', '2030-12-10 20:00:00', 'Espetáculos de mágica e atividades interativas.'),
	(3, 'Show de Luzes', 'Familiar', 'Área de Shows', '2029-12-13 16:30:20', '2030-12-14 18:50:21', 'Uma exibição deslumbrante de luzes natalinas'),
	(7, 'Baile de Máscaras', 'Temático', 'Salão Bridgerton', '2029-01-31 09:28:30', '2030-01-31 09:28:33', NULL);

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
  UNIQUE KEY `uq_funcionario_codigo` (`codFuncionario`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_funcionario_cargo_idx` (`cargo_codCargo`),
  CONSTRAINT `fk_funcionario_cargo` FOREIGN KEY (`cargo_codCargo`) REFERENCES `cargo` (`codCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.funcionario: ~11 rows (aproximadamente)
INSERT IGNORE INTO `funcionario` (`codFuncionario`, `nomeFuncionario`, `cpf`, `carteiraTrabalho`, `dataAdmissao`, `dataDemissao`, `email`, `senha`, `cargo_codCargo`) VALUES
	(1, 'Aria Montgomery', '123.456.789-00', '12345678-9', '2023-05-10', NULL, 'ariam@gmail.com', '$2a$10$v9vxkokisTzTxCnB0BE0R.7gYuA70g.S9knQjp7rh2iODHaQn094u', 2),
	(2, 'Spencer Hastings', '234.567.890-11', '23456789-0', '2024-02-15', NULL, 'spencerh@gmail.com', '$2a$10$wm5oH0p0ebnhuKa3YOlKTeEHb6.Dd1VOinYX6k.JfWn27oYdoVidO', 1),
	(3, 'Emily Fields', '345.678.901-22', '34567890-1', '2023-11-25', NULL, 'emilyf@gmail.com', '$2a$10$YiFMoP0ZckeYqC40RWmWN.J7pIQ8JgiFz10DlFsTz4oPRW011qPtq', 3),
	(4, 'Hanna Marin', '456.789.012-33', '45678901-2', '2024-03-05', NULL, 'hannam@gmail.com', '$2a$10$T3OCGjLiycH3B1jUxhjDuOvJiDitDiO7Jh2ly0f9tslbzTiLrv3vO', 4),
	(5, 'Alison DiLaurentis', '567.890.123-44', '56789012-3', '2022-12-01', '2024-12-16', 'alisond@gmail.com', '$2a$10$kCXeGRoV1YdEaDkfyHAhwe72kHbFaZlk7fWyqM96fobGPlnSpWU3m', 5),
	(6, 'Meredith Grey', '741.444.222-88', '00000000-1', '2025-01-17', NULL, 'meredithg@gmail.com', '$2a$10$fLSQxhYn/tXBRzGi0TbyROEGDrgQSyxYacwOy9HaT5CXgu0cTGyVq', 4),
	(15, 'Izzie Stevens', '222.333.555-05', '35480124-7', '2025-01-17', '2026-08-15', 'izobels@gmail.com', '$2a$10$eA346R0iavDnBaHl./N9d.H20KfYCNLbXSvOBBs/ro/aiMIHwdlGi', 2),
	(21, 'Crisitna Yang', '777.666.555-44', '75385215-0', '2025-07-01', NULL, 'cristinay@gmail.com', '$2a$10$rgDJ981OTM4O2KdJk.l8PuteUSjFQW2k9Amg8IXOObocITJGSJKo.', 4),
	(23, 'Luis', '7', '7', '2025-08-05', NULL, 'luisguferreira2020@gmail.com', '$2a$10$xENta/ZVpd9qv5ChlVQ9vOaYXDT72HZG9RZm2xlkTyT1sHqVIQqaa', 5),
	(24, 'Maria', '000.000.067-00', '0000000-67', '2026-11-08', NULL, 'mariacesiliasantos2@gmail.com', '$2a$10$7bLjumY/dhlIfm6n.1KfKeawtDFqx2w5RWSVVbTnuonxx3hDq5t/q', 5),
	(25, 'Adminstrador', '1', '1', '2026-11-14', NULL, 'admin', '$2a$10$IfzkYDu3ll3uHWmn52wr6.VMcZwKUO19oKUDxN9vLT/G9KCbPSjxK', 5);

-- Copiando estrutura para tabela projeto_parque.ingressobrinquedos
DROP TABLE IF EXISTS `ingressobrinquedos`;
CREATE TABLE IF NOT EXISTS `ingressobrinquedos` (
  `codIngresso` int NOT NULL AUTO_INCREMENT,
  `tipoIngresso` varchar(45) NOT NULL,
  `valor` double NOT NULL,
  `lucroIB` int DEFAULT NULL,
  `brinquedo_codBrinquedo` int NOT NULL,
  PRIMARY KEY (`codIngresso`,`brinquedo_codBrinquedo`),
  UNIQUE KEY `uq_ingresso_brinquedo_codigo` (`codIngresso`),
  KEY `fk_ingressoBrinquedos_brinquedo1_idx` (`brinquedo_codBrinquedo`),
  CONSTRAINT `fk_ingressoBrinquedos_brinquedo1` FOREIGN KEY (`brinquedo_codBrinquedo`) REFERENCES `brinquedo` (`codBrinquedo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.ingressobrinquedos: ~6 rows (aproximadamente)
INSERT IGNORE INTO `ingressobrinquedos` (`codIngresso`, `tipoIngresso`, `valor`, `lucroIB`, `brinquedo_codBrinquedo`) VALUES
	(1, 'Meia-Entrada', 30, 0, 1),
	(2, 'Inteira', 40, NULL, 1),
	(3, 'Meia-Entrada', 15, NULL, 2),
	(4, 'Inteira', 30, 0, 2),
	(5, 'Meia-Entrada', 18, NULL, 3),
	(6, 'Inteira', 36, NULL, 3);

-- Copiando estrutura para tabela projeto_parque.ingressoeventos
DROP TABLE IF EXISTS `ingressoeventos`;
CREATE TABLE IF NOT EXISTS `ingressoeventos` (
  `codIngresso` int NOT NULL AUTO_INCREMENT,
  `tipoIngresso` varchar(45) NOT NULL,
  `valor` double NOT NULL,
  `lucroIE` int DEFAULT NULL,
  `eventos_codEventos` int NOT NULL,
  PRIMARY KEY (`codIngresso`,`eventos_codEventos`),
  UNIQUE KEY `uq_ingresso_evento_codigo` (`codIngresso`),
  KEY `fk_ingressoEventos_eventos1_idx` (`eventos_codEventos`),
  CONSTRAINT `fk_ingressoEventos_eventos1` FOREIGN KEY (`eventos_codEventos`) REFERENCES `eventos` (`codEventos`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.ingressoeventos: ~8 rows (aproximadamente)
INSERT IGNORE INTO `ingressoeventos` (`codIngresso`, `tipoIngresso`, `valor`, `lucroIE`, `eventos_codEventos`) VALUES
	(1, 'Comum', 50, NULL, 1),
	(2, 'VIP', 80, NULL, 1),
	(3, 'Comum', 30, NULL, 2),
	(4, 'VIP', 60, NULL, 2),
	(5, 'Comum', 20, NULL, 3),
	(6, 'VIP', 40, NULL, 3),
	(7, 'Comum', 50, 0, 7),
	(8, 'VIP', 100, 0, 7);

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
  UNIQUE KEY `uq_lanche_codigo` (`codLanche`),
  KEY `fk_lanche_categoria1_idx` (`categoria_codCategoria`),
  CONSTRAINT `fk_lanche_categoria1` FOREIGN KEY (`categoria_codCategoria`) REFERENCES `categoria` (`codCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.lanche: ~5 rows (aproximadamente)
INSERT IGNORE INTO `lanche` (`codLanche`, `nomeLanche`, `precoLanche`, `descricao`, `lucroLanches`, `categoria_codCategoria`) VALUES
	(1, 'Big Mac', 18, 'Sanduíche icônico com dois hambúrgueres e molho especial.', NULL, 2),
	(2, 'Whopper', 20, 'Sanduíche com hambúrguer grelhado e recheio generoso.', NULL, 2),
	(3, 'Coca-Cola', 6, 'Refrigerante popular de cola.', NULL, 1),
	(4, 'Fanta Laranja', 5, 'Refrigerante sabor laranja.', 50, 1),
	(5, 'McFlurry', 22.5, 'Sobremesa de sorvete com mix-ins variados.', 50, 3);

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
			SELECT ROW_COUNT() AS linhasAfetadas;
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
	SELECT c.*, v.nomeVisitante, f.nomeFuncionario FROM compra AS c
	LEFT JOIN visitante AS v ON c.visitante_codVisitante = v.codVisitante
	LEFT JOIN funcionario AS f ON c.funcionario_codFuncionario = f.codFuncionario
	ORDER BY c.dataCompra DESC , c.codCompra DESC;
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

-- Copiando estrutura para procedure projeto_parque.p_listarItensCompra
DROP PROCEDURE IF EXISTS `p_listarItensCompra`;
DELIMITER //
CREATE PROCEDURE `p_listarItensCompra`(IN `p_codCompra` INT)
BEGIN
    SELECT
        cib.codCompraBrinquedos AS codItemCompra,
        'Brinquedo' AS tipoItem,
        CONCAT(b.nomeBrinquedo, ' - ', ib.tipoIngresso) AS descricao,
        cib.quantIngBrinq AS quantidade
    FROM compra_ingressobrinquedos AS cib
    INNER JOIN ingressobrinquedos AS ib
        ON ib.codIngresso = cib.ingressoBrinquedos_codIngresso
    INNER JOIN brinquedo AS b
        ON b.codBrinquedo = ib.brinquedo_codBrinquedo
    WHERE cib.compra_codCompra = p_codCompra

    UNION ALL

    SELECT
        cie.codCompraEventos,
        'Evento',
        CONCAT(e.nomeEvento, ' - ', ie.tipoIngresso),
        cie.quantIngEvent
    FROM compra_ingressoeventos AS cie
    INNER JOIN ingressoeventos AS ie
        ON ie.codIngresso = cie.ingressoEventos_codIngresso
    INNER JOIN eventos AS e
        ON e.codEventos = ie.eventos_codEventos
    WHERE cie.compra_codCompra = p_codCompra

    UNION ALL

    SELECT
        cl.codCompraLanche,
        'Lanche',
        l.nomeLanche,
        cl.quantidadeLanche
    FROM compraslanche AS cl
    INNER JOIN lanche AS l
        ON l.codLanche = cl.lanche_codLanche
    WHERE cl.compra_codCompra = p_codCompra

    ORDER BY tipoItem, descricao, codItemCompra;
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
	SELECT f.*, c.nomeCargo FROM funcionario AS f INNER JOIN cargo AS c ON f.cargo_codCargo = c.codCargo WHERE email = p_email AND dataDemissao IS NULL LIMIT 1;
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
      	then SELECT v.nomeVisitante, e.nomeEvento, ie.tipoIngresso, ie.valor, cie.quantIngEvent AS quantidade,(ie.valor * cie.quantIngEvent) as precoTotal,f.nomeFuncionario,
			 date_format(c.dataCompra, "%d/%m/%Y") AS dataCompra, c.tipoPagamento 
		  FROM compra_ingressoeventos AS cie INNER JOIN compra AS c ON cie.compra_codCompra = c.codCompra inner join ingressoeventos as ie 
		  on cie.ingressoEventos_codIngresso = ie.codIngresso INNER JOIN eventos AS e ON ie.eventos_codEventos = e.codEventos INNER JOIN visitante AS v 
		  ON c.visitante_codVisitante = v.codVisitante INNER JOIN funcionario AS f ON f.codFuncionario = c.funcionario_codFuncionario ORDER BY codCompraEventos desc;
		  
			ELSE if (modelo = 'C')
			then select v.nomeVisitante, e.nomeEvento, ie.tipoIngresso, ie.valor, cie.quantIngEvent AS quantidade,(ie.valor * cie.quantIngEvent) as precoTotal, f.nomeFuncionario,
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.tokens_redefinicao: ~20 rows (aproximadamente)
INSERT IGNORE INTO `tokens_redefinicao` (`codTokens_Redefinicao`, `email`, `token`, `tipo_usuario`, `expiracao`, `criado_em`) VALUES
	(1, 'luisguferreira2020@gmail.com', 'b5835d7f-ab50-4b63-8e0c-fdbb8f5815c7', 'visitante', '2025-08-23 14:01:15', '2025-08-23 16:01:14'),
	(2, 'luisguferreira2020@gmail.com', '498a4d71-00be-40d0-a3c7-873cbc1096bd', 'visitante', '2025-08-23 14:27:48', '2025-08-23 16:27:48'),
	(3, 'luisguferreira2020@gmail.com', '9a6b6cd6-36d7-45bb-91e7-9ce3aad8f3c8', 'funcionario', '2025-08-23 14:43:20', '2025-08-23 16:43:19'),
	(4, 'luisguferreira2020@gmail.com', '9eb85b06-e675-479e-bd74-587965eb6c31', 'funcionario', '2025-08-23 14:46:37', '2025-08-23 16:46:37'),
	(5, 'luisguferreira2020@gmail.com', '0f6d51a0-82c5-43ce-8980-c962541f652b', 'funcionario', '2025-08-23 14:52:38', '2025-08-23 16:52:38'),
	(6, 'luisguferreira2020@gmail.com', '6a39e9d2-7273-413a-a94f-19e3b927c026', 'visitante', '2025-08-23 14:56:19', '2025-08-23 16:56:19'),
	(7, 'luisguferreira2020@gmail.com', '0c078d6c-79e3-44b5-8526-1c1c41294bd2', 'visitante', '2025-08-23 15:14:01', '2025-08-23 17:14:00'),
	(8, 'luisguferreira2020@gmail.com', '3a364287-f3ea-4f91-b9d4-1c57d649b4ce', 'visitante', '2025-08-23 15:29:55', '2025-08-23 17:29:54'),
	(9, 'luisguferreira2020@gmail.com', '7d582be1-56de-4cdb-aa60-d9e0786351b6', 'visitante', '2025-08-23 15:31:02', '2025-08-23 17:31:02'),
	(10, 'luisguferreira2020@gmail.com', '69bbf524-6930-41bd-813c-1b62cf94cb99', 'funcionario', '2025-08-23 15:33:29', '2025-08-23 17:33:28'),
	(11, 'luisguferreira2020@gmail.com', 'eb875578-d4cb-4e42-9e71-e10aa44a32fd', 'funcionario', '2025-08-23 15:35:51', '2025-08-23 17:35:50'),
	(12, 'luisguferreira2020@gmail.com', '552b03fc-8afa-4651-b637-b6b697208eb3', 'funcionario', '2025-08-23 16:02:43', '2025-08-23 18:02:43'),
	(13, 'luisguferreira2020@gmail.com', '79026ee9-7eba-43f8-ab0e-f756d2f99b17', 'funcionario', '2025-08-23 16:07:13', '2025-08-23 18:07:13'),
	(19, 'luisguferreira2020@gmail.com', '3d1c4026-217c-4ec6-8665-f12d86a70f4e', 'visitante', '2025-09-02 13:19:27', '2025-09-02 15:19:27'),
	(20, 'luisguferreira2020@gmail.com', 'caa7a435-97b8-45cf-8b2e-abfe65d7886a', 'visitante', '2025-09-02 14:28:49', '2025-09-02 16:28:49'),
	(22, 'luisguferreira2020@gmail.com', '63995b96-6c11-4192-9aff-31dbc1481264', 'visitante', '2025-09-16 12:44:17', '2025-09-16 14:44:16'),
	(24, 'luisguferreira2020@gmail.com', '645c172a-0868-4e16-bb22-f5ab5cb2c472', 'visitante', '2025-10-28 12:43:42', '2025-10-28 14:43:42'),
	(25, 'luisguferreira2020@gmail.com', 'c2c7fe0c-5496-46c1-9977-19ad4598d2ac', 'visitante', '2026-10-18 15:08:41', '2026-10-18 17:08:41'),
	(26, 'luisguferreira2020@gmail.com', '58ea0a05-91b6-44f0-af00-f1ad4d85d1a3', 'visitante', '2026-10-18 15:19:30', '2026-10-18 17:19:30'),
	(27, 'luisguferreira2020@gmail.com', 'a17c4f85-9a0e-4f95-be20-0261eeef8792', 'visitante', '2026-10-18 16:28:34', '2026-10-18 18:28:34');

-- Copiando estrutura para tabela projeto_parque.visitante
DROP TABLE IF EXISTS `visitante`;
CREATE TABLE IF NOT EXISTS `visitante` (
  `codVisitante` int NOT NULL AUTO_INCREMENT,
  `nomeVisitante` varchar(450) NOT NULL,
  `dataNascimento` date NOT NULL,
  `email` varchar(450) DEFAULT NULL,
  `senha` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`codVisitante`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela projeto_parque.visitante: ~12 rows (aproximadamente)
INSERT IGNORE INTO `visitante` (`codVisitante`, `nomeVisitante`, `dataNascimento`, `email`, `senha`) VALUES
	(1, 'Serena van der Woodsen', '1990-07-01', 'serena.vdw@example.com', '$2a$10$cgYRpfGFBCT2Kn3Ict39wurjmybJg5GSnVolpI8BI0Gbv21vDVh8W'),
	(2, 'Blair Waldorf', '1990-02-15', 'blair.waldorf@example.com', '$2a$10$BjHnCOVqfldxL6aagtHXw.yGy/3DpvyYWs3mUG0T8SwRLq0n52xuu'),
	(3, 'Chuck Bass', '1989-08-11', 'chuck.bass@example.com', '$2a$10$wt/3HqgR85nQg6rFi4qxau6W0VcV47854k3lNyJ23cQG2u8nUblRG'),
	(4, 'Dan Humphrey', '1989-04-20', 'dan.humphrey@example.com', '$2a$10$MkwQ194fkqTqvs0SMEUI1u174bVjYekVeHr0dfxJZfwDAgX9/xLja'),
	(5, 'Nate Archibald', '1989-06-27', 'nate.archibald@example.com', '$2a$10$NIQWIev63fVVZ51zu07y..orw4bo5mCZ893JOLqR6CO6XiS0WDI7K'),
	(6, 'Eric van der Woodsen', '2020-12-11', 'ericvdw@gossipgirl.com', '$2a$10$39OCaR9DDef.0oH3OJuZE.upI3g0aoZ38Hzd5vWk4fv9d0AcR65fu'),
	(8, 'Elena Gilbert', '1992-06-22', 'elenagilbert@vampirediaries.com', '$2a$10$tEWvWhseVJtHG22trWtzQ.V2.0DsX.Q7ddgr/3oF3RKWAUnNEUW7K'),
	(10, 'testes', '2005-01-22', '123', NULL),
	(11, 'Luis', '2007-08-14', 'luisguferreira2020@gmail.com', '$2a$10$IgtNP3akM9j/M14mFx5V9OJgrfa5vRQfxwJ4pK3NrHJkVPnIC2cbe'),
	(16, 'Tulio', '2025-07-17', 'tulio@gmail.com', '$2a$10$eDEcayyE/aIG4k0.MTh9Kug18xyPnZQODw/OSA3/ilDyYMx5Epo/W'),
	(17, 'LUIS FERREIRA', '2025-08-05', 'luisg@gmail.com', '$2a$10$7oZZIsYgF0mulp37qSSaHeqAD.W3YK9dn5nl8ifFlNqOqwKqrAta2'),
	(19, 'Tulio', '2025-09-18', 'tuliodias@yahoo.com.br', '$2a$10$4hStv8dYu2hGWq.VwgleQOo1X46vfx/m4RLU7.gdfY2kZG6FgiMka'),
	(20, 'Visitante Maior de Idade', '2000-11-08', NULL, NULL),
	(21, 'Visitante Menor de Idade', '2026-11-08', NULL, NULL);

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
