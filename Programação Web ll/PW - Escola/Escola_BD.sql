-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Abr-2025 às 00:11
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_empresa`
--
CREATE DATABASE IF NOT EXISTS `bd_empresa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_empresa`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `Cod_Fornecedor` int(11) NOT NULL,
  `Razao_Social` varchar(70) NOT NULL,
  `Nome_Fantasia` varchar(70) NOT NULL,
  `CNPJ` varchar(20) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Num` varchar(7) NOT NULL,
  `Bairro` varchar(25) NOT NULL,
  `Cidade` varchar(25) NOT NULL,
  `Fone` varchar(18) NOT NULL,
  `Nome_Contato` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Site` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`Cod_Fornecedor`, `Razao_Social`, `Nome_Fantasia`, `CNPJ`, `Endereco`, `Num`, `Bairro`, `Cidade`, `Fone`, `Nome_Contato`, `Email`, `Site`) VALUES
(1, 'Comercial Silva Ltda', 'Silva Materiais\r\n\r\n', '12.345.678/0001-90', 'Rua das Palmeiras', '123', 'Centro', 'São Paulo', '(11) 98765-4321', 'João da Silva', 'contato@silvamateriais.com.br', 'www.silvamateriais.com.br'),
(2, 'Alimentos Bom Gosto S.A', 'Bom Gosto Alimentos', '23.456.789/0001-01', 'Av. Brasil', '456', 'Vila Mariana', 'Rio de Janeiro', '(21) 91234-5678', 'Maria Oliveira', 'vendas@bomgosto.com.br', '  www.bomgosto.com.br'),
(3, 'Eletrônicos Delta ME', 'Delta Tech', '34.567.890/0001-12', 'Rua das Indústrias', '789', 'Industrial', 'Belo Horizonte', '(31) 99876-1234', 'Carlos Mendes', 'delta@techeletronicos.com', '  www.deltatech.com'),
(4, 'Distribuidora Monte Verde Ltda', 'Monte Verde Bebidas', '45.678.901/0001-23', 'Rua das Laranjeiras', '234', 'Jardim América', 'Curitiba', '(41) 98765-9876', 'Fernanda Souza', 'contato@monteverde.com', '  www.monteverde.com'),
(5, 'Papelaria Mundo do Papel Ltda', 'Mundo do Papel\r\n\r\n', '56.789.012/0001-34', 'Av. das Nações', '345', 'Centro', 'Salvador', '(71) 91234-7890', 'Ricardo Santos', 'atendimento@mundodopapel.com', 'www.mundodopapel.com'),
(6, 'Tecidos Fino Toque Ltda', 'Fino Toque\r\n\r\n', '67.890.123/0001-45', 'Rua dos Alfaiates', '67', 'São José', 'Porto Alegre', '(51) 99876-5432', 'Ana Lima', 'suporte@finotoque.com.br', 'www.finotoque.com.br'),
(7, 'Auto Peças Rápido Ltda', 'Rápido Auto Peças', '78.901.234/0001-56', 'Av. das Garagens', '890', 'Nova Esperança', 'Campinas', '(19) 98765-6789', 'Pedro Costa', 'contato@rapidocar.com.br', 'www.rapidocar.com.br'),
(8, 'Gráfica Impressão Total ME', 'Impressão Total', '89.012.345/0001-67', 'Rua das Tipografias', '101', 'Bela Vista', 'Recife', '(81) 91234-5678', 'Juliana Martins', 'pedidos@impressaototal.com', 'www.impressaototal.com'),
(9, 'FarmaVida Distribuidora Ltda\r\n\r\n', 'FarmaVida', '90.123.456/0001-78', 'Av. Saúde', '458', 'Saúde', 'Florianópolis', '(48) 99876-4321', 'Marcos Farias', 'farma@farmavida.com.br', 'www.farmavida.com.br'),
(10, 'EletroLuz Comércio de Lâmpadas Ltda', 'EletroLuz', '01.234.567/0001-89', 'Rua das Luzes', '321', 'Luz', 'Goiânia', '(62) 98765-1234', 'Tatiane Rocha', 'contato@eletroluz.com.br', 'www.eletroluz.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `Cod_Produto` int(11) NOT NULL,
  `Descricao` varchar(50) NOT NULL,
  `Unidade` varchar(2) NOT NULL,
  `Qtde_Estoque` double NOT NULL,
  `Caracteristicas` varchar(50) NOT NULL,
  `Cod_Forncedor` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`Cod_Produto`, `Descricao`, `Unidade`, `Qtde_Estoque`, `Caracteristicas`, `Cod_Forncedor`) VALUES
(1, 'Lâmpada LED 10W', 'un', 100, 'Luz branca, econômica, bivolt', 10),
(2, 'Papel A4 75g', 'pc', 500, 'Sulfite branco, 500 folhas', 5),
(3, 'Refrigerante Cola 2L', 'un', 150, 'Garrafa PET, com gás', 4),
(4, 'Farinha de Trigo Tipo 1', 'kg', 300, 'Enriquecida com ferro e ácido fólico', 2),
(5, 'Teclado USB', 'un', 85, 'Padrão ABNT2, plug and play', 3),
(6, 'Rolo de Tecido Algodão', 'm', 400, '100% algodão, várias cores', 6),
(7, 'Óleo de Soja 900ml', 'un', 315, 'Comestível, garrafa PET', 2),
(8, 'Lâmpada Fluorescente 20W', 'un', 100, 'Tubular, luz fria', 10),
(9, 'Cartucho de Tinta Preto', 'un', 60, 'Compatível com impressoras jato de tinta', 8),
(10, 'Bateria Automotiva 60Ah', 'un', 30, '12V, livre de manutenção', 7),
(11, 'Bloco de Notas Adesivas', 'un', 120, 'Cores sortidas, 100 folhas', 5),
(12, 'Rolo de Papel Kraft', 'm', 250, 'Papel reciclável, 60g/m²', 8),
(13, 'Fio Elétrico 2,5mm', 'rl', 70, 'Cabo flexível, cobre', 1),
(14, 'Suco de Laranja 1L', 'un', 180, '100% natural, sem açúcar', 4),
(15, 'Antibiótico Amoxicilina', 'cx', 50, '500mg, genérico', 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`Cod_Fornecedor`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`Cod_Produto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `Cod_Fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `Cod_Produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Banco de dados: `bd_escola`
--
CREATE DATABASE IF NOT EXISTS `bd_escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_escola`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolaalunos`
--

CREATE TABLE `escolaalunos` (
  `matricula` varchar(5) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `codcurso` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `escolaalunos`
--

INSERT INTO `escolaalunos` (`matricula`, `nome`, `endereco`, `cidade`, `codcurso`) VALUES
('10001', 'HIgor Mota de Oliveira', 'Rua Semente de Tudo, 461', 'São Paulo', '01'),
('10002', 'Renan Pereira Rezaghi', 'Rua Tapari, 158', 'São Paulo', '01'),
('10003', 'Igor Sales Moreira', 'Rua Manuel Leiroz, 400', 'São Paulo', '01'),
('10004', 'Felipe Gabriel Tesser', 'Rua Girassol,536', 'São Paulo', '01'),
('10005', 'Rodrigo Rocha Silva', 'Rua Ponte Rasa,423', 'São Paulo', '01'),
('10006', 'Claudio Freitas ', 'Rua Paraíso Feliz,56', 'Campinas', '02'),
('10007', 'Beatriz Galdino Torres', 'Rua Lindo Mar,235', 'Santos', '02'),
('10008', 'Nicolas Ferreira Santos', 'Rua Mar de Rosas,867', 'Ribeirão Preto', '02'),
('10009', 'Nicolas Ferreira Santos', 'Rua Mar de Rosas,342', 'Ribeirão Preto', '02'),
('10010', 'Jorge Camargo Moreira', 'Rua Jardim Belo,376', 'Ribeirão Preto', '03'),
('10011', 'Antonio Carlos Silva', 'Rua Canteiro Azul,876', 'Arandu', '02'),
('10012', 'Maria Alice', 'Rua Mohamedd Kaled,874', 'Arujá', '04'),
('10013', 'Valentina Martines', 'Rua Calabreso Salgado,808', 'Arandu', '01'),
('10014', 'Maitê Santos Rocha', 'Rua Amarelhinha,748', 'Barueri', '03'),
('10015', 'Alan Ferreira', 'Rua Palmeiras sem Mundial,051', 'Barueri', '03'),
('10016', 'Edna López', 'Rua Horizonte ,312', 'São Bernardo do Campo', '04'),
('10017', 'Carlos Alberto ', 'Rua Antenor Teodoro Vieira,563', 'Araçatuba', '01'),
('10018', 'Valentina Santos', 'Rua Avenida Brasília,524', 'Araçatuba', '04'),
('10019', 'César Vieira', 'Rua Avenida Brasília,520', 'Araçatuba', '04'),
('10020', 'Yuri Alberto', 'Rua Avenida Paulista,637', 'São Paulo', '03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolacursos`
--

