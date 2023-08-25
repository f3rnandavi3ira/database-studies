-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/08/2023 às 07:45
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `MATRICULA` int(11) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `AREA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professor`
--

INSERT INTO `professor` (`MATRICULA`, `NOME`, `AREA`) VALUES
(1, 'João', 'TI'),
(2, 'Maria', 'Contábil'),
(3, 'Joana', 'RH'),
(4, 'Pedro', 'Tesouraria');

-- --------------------------------------------------------

--
-- Estrutura para tabela `profxtit`
--

CREATE TABLE `profxtit` (
  `MATR_PROF` int(11) NOT NULL,
  `COD_TIT` int(11) NOT NULL,
  `ANO_CONCLUSAO` char(4) NOT NULL,
  `INSTITUICAO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `titulacao`
--

CREATE TABLE `titulacao` (
  `CODIGO` int(11) NOT NULL,
  `DESCRIAO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`MATRICULA`);

--
-- Índices de tabela `profxtit`
--
ALTER TABLE `profxtit`
  ADD PRIMARY KEY (`MATR_PROF`,`COD_TIT`),
  ADD KEY `COD_TIT` (`COD_TIT`);

--
-- Índices de tabela `titulacao`
--
ALTER TABLE `titulacao`
  ADD PRIMARY KEY (`CODIGO`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `profxtit`
--
ALTER TABLE `profxtit`
  ADD CONSTRAINT `profxtit_ibfk_1` FOREIGN KEY (`MATR_PROF`) REFERENCES `professor` (`MATRICULA`),
  ADD CONSTRAINT `profxtit_ibfk_2` FOREIGN KEY (`COD_TIT`) REFERENCES `titulacao` (`CODIGO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
