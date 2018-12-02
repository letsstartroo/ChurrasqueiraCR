-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Dez-2018 às 17:25
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `letsstart`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento`
--

CREATE TABLE `evento` (
  `idEvento` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `usuario` varchar(11) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(10,8) NOT NULL,
  `imagem` varchar(11) NOT NULL,
  `horamin` int(11) NOT NULL,
  `horahor` int(11) NOT NULL,
  `datadia` int(11) NOT NULL,
  `datames` int(11) NOT NULL,
  `dataano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `evento`
--

INSERT INTO `evento` (`idEvento`, `descricao`, `usuario`, `latitude`, `longitude`, `imagem`, `horamin`, `horahor`, `datadia`, `datames`, `dataano`) VALUES
(15, 'ollll', '35694268005', '0.00000000', '0.00000000', '1543746402.', 24, 7, 2, 12, 2018),
(16, 'dhhsv', '04865064109', '0.00000000', '0.00000000', '1543747389.', 40, 7, 2, 12, 2018),
(17, 'teste', '00085298885', '-16.47492000', '-54.62172000', '1543751199.', 43, 8, 2, 12, 2018),
(18, 'shdjaj', '04865064109', '0.00000000', '0.00000000', '1543758595.', 47, 11, 2, 12, 2018);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`nome`, `cpf`, `email`, `senha`) VALUES
('rodolpho schwingel de souza', '00085298885', 'rodolphoschwingel@hotmail.com', '12345'),
('Vitor Wdson de Almeida Nascimento', '04865064109', 'vitor.wdson2@gmail.com', 'asdd1234'),
('hejakxof eisod fjdks', '35694268005', 'ejaj@urud.rjsj', 'aaaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`idEvento`),
  ADD KEY `usuario` (`usuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cpf`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evento`
--
ALTER TABLE `evento`
  MODIFY `idEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
