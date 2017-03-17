-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17-Mar-2017 às 15:24
-- Versão do servidor: 5.7.10-log
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `euromilhoes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acertos`
--

CREATE TABLE `acertos` (
  `id` int(11) NOT NULL,
  `id_resultado` int(11) NOT NULL,
  `n1` int(2) DEFAULT NULL,
  `n2` int(2) DEFAULT NULL,
  `n3` int(2) DEFAULT NULL,
  `n4` int(2) DEFAULT NULL,
  `n5` int(2) DEFAULT NULL,
  `s1` int(2) DEFAULT NULL,
  `s2` int(2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `premio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `chaves`
--

CREATE TABLE `chaves` (
  `id` int(11) NOT NULL,
  `n1` int(2) NOT NULL,
  `n2` int(2) NOT NULL,
  `n3` int(2) NOT NULL,
  `n4` int(2) NOT NULL,
  `n5` int(2) NOT NULL,
  `s1` int(2) NOT NULL,
  `s2` int(2) NOT NULL,
  `activa` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `chaves`
--

INSERT INTO `chaves` (`id`, `n1`, `n2`, `n3`, `n4`, `n5`, `s1`, `s2`, `activa`) VALUES
(1, 11, 13, 17, 34, 43, 2, 6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogadores`
--

CREATE TABLE `jogadores` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `id` int(11) NOT NULL,
  `id_jogador` int(11) DEFAULT NULL,
  `id_resultado` int(11) DEFAULT NULL,
  `pago` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `n1` int(2) NOT NULL,
  `n2` int(2) NOT NULL,
  `n3` int(2) NOT NULL,
  `n4` int(2) NOT NULL,
  `n5` int(2) NOT NULL,
  `s1` int(2) NOT NULL,
  `s2` int(2) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acertos`
--
ALTER TABLE `acertos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chaves`
--
ALTER TABLE `chaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jogadores`
--
ALTER TABLE `jogadores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chaves`
--
ALTER TABLE `chaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jogadores`
--
ALTER TABLE `jogadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