CREATE TABLE `escolacursos` (
  `codcurso` char(2) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `coddisc1` char(2) NOT NULL,
  `coddisc2` char(2) NOT NULL,
  `coddisc3` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `escolacursos`
--

INSERT INTO `escolacursos` (`codcurso`, `nome`, `coddisc1`, `coddisc2`, `coddisc3`) VALUES
('01', 'Logística', '11', '12', '13'),
('02', 'Administração', '21', '22', '23'),
('03', 'Desenvolvimento de Sistemas', '31', '32', '33'),
('04', 'Recursos Humanos', '41', '42', '43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escoladisciplina`
--

CREATE TABLE `escoladisciplina` (
  `CodDisciplina` char(2) NOT NULL,
  `NomeDisciplina` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `escoladisciplina`
--

INSERT INTO `escoladisciplina` (`CodDisciplina`, `NomeDisciplina`) VALUES
('11', 'Logística Reversa'),
('12', 'Gerenciamento de transporte'),
('13', 'Automação de processos'),
('21', 'Teorias da Administração'),
('22', 'Contabilidade'),
('23', 'Administração de Vendas'),
('31', 'Banco de Dados'),
('32', 'Programação Web'),
('33', 'Sistemas Embarcados'),
('41', 'Legislação empresarial '),
('42', 'Empreendedorismo e inovação'),
('43', 'Processos de recrutamento');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `escolaalunos`
--
ALTER TABLE `escolaalunos`
  ADD PRIMARY KEY (`matricula`);

--
-- Índices para tabela `escolacursos`
--
ALTER TABLE `escolacursos`
  ADD PRIMARY KEY (`codcurso`);

--
-- Índices para tabela `escoladisciplina`
--
ALTER TABLE `escoladisciplina`
  ADD PRIMARY KEY (`CodDisciplina`);


