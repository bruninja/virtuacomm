--
-- Table structure for table `pessoa`
--

CREATE TABLE IF NOT EXISTS `pessoa` (
  `cpf` int(11) NOT NULL,
  `nome` varchar(70) NOT NULL,
  `email` text NOT NULL,
  `id_categoria` int(4) NOT NULL,
  PRIMARY KEY (`cpf`),
  FOREIGN KEY (`id_categoria`) REFERENCES categoria_pessoa (`id_categoria`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Table structure for table `categoria_pessoa`
--

CREATE TABLE IF NOT EXISTS `categoria_pessoa` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `descricao` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;


--
-- Table structure for table `servico`
--

CREATE TABLE IF NOT EXISTS `servico` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `descricao` text NOT NULL,
  `valor` int(8) NOT NULL,
  `prazo_medio_dias` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Table structure for table `os`
--

CREATE TABLE IF NOT EXISTS `os` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_executor` int(4) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(4) NOT NULL AUTO_INCREMENT,
  `status` varchar(10) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_executor`) REFERENCES categoria_pessoa (`id`),
  FOREIGN KEY (`id_cliente`) REFERENCES categoria_pessoa (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Table structure for table `os_servicos`
--

CREATE TABLE IF NOT EXISTS `servico` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `id_os` int(2) NOT NULL AUTO_INCREMENT,
  `id_servico` int(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;
