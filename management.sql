-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/08/2024 às 15:10
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `management`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `base_url` varchar(255) NOT NULL,
  `mime_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1724238627),
('m130524_201442_init', 1724248913),
('m190124_110200_add_verification_token_column_to_user_table', 1724248913),
('m240821_105202_create_task_table', 1724238631),
('m240821_105707_create_file_table', 1724238631),
('m240821_110214_create_task_image_table', 1724238631),
('m240821_110930_create_testimonial_table', 1724238632);

-- --------------------------------------------------------

--
-- Estrutura para tabela `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `due_date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `task`
--

INSERT INTO `task` (`id`, `title`, `description`, `due_date`, `status`) VALUES
(1, 'Implementação de trigger no Zabbix', 'A tarefa consiste em implementar uma trigger no Zabbix para prever o uso de espaço em disco em uma VM Debian localizada no IP x.x.x.x, utilizando o Zabbix Agent. Isso envolve configurar o host no Zabbix para garantir que a VM seja monitorada corretamente via Zabbix Agent e criar ou ajustar os items responsáveis por coletar os dados de uso de disco. A trigger deve ser configurada para gerar alertas antecipados quando o espaço em disco atingir limites críticos, permitindo ações preventivas para evitar problemas relacionados à falta de espaço.', '2024-08-20', 'concluido'),
(2, 'Pré-processamento de dados da aeronave', 'A tarefa consiste em realizar o pré-processamento de dados de sensores de aeronave, focando na preparação dos dados para análise subsequente. O primeiro passo é identificar e tratar outliers nos dados coletados, aplicando técnicas como remoção ou substituição por valores interpolados, para garantir a consistência dos dados. Em seguida, será realizada a seleção dos dados correspondentes ao voo em regime permanente, especificamente na fase de cruzeiro, onde a aeronave mantém altitude e velocidade regulares, eliminando dados de outras fases do voo. Por fim, os dados selecionados serão normalizados para uniformizar as escalas das variáveis, facilitando comparações e análises posteriores.', '2024-09-30', 'pendente'),
(3, 'Identificação de clientes elegíveis TSEE', 'A tarefa consiste em desenvolver uma implementação em Python para integrar e cruzar duas bases de dados: uma da empresa de distribuição de energia elétrica e outra fornecida pelo governo, relacionada à Tarifa Social de Energia Elétrica (TSEE). O objetivo é identificar os clientes elegíveis para o benefício da TSEE, garantindo que os dados sejam compatíveis e possam ser eficientemente combinados. A implementação deve incluir a leitura e processamento das bases de dados, tratamento de inconsistências, e aplicação de critérios de elegibilidade para determinar quais clientes da empresa de energia se qualificam para a TSEE. O resultado final será um conjunto de dados unificado, pronto para ser usado em processos de concessão de benefícios e geração de relatórios.', '2025-02-02', 'pendente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `task_image`
--

CREATE TABLE `task_image` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `customer_image_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(4, 'admin', 'ExYMr3nEu7D7RxcsrgF7BOXaSDXhnNfN', '$2y$13$lWXx8PQZpyCku5Hm99aEBu5cBc/ElJTU/q/ekqsUDMFexdUOQAy9e', NULL, 'marcellymhc@gmail.com', 10, 1724249329, 1724249678, '5BdY3YAJO4VUsiddnxpFqV6yx6O6fVnt_1724249329');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Índices de tabela `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `task_image`
--
ALTER TABLE `task_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-task_image-task_id` (`task_id`),
  ADD KEY `idx-task_image-file_id` (`file_id`);

--
-- Índices de tabela `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-testimonial-task_id` (`task_id`),
  ADD KEY `idx-testimonial-customer_image_id` (`customer_image_id`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `task_image`
--
ALTER TABLE `task_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `task_image`
--
ALTER TABLE `task_image`
  ADD CONSTRAINT `fk-task_image-file_id` FOREIGN KEY (`file_id`) REFERENCES `file` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-task_image-task_id` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `testimonial`
--
ALTER TABLE `testimonial`
  ADD CONSTRAINT `fk-testimonial-customer_image_id` FOREIGN KEY (`customer_image_id`) REFERENCES `file` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-testimonial-task_id` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
