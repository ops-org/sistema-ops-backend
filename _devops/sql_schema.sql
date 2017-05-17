CREATE DATABASE  IF NOT EXISTS `ops_backend` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ops_backend`;
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: ops_backend
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add estado',7,'add_estado'),(20,'Can change estado',7,'change_estado'),(21,'Can delete estado',7,'delete_estado'),(22,'Can add municipio',8,'add_municipio'),(23,'Can change municipio',8,'change_municipio'),(24,'Can delete municipio',8,'delete_municipio'),(25,'Can add usuario',9,'add_usuario'),(26,'Can change usuario',9,'change_usuario'),(27,'Can delete usuario',9,'delete_usuario'),(28,'Can add gasto',10,'add_gasto'),(29,'Can change gasto',10,'change_gasto'),(30,'Can delete gasto',10,'delete_gasto'),(31,'Can add gasto tipo',11,'add_gastotipo'),(32,'Can change gasto tipo',11,'change_gastotipo'),(33,'Can delete gasto tipo',11,'delete_gastotipo'),(34,'Can add info empresa',12,'add_infoempresa'),(35,'Can change info empresa',12,'change_infoempresa'),(36,'Can delete info empresa',12,'delete_infoempresa'),(37,'Can add natureza juridica',13,'add_naturezajuridica'),(38,'Can change natureza juridica',13,'change_naturezajuridica'),(39,'Can delete natureza juridica',13,'delete_naturezajuridica'),(40,'Can add pessoa fisica',14,'add_pessoafisica'),(41,'Can change pessoa fisica',14,'change_pessoafisica'),(42,'Can delete pessoa fisica',14,'delete_pessoafisica'),(43,'Can add pessoa juridica',15,'add_pessoajuridica'),(44,'Can change pessoa juridica',15,'change_pessoajuridica'),(45,'Can delete pessoa juridica',15,'delete_pessoajuridica'),(46,'Can add representante',16,'add_representante'),(47,'Can change representante',16,'change_representante'),(48,'Can delete representante',16,'delete_representante'),(49,'Can add reserva',17,'add_reserva'),(50,'Can change reserva',17,'change_reserva'),(51,'Can delete reserva',17,'delete_reserva'),(52,'Can add situacao',18,'add_situacao'),(53,'Can change situacao',18,'change_situacao'),(54,'Can delete situacao',18,'delete_situacao'),(55,'Can add socio',19,'add_socio'),(56,'Can change socio',19,'change_socio'),(57,'Can delete socio',19,'delete_socio'),(58,'Can add socio qualificacao',20,'add_socioqualificacao'),(59,'Can change socio qualificacao',20,'change_socioqualificacao'),(60,'Can delete socio qualificacao',20,'delete_socioqualificacao'),(61,'Can add tipo despesa',21,'add_tipodespesa'),(62,'Can change tipo despesa',21,'change_tipodespesa'),(63,'Can delete tipo despesa',21,'delete_tipodespesa'),(64,'Can add conversa',22,'add_conversa'),(65,'Can change conversa',22,'change_conversa'),(66,'Can delete conversa',22,'delete_conversa'),(67,'Can add mensagem',23,'add_mensagem'),(68,'Can change mensagem',23,'change_mensagem'),(69,'Can delete mensagem',23,'delete_mensagem'),(70,'Can add sugestao',24,'add_sugestao'),(71,'Can change sugestao',24,'change_sugestao'),(72,'Can delete sugestao',24,'delete_sugestao'),(73,'Can add tomatada',25,'add_tomatada'),(74,'Can change tomatada',25,'change_tomatada'),(75,'Can delete tomatada',25,'delete_tomatada'),(76,'Can add deputado',26,'add_deputado'),(77,'Can change deputado',26,'change_deputado'),(78,'Can delete deputado',26,'delete_deputado'),(79,'Can add partido',27,'add_partido'),(80,'Can change partido',27,'change_partido'),(81,'Can delete partido',27,'delete_partido'),(82,'Can add profissao',28,'add_profissao'),(83,'Can change profissao',28,'change_profissao'),(84,'Can delete profissao',28,'delete_profissao'),(85,'Can add legislatura',29,'add_legislatura'),(86,'Can change legislatura',29,'change_legislatura'),(87,'Can delete legislatura',29,'delete_legislatura'),(88,'Can add mandato',30,'add_mandato'),(89,'Can change mandato',30,'change_mandato'),(90,'Can delete mandato',30,'delete_mandato'),(91,'Can add partido',31,'add_partido'),(92,'Can change partido',31,'change_partido'),(93,'Can delete partido',31,'delete_partido'),(94,'Can add presenca',32,'add_presenca'),(95,'Can change presenca',32,'change_presenca'),(96,'Can delete presenca',32,'delete_presenca'),(97,'Can add sessao',33,'add_sessao'),(98,'Can change sessao',33,'change_sessao'),(99,'Can delete sessao',33,'delete_sessao'),(100,'Can add noticia',34,'add_noticia'),(101,'Can change noticia',34,'change_noticia'),(102,'Can delete noticia',34,'delete_noticia');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_estado`
--

