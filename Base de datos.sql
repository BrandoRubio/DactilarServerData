-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-04-2021 a las 21:19:54
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- Estructura de tabla para la tabla `consultores`
--

CREATE TABLE `consultores` (
  `id` int(11) NOT NULL,
  `siglas` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `añadido` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `consultores`
--

INSERT INTO `consultores` (`id`, `siglas`, `nombre`, `area`, `correo`, `añadido`) VALUES
(1, 'JPS', 'Jessica P', 'Ad.Optima', 'Jessica.Padilla@i-condor.com', 'FALSE'),
(2, 'VCH', 'Victor C', 'Ad.Optima', 'Victor.Canedo@i-condor.com', 'FALSE'),
(3, 'BGC', 'Bibiana G', 'Ad.Optima', 'Bibiana.Guzman@i-condor.com', 'FALSE'),
(4, 'ODRV', 'Dario R', 'Ad.Optima', 'Dario.Reyna@i-condor.com', 'FALSE'),
(5, 'BDPA', 'Byanca P', 'Ad.Optima', 'byanca.plata@i-condor.com', 'FALSE'),
(6, 'MCLV', 'Carmen L', 'Ad.Optima', 'carmen.lopez@i-condor.com', 'FALSE'),
(7, 'CHA', 'Cesar H', 'Ad.Optima', 'cesar.hernandez@i-condor.com', 'FALSE'),
(8, 'EOVS', 'Edgar V', 'Ad.Optima', 'omar.vela@i-condor.com', 'FALSE'),
(9, 'HMB', 'Heriberto M', 'Ad.Optima', 'heriberto.martinez@i-condor.com', 'FALSE'),
(10, 'EBBN', 'Esmeralda Be', 'Ad.Optima', 'Esmeralda.Bedolla@i-condor.com', 'FALSE'),
(11, 'GEF', 'Gabriela E', 'Ad.Optima', 'gabriela.espinoza@i-condor.com', 'FALSE'),
(12, 'JCZT', 'Carlos Z', 'Ad.Optima', 'carlos.zamarripa@i-condor.com', 'FALSE'),
(13, 'GBRQ', 'Gloria R', 'Ad.Optima', 'gloria.renteria@i-condor.com', 'FALSE'),
(14, 'JRG', 'Jericot R', 'Ad.Optima', 'jericot.ramos@i-condor.com', 'FALSE'),
(15, 'COMV', 'Osiris M', 'Ad.Optima', 'carlos.miranda@i-condor.com', 'FALSE'),
(16, 'SZB', 'Sara Z', 'Ad.Optima', 'sara.zeferino@i-condor.com', 'FALSE'),
(17, 'MRB', 'Mayan R', 'Ad.Optima', 'mayan.rosario@i-condor.com', 'FALSE'),
(18, 'AISO', 'Alan S', 'Ad.Optima', 'alan.santamaria@i-Condor.com', 'FALSE'),
(19, 'JIAG', 'Jhonatan A', 'Ad.Optima', 'jhonatan.aguilar@i-Condor.com', 'FALSE'),
(20, 'MGPM', 'Marcelo P', 'Ad.Optima', 'marcelo.padilla@i-condor.com', 'FALSE'),
(21, 'WIBZ', 'Wiliam B', 'Ad.Optima', 'william.bravo@i-condor.com', 'FALSE'),
(22, 'JCVG2', 'Carlos VG', 'Ad.Optima', 'carlos.vallejo@i-condor.com', 'FALSE'),
(23, 'CPA1', 'Citlali P', 'Ad.Optima', 'citlali.plata@i-condor.com', 'FALSE'),
(24, 'VBR', 'Viviano B', 'Ad.Optima', 'viviano.barcenas@i-condor.com', 'FALSE'),
(25, 'ORH2', 'Osmar R', 'Ad.Optima', 'osmar.roblero.condor@gmail.com', 'FALSE'),
(26, 'LJMM', 'Jesus M', 'Ad.Optima', 'jesus.mendez@i-condor.com', 'FALSE'),
(27, 'EICT', 'Evelyn C', 'Ad.Optima', 'evelyn.cortes.condor@gmail.com', 'FALSE'),
(28, 'EMS', 'Eusebio M', 'Ad.Optima', 'eusebio.munoz@i-condor.com', 'FALSE'),
(29, 'MEOC', 'Mauro E O', 'Ad.Optima', 'mauro.ortiz@i-condor.com', 'FALSE'),
(30, 'JRN', 'Josue R', 'Ad.Optima', 'josue.ruiz.condor@gmail.com', 'FALSE'),
(31, 'VFAB', 'Fabian A', 'Ad.Optima', 'vfabian.alvez.condor@gmail.com', 'FALSE'),
(32, 'ACVS', 'Claudia V', 'Ad.Optima', 'claudia.vela.condor@gmail.com', 'FALSE'),
(33, 'OMS', 'Orlando M', 'Ad.Optima', 'orlando.munoz.condor@gmail.com', 'FALSE'),
(34, 'OGG', 'Octavio G', 'Ad.Optima', 'octavio.guerrero@i-condor.com', 'FALSE'),
(35, 'OIHP', 'Oscar I', 'Ad.Optima', 'oscar.hernandez.condor@gmail.com', 'FALSE'),
(36, 'MPN', 'Monica P', 'Ad.Optima', 'monica.padilla.condor@gmail.com', 'FALSE'),
(37, 'LJSS', 'Jocelyn S', 'Ad.Optima', 'jocelyn.sevilla.condor@gmail.com', 'FALSE'),
(38, 'EHM', 'Emmanuel H', 'Ad.Optima', 'emmanuel.hernandez.condor@gmail.com', 'FALSE'),
(39, 'JEMC', 'Eduardo M', 'Ad.Optima', 'eduardo.monico.condor@gmail.com', 'FALSE'),
(40, 'ILCR', 'Lizbeth C', 'Ad.Optima', 'lizbeth.cadena.condor@gmail.com', 'FALSE'),
(41, 'UMH', 'Uriel M', 'Ad.Optima', 'uriel.miranda@i-Condor.com', 'FALSE'),
(42, 'AARE', 'Alexis L', 'Ad.Optima', 'alexis.rodriguez.condor@gmail.com', 'FALSE'),
(43, 'VMCG', 'Manuel C', 'Ad.Optima', 'victorm.castillogarcia.condor@gmail.com', 'FALSE'),
(44, 'GECG', 'Estefania C', 'Ad.Optima', 'estefania.casanova.condor@gmail.com', 'FALSE'),
(45, 'ZAA', 'Zuri A', 'ADMON', 'zuri.almanza@i-condor.com', 'FALSE'),
(46, 'STS', 'Susana T', 'ADMON', 'tsv.stepepas@gmail.com', 'FALSE'),
(47, 'MGAG', 'Lupita A', 'ADMON', 'maria.ataque@i-condor.com', 'FALSE'),
(48, 'KLPG', 'Katty G', 'ADMON', 'katty.garcia@i-condor.com', 'FALSE'),
(49, 'MIRO', 'Monica I R', 'ADMON', 'monica.rodriguez.condor@gmail.com', 'FALSE'),
(50, 'CTS', 'Camerino T', 'DEV', 'Camerino.Tesillos@i-condor.com', 'FALSE'),
(51, 'CTP', 'Cesar T', 'DEV', 'Cesar.Trujillo@i-condor.com', 'FALSE'),
(52, 'MAAF', 'Miguel A', 'DEV', 'Miguel.Arriaga@i-condor.com', 'FALSE'),
(53, 'EER', 'Ernesto E', 'DEV', 'Ernesto.Estrella@i-condor.com', 'FALSE'),
(54, 'JGR', 'Jose Go', 'DEV', 'Jose.Gonzalez@i-condor.com', 'FALSE'),
(55, 'JAFV', 'Alberto F', 'DEV', 'Alberto.Figueiras@i-condor.com', 'FALSE'),
(56, 'AOE', 'Angel O', 'DEV', 'Angel.Orozco@i-condor.com', 'FALSE'),
(57, 'RRT', 'Ricardo R', 'DEV', 'Ricardo.Ramirez@i-condor.com', 'FALSE'),
(58, 'AAR', 'Angel A', 'DEV', 'Angel.Arellanes@i-condor.com', 'FALSE'),
(59, 'MAPA', 'Miguel Pa', 'DEV', 'miguel.pantaleon@i-condor.com', 'FALSE'),
(60, 'SAMH', 'Sergio M', 'DEV', 'Sergio.Martinez@i-condor.com', 'FALSE'),
(61, 'JAGE', 'Abraham G', 'DEV', 'Abraham.Garcia@i-condor.com', 'FALSE'),
(62, 'JJLC', 'Javier L', 'DEV', 'Javier.Luna@i-condor.com', 'FALSE'),
(63, 'SPA', 'Sara P', 'DEV', 'Sara.Peralta@i-condor.com', 'FALSE'),
(64, 'JFCL', 'Francisco Ca L', 'DEV', 'Francisco.Camacho@i-condor.com', 'FALSE'),
(65, 'HGR', 'Hugo G', 'DEV', 'hugo.gonzalez@i-condor.com', 'FALSE'),
(66, 'ECR', 'Elias C', 'DEV', 'elias.cuahutencos@i-condor.com', 'FALSE'),
(67, 'RELS', 'Raul L', 'DEV', 'raul.lopez@i-condor.com', 'FALSE'),
(68, 'AGAA', 'Gerardo A', 'DEV', 'gerardo.almazan@i-condor.com', 'FALSE'),
(69, 'GMM', 'Gabriel M', 'DEV', 'gabriel.mares@i-condor.com', 'FALSE'),
(70, 'ORH', 'Oscar R', 'DEV', 'oscar.rodriguez@i-condor.com', 'FALSE'),
(71, 'RSOG', 'Reynaldo O', 'DEV', 'reynaldo.salomon@i-condor.com', 'FALSE'),
(72, 'LAEL', 'Luis E', 'DEV', 'luis.escobedo@i-condor.com', 'FALSE'),
(73, 'JCL', 'Jonathan C', 'DEV', 'jonathan.cruz@i-condor.com', 'FALSE'),
(74, 'FDVH', 'Fidel V', 'DEV', 'david.velasquez@i-condor.com', 'FALSE'),
(75, 'LEGM', 'Luis G', 'DEV', 'luis.gutierrez@i-condor.com', 'FALSE'),
(76, 'AICR', 'Ana C', 'DEV', 'ani.reza@i-condor.com', 'FALSE'),
(77, 'RASM', 'Ruben S', 'DEV', 'ruben.salinas@i-condor.com', 'FALSE'),
(78, 'JATG', 'Jorge T', 'DEV', 'jorge.trujillo@i-condor.com', 'FALSE'),
(79, 'MRC2', 'Mario Ro', 'DEV', 'mario.rodriguez@i-condor.com', 'FALSE'),
(80, 'SEJR', 'Eduardo J', 'DEV', 'eduardo.jimenez@i-condor.com', 'FALSE'),
(81, 'JMM', 'Jesus Me', 'DEV', 'Jesus.Mendoza@i-condor.com', 'FALSE'),
(82, 'MART', 'Alejandro R', 'DEV', 'alejandro.ramirez@i-condor.com', 'FALSE'),
(83, 'LRMC', 'Rodrigo M', 'DEV', 'rodrigo.maya@i-condor.com', 'FALSE'),
(84, 'EGM', 'Elizabeth G', 'DEV', 'elizabeth.gutierrez@i-condor.com', 'FALSE'),
(85, 'MBR', 'Miguel B', 'DEV', 'miguel.banderas@i-condor.com', 'FALSE'),
(86, 'FFP', 'Fernando F', 'DEV', 'Fernando.franco@i-condor.com', 'FALSE'),
(87, 'IGB', 'Isai Ga', 'DEV', 'isai.galindo@i-condor.com', 'FALSE'),
(88, 'RBQ', 'Ricardo B', 'DEV', 'ricardo.barrera@i-condor.com', 'FALSE'),
(89, 'OOH', 'Oscar O', 'DEV', 'oscar.olivan@i-condor.com', 'FALSE'),
(90, 'GPS', 'Giovanni P', 'DEV', 'giovanni.perez@i-condor.com', 'FALSE'),
(91, 'GJL', 'Gloria J', 'DEV', 'gloria.jimenez@i-condor.com', 'FALSE'),
(92, 'ECP2', 'Edgar C', 'DEV', 'edgar.cruz@i-condor.com', 'FALSE'),
(93, 'LFLC', 'Luis F', 'DEV', 'luis.lucas@i-condor.com', 'FALSE'),
(94, 'JAAS', 'Juan A', 'DEV', 'juan.delangel@i-condor.com', 'FALSE'),
(95, 'ASF', 'Adrian S F', 'DEV', 'adrian.sanchez@i-condor.com', 'FALSE'),
(96, 'RRT2', 'Rodrigo R T', 'DEV', 'rodrigo.ronderos@i-condor.com.mx', 'FALSE'),
(97, 'ECN', 'Emmanuel C', 'DEV', 'emmanuel.chavez@i-condor.com.mx', 'FALSE'),
(98, 'EGOD', 'Eber O', 'DEV', 'eber.ocampo@i-condor.com.mx', 'FALSE'),
(99, 'AGG', 'Alfredo G', 'DEV', 'alfredo.guerrero.condor@gmail.com', 'FALSE'),
(100, 'FJQR', 'Francisco Q', 'DEV', 'francisco.quintero@i-condor.com', 'FALSE'),
(101, 'AJVC', 'Angel J', 'DEV', 'angel.cruz@i-condor.com.mx', 'FALSE'),
(102, 'EAR', 'Efrain A', 'DEV', 'efrain.arellanes@i-condor.com.mx', 'FALSE'),
(103, 'AJP', 'Arely J', 'DEV', 'arely.jimenez.condor@gmail.com', 'FALSE'),
(104, 'LERS', 'Lenin R', 'DEV', 'lenin.reyes.condor@gmail.com', 'FALSE'),
(105, 'JSG', 'Jonathan S', 'DEV', 'jonathan.segundo.condor@gmail.com', 'FALSE'),
(106, 'RMB', 'Rigoberto M', 'DEV', 'rigoberto.monroy.condor@gmail.com', 'FALSE'),
(107, 'CPM2', 'Claudia P', 'DEV', 'claudia.patricio.condor@gmail.com', 'FALSE'),
(108, 'MRG', 'Monserrat R', 'DEV', 'monserrat.ramos@i-condor.com.mx', 'FALSE'),
(109, 'VGM', 'Veronica G', 'DEV', 'veronica.garcia@i-condor.com', 'FALSE'),
(110, 'ART', 'Alberto R', 'DEV', 'alberto.torres.condor@gmail.com', 'FALSE'),
(111, 'LEAC', 'Luis A', 'DEV', 'enrique.delangel.condor@gmail.com', 'FALSE'),
(112, 'CMT', 'Constantino M', 'DEV', 'constantino.morales.condor@gmail.com', 'FALSE'),
(113, 'MSC2', 'Marcos S', 'DEV', 'marcos.santiago.condor@gmail.com', 'FALSE'),
(114, 'MAQM', 'Miguel A Q', 'DEV', 'miguel.quintos.condor@gmail.com', 'FALSE'),
(115, 'RAG', 'Ricardo A', 'DEV', 'ricardo.arellano.condor@gmail.com', 'FALSE'),
(116, 'AADM', 'Alvaro D', 'DEV', 'alvaro.delgadillo.condor@gmail.com', 'FALSE'),
(117, 'GEPG', 'Gustavo P', 'DEV', 'gustavo.petrearce.condor@gmail.com', 'FALSE'),
(118, 'JJCP', 'Juan C P', 'DEV', 'juan.padilla.condor@gmail.com', 'FALSE'),
(119, 'JMGM', 'Misael G', 'DEV', 'jose2.mendoza.condor@gmail.com', 'FALSE'),
(120, 'CCM', 'Cecilia C', 'DEV', 'ceci.crisostomo.condor@gmail.com', 'FALSE'),
(121, 'JLCA', 'Levy C', 'DEV', 'levy.cen.condor@gmail.com', 'FALSE'),
(122, 'JAKC', 'Alejandro K', 'DEV', 'alejandro.kantun.condor@gmail.com', 'FALSE'),
(123, 'JIGE', 'Joaquin G', 'DEV', 'joaquin.gamboa.condor@gmail.com', 'FALSE'),
(124, 'JLDH', 'Jose D', 'DEV', 'josel.hernandez.condor@gmail.com', 'FALSE'),
(125, 'MEC', 'Marisol E', 'DEV', 'marisol.escamilla.condor@gmail.com', 'FALSE'),
(126, 'VMCC', 'Victor M C', 'DEV', 'victor.manuel.chan.condor@gmail.com', 'FALSE'),
(127, 'JDRZ', 'David R', 'DEV', 'david.romero.condor@gmail.com', 'FALSE'),
(128, 'PAMC', 'Pedro M', 'DEV', 'pedro.mis.condor@gmail.com', 'FALSE'),
(129, 'AFUK', 'Angel U', 'DEV', 'angel.ucan.condor@gmail.com', 'FALSE'),
(130, 'GJPDM', 'Giovani D', 'DEV', 'giovani.dzib.condor@gmail.com', 'FALSE'),
(131, 'SFOA', 'Sergio F', 'DEV', 'sergio.orona.condor@gmail.com', 'FALSE'),
(132, 'MAAR', 'Manuel A A', 'DEV', 'manuel.aguilar.condor@gmail.com', 'FALSE'),
(133, 'PAFO', 'Pedro F', 'DEV', 'pedro.fernandez.condor@gmail.com', 'FALSE'),
(134, 'MAJV', 'Manuel J', 'DEV', 'manuel.jimenez.condor@gmail.com', 'FALSE'),
(135, 'NLG', 'Noe L', 'DEV', 'noe.lopez.condor@gmail.com', 'FALSE'),
(136, 'MAJ', 'Mauricio A', 'DEV', 'mauricio.avendano.condor@gmail.com', 'FALSE'),
(137, 'LRC', 'Lizbeth R', 'DEV', 'lizbeth1.ramirez.condor@gmail.com', 'FALSE'),
(138, 'JFLH', 'Fernando L H', 'DEV', 'fernando.lara.condor@gmail.com', 'FALSE'),
(139, 'DEDS', 'Diego E', 'DEV', 'diego.dominguez.condor@gmail.com', 'FALSE'),
(140, 'LAGC', 'Luis A G', 'DEV', 'luis.gurrola.condor@gmail.com', 'FALSE'),
(141, 'MACQ', 'Miguel Co Q', 'FUN', 'Miguel.Contreras@i-condor.com', 'FALSE'),
(142, 'JLMS', 'Luis M', 'FUN', 'Luis.morales@i-condor.com', 'FALSE'),
(143, 'JLRM', 'Luis R', 'FUN', 'luis.rosendo@i-condor.com', 'FALSE'),
(144, 'TEE', 'Tatiana E', 'FUN', 'tatiana.escobar@i-condor.com', 'FALSE'),
(145, 'ACH', 'Arlette C', 'FUN', 'arlette.carreto@i-condor.com', 'FALSE'),
(146, 'RGA', 'Rubi G', 'FUN', 'rubi.gonzalez@i-condor.com', 'FALSE'),
(147, 'ACB', 'Adai C', 'FUN', 'adai.becerril@i-condor.com', 'FALSE'),
(148, 'CCQ2', 'Claudia C', 'FUN', 'claudia.quintos.condor@gmail.com', 'FALSE'),
(149, 'JARQ', 'Jazmin R', 'FUN', 'jazmin.renteria@i-condor.com.mx', 'FALSE'),
(150, 'MEVL', 'Eugenia V', 'FUN', 'eugenia.victoria@i-condor.com', 'FALSE'),
(151, 'JPAB', 'Paola A', 'FUN', 'paola.armas@i-condor.com', 'FALSE'),
(152, 'AAB', 'Andrea A', 'FUN', 'andrea.armas@i-condor.com', 'FALSE'),
(153, 'BRS', 'Bernardo R', 'FUN', 'Bernardo.Ramirez@i-condor.com', 'FALSE'),
(154, 'VPP', 'Veronica P', 'FUN', 'veronica.perez@i-condor.com', 'FALSE'),
(155, 'DVM', 'Damian V', 'FUN', 'damian.valladares@i-condor.com', 'FALSE'),
(156, 'LMGH', 'Luis M G', 'FUN', 'manuel.garcia@i-condor.com', 'FALSE'),
(157, 'JCRM', 'Julio R', 'FUN', 'julio.mena@i-condor.com', 'FALSE'),
(158, 'KRR', 'Kendy R', 'FUN', 'kendy.rodriguez.condor@gmail.com', 'FALSE'),
(159, 'JABL', 'Antonio B', 'FUN', 'antonio.bautista@i-condor.com', 'FALSE'),
(160, 'ETL', 'Edith T', 'FUN', 'edith.terrero@i-condor.com', 'FALSE'),
(161, 'IML2', 'Ivan Mo', 'FUN', 'ivan.morales@i-condor.com', 'FALSE'),
(162, 'LIRR', 'Laura R', 'FUN', 'laura.rodriguez@i-condor.com', 'FALSE'),
(163, 'VMG', 'Violeta M', 'FUN', 'violeta.morales@i-condor.com.mx', 'FALSE'),
(164, 'MAQV', 'Miguel Q', 'FUN', 'miguel.quijano.condor@gmail.com', 'FALSE'),
(165, 'NSI', 'Noe S', 'FUN', 'noe.sanjuan@i-condor.com', 'FALSE'),
(166, 'RDC', 'Roberto D', 'FUN', 'roberto.diaz@i-Condor.com', 'FALSE'),
(167, 'BAA', 'Bani A', 'FUN', 'bani.almanza@i-condor.com', 'FALSE'),
(168, 'MAGE', 'Miguel A G', 'FUN', 'miguel.gonzalez.condor@gmail.com', 'FALSE'),
(169, 'JAAG', 'Antonio A', 'FUN', 'antonio.arevalo.condor@gmail.com', 'FALSE'),
(170, 'MAL', 'Mariana A', 'FUN', 'mariana.araiza.condor@gmail.com', 'FALSE'),
(171, 'YDR', 'Yessica D', 'FUN', 'yessica.duran.condor@gmail.com', 'FALSE'),
(172, 'NESG', 'Nancy S', 'FUN', 'nancy.salinas.condor@gmail.com', 'FALSE'),
(173, 'DBQ', 'Daniel B', 'FUN', 'daniel.bernal.condor@gmail.com', 'FALSE'),
(174, 'JLSD', 'Jose S', 'FUN', 'joseluis.sanchez.condor@gmail.com', 'FALSE'),
(175, 'OEE', 'Osvaldo E', 'FUN', 'osvaldo.escobar.condor@gmail.com', 'FALSE'),
(176, 'AVFC', 'Adriana F', 'FUN', 'adriana.flores.condor@gmail.com', 'FALSE'),
(177, 'NGTV', 'Naomi T', 'FUN', 'naomi.vela@i-condor.com', 'FALSE'),
(178, 'HAG', 'Hayde A', 'FUN', 'hayde.alvarez.condor@gmail.com', 'FALSE'),
(179, 'SYCG', 'Yocelin C', 'FUN', 'yocelin.colin@i-condor.com', 'FALSE'),
(180, 'BASP', 'Brandon S', 'FUN', 'brandon.salas.condor@gmail.com', 'FALSE'),
(181, 'FRR', 'Francisco R', 'FUN', 'francisco.rivera@i-condor.com', 'FALSE'),
(182, 'MEGQ', 'Mayra G', 'FUN', 'mayra.garcia.condor@gmail.com', 'FALSE'),
(183, 'RCM', 'Ruben C', 'FUN', 'ruben.castillo.condor@gmail.com', 'FALSE'),
(184, 'GPV', 'Gabriela  P', 'FUN', 'gabriela.penaranda.condor@gmail.com', 'FALSE'),
(185, 'IPP', 'Irma P', 'FUN', 'irma.pacheco.condor@gmail.com', 'FALSE'),
(186, 'GNRT', 'Nayelli R', 'FUN', 'NAYELLI.RANGEL.CONDOR@GMAIL.COM', 'FALSE'),
(187, 'DJM', 'Daniel J', 'FUN', 'daniel.mercado.condor@gmail.com', 'FALSE'),
(188, 'HAH', 'Hermes A', 'FUN', 'hermes.arevalo.condor@gmail.com', 'FALSE'),
(189, 'MAUS', 'Miguel S', 'FUN', 'miguel.somoza.condor@gmail.com', 'FALSE'),
(190, 'MGG', 'Mario G', 'FUN', 'mario.gutierrez@i-condor.com', 'FALSE'),
(191, 'RCL', 'Rosa C', 'FUN', 'rosa.castillo.condor@gmail.com', 'FALSE'),
(192, 'EJRM', 'Erick R', 'FUN', 'erick.ruiz.condor@gmail.com', 'FALSE'),
(193, 'ETL2', 'Elizabeth T', 'FUN', 'elizabeth.terrero.condor@gmail.com', 'FALSE'),
(194, 'AABG', 'Ariel B', 'FUN', 'ariel.bautista.condor@gmail.com', 'FALSE'),
(195, 'AAL2', 'Ariaana A', 'FUN', 'ariaana.aguilar.condor@gmail.com', 'FALSE'),
(196, 'LAGS', 'Alfonso S', 'FUN', 'alfonso.salazar.condor@gmail.com', 'FALSE'),
(197, 'FMJR', 'Flor J', 'FUN', 'flor.jimenez.condor@gmail.com', 'FALSE'),
(198, 'AATT', 'Aylin T', 'FUN', 'aylin.torres.condor@gmail.com', 'FALSE'),
(199, 'LNR', 'Laura N', 'FUN', 'laura.nava.condor@gmail.com', 'FALSE'),
(200, 'YMRM', 'Yovani R', 'G16', 'yovani.rojas.condor@gmail.com', 'FALSE'),
(201, 'CDSG', 'Carlos D', 'Prog. sin', 'daniels.salinas.condor@gmail.com', 'FALSE'),
(202, 'OCA', 'Oscar C', 'Prog. sin', 'oscar.cruz.condor@gmail.com', 'FALSE'),
(203, 'ASRC', 'Alan R', 'Prog. sin', 'alan.ramirez.condor@gmail.com', 'FALSE'),
(204, 'DDSG', 'Diego S', 'Prog. sin', 'diego.salinas.condor@gmail.com', 'FALSE'),
(205, 'CDMA', 'Carlos M', 'Prog. sin', 'carlos.alvarez.condor@gmail.com', 'FALSE'),
(206, 'EAG', 'Edwards A', 'SEG', 'Edwards.Aguilar@i-condor.com', 'FALSE'),
(207, 'MAVL', 'Miguel Vi L', 'SEG', 'miguel.villanueva@i-condor.com', 'FALSE'),
(208, 'RCB', 'Ricardo C', 'SEG', 'ricardo.chino@i-condor.com', 'FALSE'),
(209, 'OPM', 'Omar P', 'SEG', 'Omar.pineda@i-condor.com', 'FALSE'),
(210, 'ACF', 'Alejandro C', 'SEG', 'alejandro.castro@i-condor.com', 'FALSE'),
(211, 'JMFH', 'Manuel F', 'SEG', 'manuel.flores@i-condor.com', 'FALSE'),
(212, 'JCVD', 'Julio V', 'SEG', 'julio.vargas@i-condor.com', 'FALSE'),
(213, 'AOG', 'Adela O', 'SEG', 'adela.olvera@i-condor.com', 'FALSE'),
(214, 'NYCH', 'Nonancint C', 'SEG', 'nonancint.delacruz@i-condor.com', 'FALSE'),
(215, 'DCPF', 'Dulce P', 'SEG', 'dulce.pulido@i-condor.com', 'FALSE'),
(216, 'EFP', 'Eduardo F', 'SEG', 'eduardo.franco@i-condor.com', 'FALSE'),
(217, 'JPR', 'Juan P', 'SEG', 'Juan.Perez@i-condor.com', 'FALSE'),
(218, 'ABV', 'Armando B', 'SEG', 'armando.briones@i-condor.com', 'FALSE'),
(219, 'RHT', 'Ruben H', 'SEG', 'ruben.hernandez@i-condor.com', 'FALSE'),
(220, 'JCG', 'Jose C', 'SEG', 'jose.cruz@i-condor.com', 'FALSE'),
(221, 'GAMC', 'Gustavo A M', 'SEG', 'gustavo.maldonado@i-condor.com', 'FALSE'),
(222, 'AMM', 'Aurora M', 'SEG', 'aurora.mendez.condor@gmail.com', 'FALSE'),
(223, 'EBA', 'Eduardo B', 'SEG', 'eduardo.bustos@i-condor.com', 'FALSE'),
(224, 'JANL', 'Abihud N', 'SEG', 'abihud.nava.condor@gmail.com', 'FALSE'),
(225, 'NYRV', 'Nancy R', 'SEG', 'nancy.reyes.condor@gmail.com', 'FALSE'),
(226, 'VDMA', 'Daniel M', 'SEG', 'daniel.martinez@i-condor.com', 'FALSE'),
(227, 'DXCP', 'Dante C', 'SEG', 'dante.calderon.condor@gmail.com', 'FALSE'),
(228, 'RVH', 'Raul V', 'SEG', 'raul.valencia.condor@gmail.com', 'FALSE'),
(229, 'JRC', 'Jessica R', 'SEG', 'jessica.rodriguez.condor@gmail.com', 'FALSE'),
(230, 'KPV', 'Karen P', 'SEG', 'karen.perez.condor@gmail.com', 'FALSE'),
(231, 'GEVJ', 'Gustavo E', 'SEG', 'gustavo.vargas.condor@gmail.com', 'FALSE'),
(232, 'KJSE', 'Kevin S', 'SEG', 'kevin.santiago.condor@gmail.com', 'FALSE'),
(233, 'HGCZ', 'Hector G', 'SEG', 'hector.cruz.condor@gmail.com', 'FALSE'),
(234, 'YEE', 'Yurguen E', 'SEG', 'yurguen.elizalde.condor@gmail.com', 'FALSE'),
(235, 'UMNCH', 'Ulises C', 'SEG', 'ulises.chepillo.condor@gmail.com', 'FALSE'),
(236, 'CORL', 'Osmar R L', 'SEG', 'osmar.rosas.condor@gmail.com', 'FALSE'),
(237, 'MAMC', 'Misael A M', 'SEG', 'misael.maldonado.condor@gmail.com', 'FALSE'),
(238, 'ISM', 'Ivan S', 'SEG', 'ivan.serrano.condor@gmail.com', 'FALSE'),
(239, 'JARR', 'Jose Ru R', 'Ser.Esp.', 'Jose.Rubio@i-condor.com', 'FALSE'),
(240, 'PJAB', 'Jesus Ar', 'Ser.Esp.', 'Jesus.Arias@i-condor.com', 'FALSE'),
(241, 'ARS2', 'Araceli R', 'Ser.Esp.', 'araceli.rivera@i-condor.com', 'FALSE'),
(242, 'JEE', 'Jose E', 'Ser.Esp.', 'jose.escobar.condor@gmail.com', 'FALSE'),
(243, 'MCTF', 'Cristina T', 'SINESIS', 'cristina.toledo@i-condor.com', 'FALSE'),
(244, 'MEEM', 'Eugenia E', 'SINESIS', 'nulo', 'FALSE'),
(245, 'YMR', 'Yolanda M', 'SINESIS', 'yolanda.morelos.sinesis@gmail.com', 'FALSE'),
(246, 'AGPF', 'Gerardo P', 'SINESIS', 'nulo', 'FALSE'),
(247, 'MMM', 'Maribel M', 'SINESIS', 'maribel.martinez.condor@gmail.com', 'FALSE'),
(248, 'PGHO', 'Gustavo H', 'SINESIS', 'nulo', 'FALSE'),
(249, 'OCO', 'Ofelia C', 'SINESIS', 'ofelia.camarillo.condor@gmail.com', 'FALSE'),
(250, 'NAYM', 'Natalia Y', 'SINESIS', 'natalia.yama.sinesis@gmail.com', 'FALSE'),
(251, 'EDG', 'Edgar D', 'SINESIS', 'edgar.delgado.condor@gmail.com', 'FALSE'),
(252, 'WMTF', 'Marlene T', 'SINESIS', 'Empowering@i-condor.com', 'FALSE'),
(253, 'BRG', 'Berenice R', 'SINESIS', 'berenice.rojo.condor@gmail.com', 'FALSE'),
(254, 'LLL', 'Lizleth L', 'SPACE', 'liz.lopez@space-mexico.com', 'FALSE'),
(255, 'ASLL', 'Said L', 'SPACE', 'said.lopez@i-condor.com', 'FALSE'),
(256, 'IGB2', 'Irving G', 'SPACE', 'irving.garcia@space-mexico.com', 'FALSE'),
(257, 'JARB', 'Juan R', 'SPACE', 'juan.ruiz@i-condor.com', 'FALSE'),
(258, 'AMERB', 'Auria R', 'SPACE', 'auria.ruiz@space-mexico.com', 'FALSE'),
(259, 'ESML', 'Emilio M', 'SPACE', 'emilio.martinez.condor@gmail.com', 'FALSE'),
(260, 'RRL', 'Rafael R', 'SPACE', 'rafael.ramirez.condor@gmail.com', 'FALSE'),
(261, 'FEPC', 'Eduardo P C', 'SPACE', 'felix.paz.condor@gmail.com', 'FALSE'),
(262, 'JRQ', 'Jonathan R', 'SPACE', 'jonathan.renteria.condor@gmail.com', 'FALSE'),
(263, 'EAV', 'Esau A', 'SPACE', 'esau.anselmo@i-condor.com', 'FALSE'),
(264, 'FAS', 'Felipe A S', 'SPACE', 'felipe.antonio.condor@gmail.com', 'FALSE'),
(265, 'AAN', 'Adan A', 'SPACE', 'adan.avila.condor@gmail.com', 'FALSE'),
(266, 'UEV', 'Ulises E', 'SPACE', 'ulises.espiridion.condor@gmail.com', 'FALSE'),
(267, 'OJMM', 'Octavio M', 'SPACE', 'octavio.moreno.condor@gmail.com', 'FALSE'),
(268, 'JCRF', 'Julio C R', 'SPACE', 'julio.rendon.condor@gmail.com', 'FALSE'),
(269, 'ATP', 'Adolfo T P', 'SPACE', 'adolfo.tinoco.condor@gmail.com', 'FALSE'),
(270, 'MARC', 'Marco R', 'SPACE', 'marco.romero.condor@gmail.com', 'FALSE'),
(271, 'HGNG', 'German N', 'SPACE', 'german.nunez.condor@gmail.com', 'FALSE'),
(272, 'DRGR', 'Dilan R', 'SPACE', 'dilan.gomora.condor@gmail.com', 'FALSE'),
(273, 'BRRS', 'Brando R', 'SPACE', 'brando.rubio.condor@gmail.com', 'FALSE'),
(274, 'UPM', 'Uzziel P', 'SPACE', 'uzziel.perez.condor@gmail.com', 'FALSE'),
(275, 'RCTL', 'Carlos T', 'SPACE', 'carlos.tapia.condor@gmail.com', 'FALSE'),
(276, 'AASE', 'Adriel S', 'VENTAS', 'Adriel.Salinas@i-condor.com', 'FALSE'),
(277, 'JLL', 'Jorge L', 'VENTAS', 'Jorge.Lemus@i-condor.com', 'FALSE'),
(278, 'MVR', 'Miriam V', 'VENTAS', 'Miriam.Vazquez@i-condor.com', 'FALSE'),
(279, 'FGP', 'Fernando G', 'VENTAS', 'Fernando.Gonzalez@i-condor.com', 'FALSE'),
(280, 'EAB', 'Ezequiel A', 'VENTAS', 'Ezequiel.Arias@i-condor.com', 'FALSE'),
(281, 'FMG', 'Francisco Mi G', 'VENTAS', 'Francisco.Mina@i-condor.com', 'FALSE'),
(282, 'KCL', 'Karina C', 'VENTAS', 'Karina.Comparan@i-condor.com', 'FALSE'),
(283, 'MRH', 'Manuela R', 'VENTAS', 'Manuela.Rosales@i-condor.com', 'FALSE'),
(284, 'CGP', 'Carlos Ga', 'VENTAS', 'Carlos.Garcia@i-condor.com', 'FALSE'),
(285, 'RPR', 'Raul P', 'VENTAS', 'raul.padilla@i-condor.com', 'FALSE'),
(286, 'MAFV', 'Miguel F', 'VENTAS', 'miguel.figueroa@i-condor.com', 'FALSE'),
(287, 'CLCM', 'Liliana C', 'VENTAS', 'liliana.correa@i-condor.com', 'FALSE'),
(288, 'FPM', 'Fabiola P', 'VENTAS', 'fabiola.pineda@i-condor.com', 'FALSE'),
(289, 'EIRB', 'Issac R', 'VENTAS', 'issac.rojo@i-condor.com', 'FALSE'),
(290, 'MBGZ', 'Martin G', 'VENTAS', 'Martin.Guzman@i-condor.com', 'FALSE'),
(291, 'JAPM', 'Antonio P', 'VENTAS', 'Antonio.Pena@i-condor.com', 'FALSE'),
(292, 'GGA', 'Gerardo G', 'VENTAS', 'gerardo.ayala.condor@gmail.com', 'FALSE'),
(293, 'IYMF', 'Itzuri M', 'VENTAS', 'itzuri.morales@i-condor.com', 'FALSE'),
(294, 'DMRM', 'Daniela M', 'VENTAS', 'daniela.martinez@i-condor.com', 'FALSE'),
(295, 'KOD', 'Kenneth O', 'VENTAS', 'kenneth.ocampo@i-condor.com', 'FALSE'),
(296, 'NVG', 'Nallely V', 'VENTAS', 'nallely.vallejo@i-condor.com', 'FALSE'),
(297, 'JJAL', 'Juan  J A', 'VENTAS', 'juan.anteo@i-condor.com', 'FALSE'),
(298, 'JASG', 'Alfredo S', 'VENTAS', 'alfredo.salas@i-condor.com', 'FALSE'),
(299, 'ECS', 'Erick C', 'VENTAS', 'erick.calles@i-condor.com', 'FALSE'),
(300, 'JAMT', 'Alejandro Me', 'VENTAS', 'alejandro.medina@i-condor.com', 'FALSE'),
(301, 'MGPM2', 'Melissa P', 'VENTAS', 'melissa.madrid@i-condor.com', 'FALSE'),
(302, 'CRM', 'Cristina R', 'VENTAS', 'cristina.rubio@i-condor.com', 'FALSE'),
(303, 'UMN', 'Ulixes M N', 'VENTAS', 'ulixes.miranda@i-condor.com', 'FALSE'),
(304, 'LGM', 'Lizbeth G', 'VENTAS', 'lizbeth.garcia.condor@gmail.com', 'FALSE'),
(305, 'YPG', 'Yared P', 'VENTAS', 'yared.perez.condor@gmail.com', 'FALSE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `ID` int(11) NOT NULL,
  `IDUser` int(11) NOT NULL,
  `IDSensor` int(11) NOT NULL,
  `Fecha_hora` timestamp NOT NULL DEFAULT current_timestamp(),
  `Fecha_Hora_Salida` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`ID`, `IDUser`, `IDSensor`, `Fecha_hora`, `Fecha_Hora_Salida`) VALUES
(311, 4, 107, '2021-04-05 15:40:44', '0000-00-00 00:00:00'),
(312, 3, 107, '2021-04-05 15:46:01', '0000-00-00 00:00:00'),
(313, 4, 107, '2021-04-05 15:46:08', '0000-00-00 00:00:00'),
(314, 2, 107, '2021-04-05 15:46:13', '0000-00-00 00:00:00'),
(315, 1, 107, '2021-04-05 15:46:18', '0000-00-00 00:00:00'),
(316, 5, 107, '2021-04-05 15:46:28', '0000-00-00 00:00:00'),
(317, 4, 107, '2021-04-05 16:09:41', '0000-00-00 00:00:00'),
(318, 2, 107, '2021-04-05 16:09:45', '0000-00-00 00:00:00'),
(319, 2, 107, '2021-04-05 16:09:50', '0000-00-00 00:00:00'),
(320, 4, 107, '2021-04-05 16:09:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensores`
--

CREATE TABLE `sensores` (
  `ID` int(11) NOT NULL,
  `Lugar` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sensores`
--

INSERT INTO `sensores` (`ID`, `Lugar`) VALUES
(107, 'SINESIS'),
(121, 'Casa'),
(141, 'CONDOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `Siglas` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Area` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nombre`, `Siglas`, `Correo`, `Area`) VALUES
(1, 'Lizbeth G', 'LGM', 'lizbeth.garcia.condor@gmail.com', 'VENTAS'),
(2, 'Kenneth O', 'KOD', 'kenneth.ocampo@i-condor.com', 'VENTAS'),
(3, 'Jonathan R', 'JRQ', 'jonathan.renteria.condor@gmail.com', 'SPACE'),
(4, 'Rafael Ra', 'RRL', 'rafael.ramirez.condor@gmail.com', 'SPACE'),
(5, 'Jorge L', 'JLL', 'Jorge.Lemus@i-condor.com', 'VENTAS');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consultores`
--
ALTER TABLE `consultores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDSensor` (`IDSensor`),
  ADD KEY `IDUser` (`IDUser`);

--
-- Indices de la tabla `sensores`
--
ALTER TABLE `sensores`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consultores`
--
ALTER TABLE `consultores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7534;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `registros_ibfk_2` FOREIGN KEY (`IDSensor`) REFERENCES `sensores` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `registros_ibfk_3` FOREIGN KEY (`IDUser`) REFERENCES `usuarios` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