DROP TABLE IF EXISTS `base_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) NOT NULL,
  `sigla` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_estado`
--

LOCK TABLES `base_estado` WRITE;
/*!40000 ALTER TABLE `base_estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_municipio`
--

DROP TABLE IF EXISTS `base_municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_municipio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base_municipio_estado_id_19891eb2_fk_base_estado_id` (`estado_id`),
  CONSTRAINT `base_municipio_estado_id_19891eb2_fk_base_estado_id` FOREIGN KEY (`estado_id`) REFERENCES `base_estado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_municipio`
--

LOCK TABLES `base_municipio` WRITE;
/*!40000 ALTER TABLE `base_municipio` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_usuario`
--

DROP TABLE IF EXISTS `base_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `facebook_id` varchar(512) DEFAULT NULL,
  `contador_tomatadas` int(10) unsigned NOT NULL,
  `credencial_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `base_usuario_credencial_id_8fb4af61_fk_auth_user_id` (`credencial_id`),
  CONSTRAINT `base_usuario_credencial_id_8fb4af61_fk_auth_user_id` FOREIGN KEY (`credencial_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_usuario`
--

LOCK TABLES `base_usuario` WRITE;
/*!40000 ALTER TABLE `base_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cap_gasto`
--

DROP TABLE IF EXISTS `cap_gasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cap_gasto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `valor` decimal(20,2) NOT NULL,
  `mandato_id` int(11) NOT NULL,
  `tipo_despesa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cap_gasto_mandato_id_e0bbbfdb_fk_trabalho_mandato_id` (`mandato_id`),
  KEY `cap_gasto_tipo_despesa_id_f6a4b0f6_fk_cap_gastotipo_id` (`tipo_despesa_id`),
  CONSTRAINT `cap_gasto_mandato_id_e0bbbfdb_fk_trabalho_mandato_id` FOREIGN KEY (`mandato_id`) REFERENCES `trabalho_mandato` (`id`),
  CONSTRAINT `cap_gasto_tipo_despesa_id_f6a4b0f6_fk_cap_gastotipo_id` FOREIGN KEY (`tipo_despesa_id`) REFERENCES `cap_gastotipo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cap_gasto`
--

LOCK TABLES `cap_gasto` WRITE;
/*!40000 ALTER TABLE `cap_gasto` DISABLE KEYS */;
/*!40000 ALTER TABLE `cap_gasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cap_gastotipo`
--

DROP TABLE IF EXISTS `cap_gastotipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cap_gastotipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(2048) NOT NULL,
  `media_despesa` decimal(20,2) NOT NULL,
  `media_mensal` decimal(20,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cap_gastotipo`
--

LOCK TABLES `cap_gastotipo` WRITE;
/*!40000 ALTER TABLE `cap_gastotipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cap_gastotipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cap_infoempresa`
--

DROP TABLE IF EXISTS `cap_infoempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cap_infoempresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_obtencao` date NOT NULL,
  `nome_empresa` varchar(512) NOT NULL,
  `data_abertura` date NOT NULL,
  `logradouro` varchar(1024) NOT NULL,
  `numero` varchar(16) NOT NULL,
  `complemento` varchar(64) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `bairro` varchar(128) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `telefone` varchar(64) NOT NULL,
  `efr` varchar(2048) NOT NULL,
  `data_situacao_cadastral` date NOT NULL,
  `situacao_especial` varchar(2048) DEFAULT NULL,
  `capital_social` decimal(20,2) NOT NULL,
  `ip_colaborador` varchar(15) NOT NULL,
  `municipio_id` int(11) NOT NULL,
  `situacao_cadastral_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cap_infoempresa_municipio_id_a1525d2f_fk_base_municipio_id` (`municipio_id`),
  KEY `cap_infoempresa_situacao_cadastral_i_2d850fe8_fk_cap_situa` (`situacao_cadastral_id`),
  CONSTRAINT `cap_infoempresa_municipio_id_a1525d2f_fk_base_municipio_id` FOREIGN KEY (`municipio_id`) REFERENCES `base_municipio` (`id`),
  CONSTRAINT `cap_infoempresa_situacao_cadastral_i_2d850fe8_fk_cap_situa` FOREIGN KEY (`situacao_cadastral_id`) REFERENCES `cap_situacao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cap_infoempresa`
--

LOCK TABLES `cap_infoempresa` WRITE;
/*!40000 ALTER TABLE `cap_infoempresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `cap_infoempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cap_naturezajuridica`
--

DROP TABLE IF EXISTS `cap_naturezajuridica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cap_naturezajuridica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `descricao` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cap_naturezajuridica`
--

LOCK TABLES `cap_naturezajuridica` WRITE;
/*!40000 ALTER TABLE `cap_naturezajuridica` DISABLE KEYS */;
/*!40000 ALTER TABLE `cap_naturezajuridica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cap_pessoafisica`
--

DROP TABLE IF EXISTS `cap_pessoafisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cap_pessoafisica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(14) NOT NULL,
  `nome` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cap_pessoafisica`
--

LOCK TABLES `cap_pessoafisica` WRITE;
/*!40000 ALTER TABLE `cap_pessoafisica` DISABLE KEYS */;
/*!40000 ALTER TABLE `cap_pessoafisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cap_pessoajuridica`
--

DROP TABLE IF EXISTS `cap_pessoajuridica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cap_pessoajuridica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(18) NOT NULL,
  `razao_social` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cap_pessoajuridica`
--

LOCK TABLES `cap_pessoajuridica` WRITE;
/*!40000 ALTER TABLE `cap_pessoajuridica` DISABLE KEYS */;
/*!40000 ALTER TABLE `cap_pessoajuridica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cap_representante`
--

DROP TABLE IF EXISTS `cap_representante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cap_representante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pessoa_id` int(11) NOT NULL,
  `qualificacao_id` int(11) NOT NULL,
  `socio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cap_representante_pessoa_id_f15470f2_fk_cap_pessoafisica_id` (`pessoa_id`),
  KEY `cap_representante_qualificacao_id_41f30814_fk_cap_socio` (`qualificacao_id`),
  KEY `cap_representante_socio_id_00dedeab_fk_cap_socio_id` (`socio_id`),
  CONSTRAINT `cap_representante_pessoa_id_f15470f2_fk_cap_pessoafisica_id` FOREIGN KEY (`pessoa_id`) REFERENCES `cap_pessoafisica` (`id`),
  CONSTRAINT `cap_representante_qualificacao_id_41f30814_fk_cap_socio` FOREIGN KEY (`qualificacao_id`) REFERENCES `cap_socioqualificacao` (`id`),
  CONSTRAINT `cap_representante_socio_id_00dedeab_fk_cap_socio_id` FOREIGN KEY (`socio_id`) REFERENCES `cap_socio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cap_representante`
--

LOCK TABLES `cap_representante` WRITE;
/*!40000 ALTER TABLE `cap_representante` DISABLE KEYS */;
/*!40000 ALTER TABLE `cap_representante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cap_reserva`
--

DROP TABLE IF EXISTS `cap_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cap_reserva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(15) NOT NULL,
  `ip_colaborador` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cap_reserva`
--

LOCK TABLES `cap_reserva` WRITE;
/*!40000 ALTER TABLE `cap_reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `cap_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cap_situacao`
--

DROP TABLE IF EXISTS `cap_situacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cap_situacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cap_situacao`
--

LOCK TABLES `cap_situacao` WRITE;
/*!40000 ALTER TABLE `cap_situacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `cap_situacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cap_socio`
--

DROP TABLE IF EXISTS `cap_socio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cap_socio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_id` int(11) NOT NULL,
  `pessoa_id` int(11) NOT NULL,
  `qualificacao_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cap_socio_empresa_id_0f9104cf_fk_cap_infoempresa_id` (`empresa_id`),
  KEY `cap_socio_pessoa_id_1e53a5b7_fk_cap_pessoafisica_id` (`pessoa_id`),
  KEY `cap_socio_qualificacao_id_3f0478c7_fk_cap_socioqualificacao_id` (`qualificacao_id`),
  CONSTRAINT `cap_socio_empresa_id_0f9104cf_fk_cap_infoempresa_id` FOREIGN KEY (`empresa_id`) REFERENCES `cap_infoempresa` (`id`),
  CONSTRAINT `cap_socio_pessoa_id_1e53a5b7_fk_cap_pessoafisica_id` FOREIGN KEY (`pessoa_id`) REFERENCES `cap_pessoafisica` (`id`),
  CONSTRAINT `cap_socio_qualificacao_id_3f0478c7_fk_cap_socioqualificacao_id` FOREIGN KEY (`qualificacao_id`) REFERENCES `cap_socioqualificacao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cap_socio`
--

LOCK TABLES `cap_socio` WRITE;
/*!40000 ALTER TABLE `cap_socio` DISABLE KEYS */;
/*!40000 ALTER TABLE `cap_socio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cap_socioqualificacao`
--

DROP TABLE IF EXISTS `cap_socioqualificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cap_socioqualificacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(4) NOT NULL,
  `descricao` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cap_socioqualificacao`
--

LOCK TABLES `cap_socioqualificacao` WRITE;
/*!40000 ALTER TABLE `cap_socioqualificacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `cap_socioqualificacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cap_tipodespesa`
--

DROP TABLE IF EXISTS `cap_tipodespesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cap_tipodespesa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cap_tipodespesa`
--

LOCK TABLES `cap_tipodespesa` WRITE;
/*!40000 ALTER TABLE `cap_tipodespesa` DISABLE KEYS */;
/*!40000 ALTER TABLE `cap_tipodespesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dialogo_conversa`
--

DROP TABLE IF EXISTS `dialogo_conversa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialogo_conversa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(2048) NOT NULL,
  `validade` date NOT NULL,
  `is_finalizado` tinyint(1) NOT NULL,
  `deputado_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dialogo_conversa_deputado_id_2a178570_fk_parlamentar_deputado_id` (`deputado_id`),
  KEY `dialogo_conversa_usuario_id_bb6fc98f_fk_base_usuario_id` (`usuario_id`),
  CONSTRAINT `dialogo_conversa_deputado_id_2a178570_fk_parlamentar_deputado_id` FOREIGN KEY (`deputado_id`) REFERENCES `parlamentar_deputado` (`id`),
  CONSTRAINT `dialogo_conversa_usuario_id_bb6fc98f_fk_base_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `base_usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dialogo_conversa`
--

LOCK TABLES `dialogo_conversa` WRITE;
/*!40000 ALTER TABLE `dialogo_conversa` DISABLE KEYS */;
/*!40000 ALTER TABLE `dialogo_conversa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dialogo_mensagem`
--

DROP TABLE IF EXISTS `dialogo_mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialogo_mensagem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conteudo` longtext NOT NULL,
  `is_resposta` tinyint(1) NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `conversa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dialogo_mensagem_conversa_id_bdb89d5e_fk_dialogo_conversa_id` (`conversa_id`),
  CONSTRAINT `dialogo_mensagem_conversa_id_bdb89d5e_fk_dialogo_conversa_id` FOREIGN KEY (`conversa_id`) REFERENCES `dialogo_conversa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dialogo_mensagem`
--

LOCK TABLES `dialogo_mensagem` WRITE;
/*!40000 ALTER TABLE `dialogo_mensagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `dialogo_mensagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dialogo_sugestao`
--

DROP TABLE IF EXISTS `dialogo_sugestao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialogo_sugestao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(1024) NOT NULL,
  `conteudo` longtext NOT NULL,
  `data_criacao` datetime(6) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dialogo_sugestao_usuario_id_e0ac6984_fk_base_usuario_id` (`usuario_id`),
  CONSTRAINT `dialogo_sugestao_usuario_id_e0ac6984_fk_base_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `base_usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dialogo_sugestao`
--

LOCK TABLES `dialogo_sugestao` WRITE;
/*!40000 ALTER TABLE `dialogo_sugestao` DISABLE KEYS */;
/*!40000 ALTER TABLE `dialogo_sugestao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dialogo_tomatada`
--

DROP TABLE IF EXISTS `dialogo_tomatada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialogo_tomatada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_hora` datetime(6) NOT NULL,
  `deputado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dialogo_tomatada_deputado_id_1904e5aa_fk_parlamentar_deputado_id` (`deputado_id`),
  CONSTRAINT `dialogo_tomatada_deputado_id_1904e5aa_fk_parlamentar_deputado_id` FOREIGN KEY (`deputado_id`) REFERENCES `parlamentar_deputado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dialogo_tomatada`
--

LOCK TABLES `dialogo_tomatada` WRITE;
/*!40000 ALTER TABLE `dialogo_tomatada` DISABLE KEYS */;
/*!40000 ALTER TABLE `dialogo_tomatada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'base','estado'),(8,'base','municipio'),(9,'base','usuario'),(10,'cap','gasto'),(11,'cap','gastotipo'),(12,'cap','infoempresa'),(13,'cap','naturezajuridica'),(14,'cap','pessoafisica'),(15,'cap','pessoajuridica'),(16,'cap','representante'),(17,'cap','reserva'),(18,'cap','situacao'),(19,'cap','socio'),(20,'cap','socioqualificacao'),(21,'cap','tipodespesa'),(5,'contenttypes','contenttype'),(22,'dialogo','conversa'),(23,'dialogo','mensagem'),(24,'dialogo','sugestao'),(25,'dialogo','tomatada'),(26,'parlamentar','deputado'),(27,'parlamentar','partido'),(28,'parlamentar','profissao'),(6,'sessions','session'),(34,'siteops','noticia'),(29,'trabalho','legislatura'),(30,'trabalho','mandato'),(31,'trabalho','partido'),(32,'trabalho','presenca'),(33,'trabalho','sessao');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-05-17 04:09:17.730542'),(2,'auth','0001_initial','2017-05-17 04:09:21.556647'),(3,'admin','0001_initial','2017-05-17 04:09:22.218793'),(4,'admin','0002_logentry_remove_auto_add','2017-05-17 04:09:22.330714'),(5,'contenttypes','0002_remove_content_type_name','2017-05-17 04:09:22.938103'),(6,'auth','0002_alter_permission_name_max_length','2017-05-17 04:09:23.015982'),(7,'auth','0003_alter_user_email_max_length','2017-05-17 04:09:23.084793'),(8,'auth','0004_alter_user_username_opts','2017-05-17 04:09:23.133359'),(9,'auth','0005_alter_user_last_login_null','2017-05-17 04:09:23.628879'),(10,'auth','0006_require_contenttypes_0002','2017-05-17 04:09:23.706177'),(11,'auth','0007_alter_validators_add_error_messages','2017-05-17 04:09:23.794734'),(12,'auth','0008_alter_user_username_max_length','2017-05-17 04:09:24.056736'),(13,'base','0001_initial','2017-05-17 04:09:24.351722'),(14,'base','0002_municipio','2017-05-17 04:09:25.211097'),(15,'base','0003_usuario','2017-05-17 04:09:25.771065'),(16,'parlamentar','0001_initial','2017-05-17 04:09:27.073967'),(17,'trabalho','0001_initial','2017-05-17 04:09:31.604179'),(18,'cap','0001_initial','2017-05-17 04:09:36.347526'),(19,'dialogo','0001_initial','2017-05-17 04:09:38.765320'),(20,'sessions','0001_initial','2017-05-17 04:09:38.975687'),(21,'siteops','0001_initial','2017-05-17 04:09:39.123349');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parlamentar_deputado`
--

DROP TABLE IF EXISTS `parlamentar_deputado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parlamentar_deputado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(1024) NOT NULL,
  `nome_civil` varchar(254) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `falecimento` date DEFAULT NULL,
  `profissao_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parlamentar_deputado_profissao_id_0d7fb0d0_fk_parlament` (`profissao_id`),
  CONSTRAINT `parlamentar_deputado_profissao_id_0d7fb0d0_fk_parlament` FOREIGN KEY (`profissao_id`) REFERENCES `parlamentar_profissao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parlamentar_deputado`
--

LOCK TABLES `parlamentar_deputado` WRITE;
/*!40000 ALTER TABLE `parlamentar_deputado` DISABLE KEYS */;
/*!40000 ALTER TABLE `parlamentar_deputado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parlamentar_partido`
--

DROP TABLE IF EXISTS `parlamentar_partido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parlamentar_partido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  `sigla` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parlamentar_partido`
--

LOCK TABLES `parlamentar_partido` WRITE;
/*!40000 ALTER TABLE `parlamentar_partido` DISABLE KEYS */;
/*!40000 ALTER TABLE `parlamentar_partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parlamentar_profissao`
--

DROP TABLE IF EXISTS `parlamentar_profissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parlamentar_profissao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parlamentar_profissao`
--

LOCK TABLES `parlamentar_profissao` WRITE;
/*!40000 ALTER TABLE `parlamentar_profissao` DISABLE KEYS */;
/*!40000 ALTER TABLE `parlamentar_profissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siteops_noticia`
--

DROP TABLE IF EXISTS `siteops_noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siteops_noticia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(512) NOT NULL,
  `data` date NOT NULL,
  `excerto` longtext NOT NULL,
  `link` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteops_noticia`
--

LOCK TABLES `siteops_noticia` WRITE;
/*!40000 ALTER TABLE `siteops_noticia` DISABLE KEYS */;
/*!40000 ALTER TABLE `siteops_noticia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabalho_legislatura`
--

DROP TABLE IF EXISTS `trabalho_legislatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabalho_legislatura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ano` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabalho_legislatura`
--

LOCK TABLES `trabalho_legislatura` WRITE;
/*!40000 ALTER TABLE `trabalho_legislatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabalho_legislatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabalho_mandato`
--

DROP TABLE IF EXISTS `trabalho_mandato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabalho_mandato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deputado_id` int(11) NOT NULL,
  `estado_id` int(11) NOT NULL,
  `legislatura_id` int(11) NOT NULL,
  `partido_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trabalho_mandato_deputado_id_cd16f986_fk_parlamentar_deputado_id` (`deputado_id`),
  KEY `trabalho_mandato_estado_id_55c55659_fk_base_estado_id` (`estado_id`),
  KEY `trabalho_mandato_legislatura_id_ddea68eb_fk_trabalho_` (`legislatura_id`),
  KEY `trabalho_mandato_partido_id_ad130cb7_fk_trabalho_partido_id` (`partido_id`),
  CONSTRAINT `trabalho_mandato_deputado_id_cd16f986_fk_parlamentar_deputado_id` FOREIGN KEY (`deputado_id`) REFERENCES `parlamentar_deputado` (`id`),
  CONSTRAINT `trabalho_mandato_estado_id_55c55659_fk_base_estado_id` FOREIGN KEY (`estado_id`) REFERENCES `base_estado` (`id`),
  CONSTRAINT `trabalho_mandato_legislatura_id_ddea68eb_fk_trabalho_` FOREIGN KEY (`legislatura_id`) REFERENCES `trabalho_legislatura` (`id`),
  CONSTRAINT `trabalho_mandato_partido_id_ad130cb7_fk_trabalho_partido_id` FOREIGN KEY (`partido_id`) REFERENCES `trabalho_partido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabalho_mandato`
--

LOCK TABLES `trabalho_mandato` WRITE;
/*!40000 ALTER TABLE `trabalho_mandato` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabalho_mandato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabalho_partido`
--

DROP TABLE IF EXISTS `trabalho_partido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabalho_partido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabalho_partido`
--

LOCK TABLES `trabalho_partido` WRITE;
/*!40000 ALTER TABLE `trabalho_partido` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabalho_partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabalho_presenca`
--

DROP TABLE IF EXISTS `trabalho_presenca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabalho_presenca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_presente` tinyint(1) NOT NULL,
  `justificativa` longtext,
  `deputado_id` int(11) NOT NULL,
  `sessao_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trabalho_presenca_deputado_id_330fd36c_fk_parlament` (`deputado_id`),
  KEY `trabalho_presenca_sessao_id_9a6889fa_fk_trabalho_sessao_id` (`sessao_id`),
  CONSTRAINT `trabalho_presenca_deputado_id_330fd36c_fk_parlament` FOREIGN KEY (`deputado_id`) REFERENCES `parlamentar_deputado` (`id`),
  CONSTRAINT `trabalho_presenca_sessao_id_9a6889fa_fk_trabalho_sessao_id` FOREIGN KEY (`sessao_id`) REFERENCES `trabalho_sessao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabalho_presenca`
--

LOCK TABLES `trabalho_presenca` WRITE;
/*!40000 ALTER TABLE `trabalho_presenca` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabalho_presenca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabalho_sessao`
--

DROP TABLE IF EXISTS `trabalho_sessao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabalho_sessao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia` date NOT NULL,
  `numero` int(10) unsigned NOT NULL,
  `descricao` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabalho_sessao`
--

LOCK TABLES `trabalho_sessao` WRITE;
/*!40000 ALTER TABLE `trabalho_sessao` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabalho_sessao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-17  1:11:16
