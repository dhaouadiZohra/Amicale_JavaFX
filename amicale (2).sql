-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 07 Mai 2017 à 17:49
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `amicale`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE `abonnement` (
  `ABN_ID` int(11) NOT NULL,
  `ABN_LIEN` varchar(255) DEFAULT NULL,
  `ABN_ID_AGENCE` int(11) DEFAULT NULL,
  `ABN_MBR_ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `ACT_ID` int(11) NOT NULL,
  `ACT_ADM_ID` int(11) DEFAULT '1',
  `ACT_AMCL_ID` int(11) DEFAULT NULL,
  `ACT_INTITULE` varchar(255) NOT NULL,
  `ACT_LIEU` varchar(20) DEFAULT NULL,
  `ACT_DESCRIPTION` text,
  `PRIX` float DEFAULT NULL,
  `ACT_DATE_DEB` datetime DEFAULT NULL,
  `ACT_DATE_FIN` datetime DEFAULT NULL,
  `TYPE` varchar(7) DEFAULT NULL,
  `NBR_PARTICIPANT` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `activite`
--

INSERT INTO `activite` (`ACT_ID`, `ACT_ADM_ID`, `ACT_AMCL_ID`, `ACT_INTITULE`, `ACT_LIEU`, `ACT_DESCRIPTION`, `PRIX`, `ACT_DATE_DEB`, `ACT_DATE_FIN`, `TYPE`, `NBR_PARTICIPANT`) VALUES
(4, 1, NULL, 'joddq', NULL, 'cojpoq', 220, NULL, NULL, NULL, NULL),
(7, 1, NULL, 'esprit', NULL, 'iiiqcc', 1589, NULL, NULL, NULL, NULL),
(5, 1, NULL, 'zhra', NULL, 'kkjj', 0, NULL, NULL, NULL, NULL),
(92, 1, NULL, 'INSAT', NULL, 'iiod', 0, NULL, NULL, NULL, NULL),
(18, 1, NULL, 'eeeee', 'eeee', 'eeeee', 222, NULL, NULL, 'eeee', NULL),
(19, 1, NULL, 'eeeee', 'eeee', 'eeeee', 222, NULL, NULL, 'eeee', NULL),
(20, 1, NULL, 'eeeee', 'eeee', 'eeeee', 222, NULL, NULL, 'eeee', NULL),
(21, 1, NULL, 'e', 'e', 'e', 2, NULL, NULL, 'e', NULL),
(22, 1, NULL, 'e', 'e', 'e', 2, NULL, NULL, 'e', NULL),
(23, 1, NULL, 'e', 'e', 'e', 2, NULL, NULL, 'e', NULL),
(24, 1, NULL, 'e', 'e', 'e', 2, NULL, NULL, 'e', NULL),
(25, 1, NULL, 'e', 'e', 'e', 2, NULL, NULL, 'e', NULL),
(26, 1, NULL, 'e', 'e', 'e', 2, NULL, NULL, 'e', NULL),
(27, 1, NULL, 'e', 'e', 'e', 2, NULL, NULL, 'e', NULL),
(28, 1, NULL, 'e', 'e', 'e', 2, NULL, NULL, 'e', NULL),
(29, 1, NULL, 'e', 'e', 'e', 2, NULL, NULL, 'e', NULL),
(30, 1, NULL, 'e', 'e', 'e', 2, NULL, NULL, 'e', NULL),
(31, 1, NULL, 'eee', 'eeee', 'eeee', 11111, NULL, NULL, 'eee', NULL),
(32, 1, NULL, 'e', 'f', 'g', 1, NULL, NULL, 'hjhg', NULL),
(33, 1, NULL, 'e', 'f', 'g', 144444, NULL, NULL, 'hjhg', NULL),
(34, 1, NULL, 'e', 'f', 'g', 144444, NULL, NULL, 'hjhg', NULL),
(35, 1, NULL, 'e', 'f', 'g', 144444, NULL, NULL, 'hjhg', NULL),
(36, 1, NULL, 'trer', 'hgfc', 'jryf', 54, NULL, NULL, 'gfd', NULL),
(37, 1, NULL, 'trer', 'hgfc', 'jryf', 54, NULL, NULL, 'gfd', NULL),
(38, 1, NULL, 'trer', 'hgfc', 'jryf', 54, NULL, NULL, 'gfd', NULL),
(39, 1, NULL, 'trer', 'hgfc', 'jryf', 54, NULL, NULL, 'gfd', NULL),
(40, 1, NULL, 'kuyg', 'liykhj,b', 'kiyhjb', 12.3, NULL, NULL, 'jfghhhg', NULL),
(41, 1, NULL, 'kuyg', 'liykhjb', 'kiyhjb', 12.3, NULL, NULL, 'jfghhhg', NULL),
(42, 1, NULL, 'kuyg', 'liykhjb', 'kiyhjb', 12.3, NULL, NULL, 'jfghhhg', NULL),
(43, 1, NULL, 'kuyg', 'liykhjb', 'kiyhjb', 12.3, NULL, NULL, 'jfghhhg', NULL),
(44, 1, NULL, 'kuyg', 'liykhjb', 'kiyhjb', 12.3, NULL, NULL, 'jfghhhg', NULL),
(45, 1, NULL, 'kuyg', 'liykhjb', 'kiyhjb', 12.3, NULL, NULL, 'jfghhhg', NULL),
(46, 1, NULL, 'kuyg', 'liykhjb', 'kiyhjb', 12.3, NULL, NULL, 'jfghhhg', NULL),
(47, 1, NULL, 'kuyg', 'liykhjb', 'kiyhjb', 12.3, NULL, NULL, 'jfghhhg', NULL),
(48, 1, NULL, 'kuyg', 'liykhjb', 'kiyhjb', 12.3, NULL, NULL, 'jfghhhg', NULL),
(49, 1, NULL, 'esprit', 'hkjdx', 'jhjh', 12.1, NULL, NULL, 'lk', NULL),
(50, 1, NULL, 'jd', 'djs', 'njjdz', 12, NULL, NULL, 'hh', NULL),
(51, 1, NULL, 'jd', 'djs', 'njjdz', 12, NULL, NULL, 'hh', NULL),
(52, 1, NULL, 'jd', 'djs', 'njjdz', 12, NULL, NULL, 'hh', NULL),
(53, 1, NULL, 'esprit', 'tunis', 'AjoutTest', 120, NULL, NULL, 'loisirs', NULL),
(54, 1, NULL, 'esprit', 'tunis', 'ziucz', 120, NULL, NULL, 'loi', NULL),
(55, 1, NULL, 'uuukjd', 'dzuh', 'zuhcz', 120, NULL, NULL, 'czih', NULL),
(56, 1, NULL, 'hfeih', 'hi', 'h	hi	i				i	hi	hi	h	ih	', 120, NULL, NULL, 'hih', NULL),
(57, 1, NULL, 'uhi', 'ijoij', 'ioji', 120, NULL, NULL, 'oiji', NULL),
(58, 1, NULL, 'jkj', 'kkjnk', 'nkl', 120, NULL, NULL, 'kjk', NULL),
(59, 1, NULL, 'pijpoea', 'akkjla', 'aizjoza', 120, NULL, NULL, 'azpoo', NULL),
(60, 1, NULL, 'yug', 'uhiu', 'uihui', 120, NULL, NULL, 'uç', NULL),
(61, 1, NULL, '6', 'iie', 'ekkjke', 315, NULL, NULL, 'ekf', NULL),
(62, 1, NULL, '6', 'iie', 'ekkjke', 315, NULL, NULL, 'ekf', NULL),
(63, 1, NULL, 'khkj', 'iie', 'ekkjke', 315, NULL, NULL, 'ekf', NULL),
(64, 1, NULL, 'khkj', 'iie', 'ekkjke', 315, NULL, NULL, 'ekf', NULL),
(65, 1, NULL, 'khkj', 'iie', 'ekkjke', 315, NULL, NULL, 'ekf', NULL),
(66, 1, NULL, 'khkj', 'ikjnjk', 'ekkjke', 315, NULL, NULL, 'ekf', NULL),
(67, 1, NULL, 'khkj', 'ikjnjk', 'ekkjke', 315, NULL, NULL, 'ekf', NULL),
(68, 1, NULL, 'khkj', 'ikjnjk', 'ekkjke', 315, NULL, NULL, 'ekf', NULL),
(71, 1, NULL, 'hghn', 'hg', 'hng	nhg		', 54, NULL, NULL, 'jjhjh', NULL),
(76, 1, NULL, 'ertyuiop', 'rtyuio', 'tyuio', 120, NULL, NULL, 'ae', NULL),
(77, 1, NULL, 'ertyuiop', 'rtyuio', 'tyuio', 120, NULL, NULL, 'ae', NULL),
(78, 1, NULL, 'esprit', 'oi', 'hlj', 0, '2017-02-20 00:00:00', '2017-02-22 00:00:00', 'lihh', NULL),
(79, 1, NULL, 'azlka', 'azkknkl', 'azkkl', 130, NULL, NULL, 'zakl', NULL),
(80, 1, NULL, 'jnj', 'jnk', 'knl', 120, NULL, NULL, 'kl', NULL),
(81, 1, NULL, 'jnj', 'jnk', 'knl', 120, NULL, NULL, 'kl', NULL),
(82, 1, NULL, 'jbj', 'jknjk', 'jbjk', 120, NULL, NULL, 'kknl', NULL),
(83, 1, NULL, 'hbk', 'knk', 'jkbj', 120, NULL, NULL, 'iikjni', NULL),
(84, 1, NULL, 'hbk', 'knk', 'jkbj', 200, NULL, NULL, 'iikjni', NULL),
(85, 1, NULL, 'jnjj', 'jnkj', 'jkn', 20231, NULL, NULL, 'kkn', NULL),
(86, 1, NULL, 'jnjj', 'jnkj', 'jkn', 212, NULL, NULL, 'kkn', NULL),
(87, 1, NULL, 'hdfh', 'hdfdhf', 'dfuhdfuhudf', 120, NULL, NULL, 'dd', NULL),
(88, 1, NULL, 'dfjdhf', 'dfjhdf', 'dfhdjf', 1, NULL, NULL, 'jdhdg', NULL),
(89, 1, NULL, 'uiuih', 'uh', 'uhoui', 1500, NULL, NULL, 'uoi', NULL),
(90, 1, NULL, 'nlk', 'kk', 'mkm', 231, NULL, NULL, 'oojm', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE `adherent` (
  `ADR_ID` int(11) NOT NULL,
  `ADR_MBR_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `administratteur`
--

CREATE TABLE `administratteur` (
  `ADM_ID` int(11) NOT NULL,
  `ADM_MBR_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `amicale`
--

CREATE TABLE `amicale` (
  `AMCL_ID` int(11) NOT NULL,
  `AMCL_ADRESSE` varchar(255) NOT NULL,
  `AMCL_CODE_POST` varchar(255) NOT NULL,
  `AMCL_TEL` int(11) NOT NULL,
  `AMCL_SITEWEB` varchar(255) NOT NULL,
  `AMCL_PRESIDENT` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `CMTR_ID` int(11) NOT NULL,
  `CMTR_DATE` date NOT NULL,
  `CMTR_HEURE` time NOT NULL,
  `CMTR_DESCRIPTION` text NOT NULL,
  `CMTR_MBR_ID` int(11) NOT NULL,
  `CMTR_PUB_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `consulter`
--

CREATE TABLE `consulter` (
  `MBR_GLR_ID` int(11) NOT NULL,
  `GLR_MBR_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `don`
--

CREATE TABLE `don` (
  `DON_ID` int(11) NOT NULL,
  `DON_MONTANT` int(11) NOT NULL,
  `DON_RECU` int(11) NOT NULL,
  `DON_CH_ID` int(11) DEFAULT NULL,
  `DON_MABR_ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `feedback`
--

CREATE TABLE `feedback` (
  `FDB_ID` int(11) NOT NULL,
  `FDB_DESCRIPTION` text NOT NULL,
  `FDB_DATE` date NOT NULL,
  `FDB_VOTE` float NOT NULL,
  `FDB_PRT_ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `galerie`
--

CREATE TABLE `galerie` (
  `GLR_ID` int(11) NOT NULL,
  `GLR_DATE` date NOT NULL,
  `GLR_ADM_ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `MBR_ID` int(11) NOT NULL,
  `MBR_NOM` varchar(255) NOT NULL,
  `MBR_PRENOM` varchar(255) NOT NULL,
  `MBR_DATE_NAISSANCE` date NOT NULL,
  `MBR_PROFFESSION` varchar(255) NOT NULL,
  `MBR_ADRESSE` varchar(255) NOT NULL,
  `MBR_CIVILITE` varchar(255) NOT NULL,
  `MBR_MAIL` varchar(255) NOT NULL,
  `MBR_TEL` int(11) NOT NULL,
  `MBR_NOTIF` tinyint(1) DEFAULT '0',
  `MBR_SEXE` varchar(255) DEFAULT NULL,
  `MBR_LOGIN` varchar(255) DEFAULT NULL,
  `MBR_MPASS` varchar(255) DEFAULT NULL,
  `MBR_AMCL_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

CREATE TABLE `notification` (
  `NTF_ID` int(11) NOT NULL,
  `NTF_MESSAGE` varchar(255) NOT NULL,
  `NTF_DATE` date NOT NULL,
  `NTF_HEURE` time NOT NULL,
  `NTF_MBR_ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `OFR_ID` int(11) NOT NULL,
  `OFR_NBR_PLACES` int(11) NOT NULL,
  `OFR_DATE_DEB` date NOT NULL,
  `OFR_DATE_FIN` date NOT NULL,
  `OFR_DESCRIPTION` text,
  `OFR_AGENCE` varchar(50) DEFAULT NULL,
  `OFR_RES_ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `participation`
--

CREATE TABLE `participation` (
  `PRT_ID` int(11) NOT NULL,
  `PRT_MBR_ID` int(11) NOT NULL,
  `PRT_ACT_ID` int(11) NOT NULL,
  `PRT_HEURE` time NOT NULL,
  `PRT_DESCRIPTION` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE `photo` (
  `PHT_ID` int(11) NOT NULL,
  `PHT_DATE` date NOT NULL,
  `PHT_URL` varchar(100) NOT NULL,
  `PHT_GLR_ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `publication`
--

CREATE TABLE `publication` (
  `PUB_ID` int(11) NOT NULL,
  `PUB_TITRE` varchar(50) NOT NULL,
  `PUB_OBJET` varchar(100) NOT NULL,
  `PUB_DATE` date DEFAULT NULL,
  `PUB_ETAT` varchar(50) NOT NULL,
  `PUB_DESCRIPTION` text,
  `PUB_SEC_ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `recevoir`
--

CREATE TABLE `recevoir` (
  `MBR_NTF_ID` int(11) NOT NULL,
  `NTF_MBR_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `RES_ID` int(11) NOT NULL,
  `RES_INTITULE` varchar(255) NOT NULL,
  `RES_LIEU` date NOT NULL,
  `RES_DESCRIPTION` text NOT NULL,
  `RES_SUP_MULTIMEDIA` varchar(255) NOT NULL,
  `RES_DATE_DEB` date NOT NULL,
  `RES_DATE_FIN` date NOT NULL,
  `RES_HEURE_DEB` time NOT NULL,
  `RES_HEURE_FIN` time NOT NULL,
  `RES_NBR_PERSONNES` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reserver`
--

CREATE TABLE `reserver` (
  `MBR_RES_ID` int(11) NOT NULL,
  `RES_MBR_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `section`
--

CREATE TABLE `section` (
  `SEC_ID` int(11) NOT NULL,
  `SEC_NOM` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`ABN_ID`),
  ADD KEY `FK_ABN_MBR_ID` (`ABN_MBR_ID`);

--
-- Index pour la table `activite`
--
ALTER TABLE `activite`
  ADD PRIMARY KEY (`ACT_ID`),
  ADD KEY `FK_ACT_AMCL_ID` (`ACT_AMCL_ID`),
  ADD KEY `FK_ACT_ADM_ID` (`ACT_ADM_ID`);

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`ADR_ID`,`ADR_MBR_ID`),
  ADD KEY `FK_ADR_MBR_ID` (`ADR_MBR_ID`);

--
-- Index pour la table `administratteur`
--
ALTER TABLE `administratteur`
  ADD PRIMARY KEY (`ADM_ID`,`ADM_MBR_ID`),
  ADD KEY `FK_ADM_MBR_ID` (`ADM_MBR_ID`);

--
-- Index pour la table `amicale`
--
ALTER TABLE `amicale`
  ADD PRIMARY KEY (`AMCL_ID`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`CMTR_ID`,`CMTR_MBR_ID`,`CMTR_PUB_ID`),
  ADD KEY `FK_CMTR_MBR_ID` (`CMTR_MBR_ID`),
  ADD KEY `FK_CMTR_PUB_ID` (`CMTR_PUB_ID`);

--
-- Index pour la table `consulter`
--
ALTER TABLE `consulter`
  ADD PRIMARY KEY (`MBR_GLR_ID`,`GLR_MBR_ID`),
  ADD KEY `FK_GLR_MBR_ID` (`GLR_MBR_ID`);

--
-- Index pour la table `don`
--
ALTER TABLE `don`
  ADD PRIMARY KEY (`DON_ID`),
  ADD KEY `FK_DON_CH_ID` (`DON_CH_ID`),
  ADD KEY `FK_DON_MABR_ID` (`DON_MABR_ID`);

--
-- Index pour la table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FDB_ID`),
  ADD KEY `FK_FDB_PRT_ID` (`FDB_PRT_ID`);

--
-- Index pour la table `galerie`
--
ALTER TABLE `galerie`
  ADD PRIMARY KEY (`GLR_ID`),
  ADD KEY `FK_GLR_ADM_ID` (`GLR_ADM_ID`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`MBR_ID`),
  ADD KEY `FK_MBR_AMCL_ID` (`MBR_AMCL_ID`);

--
-- Index pour la table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`NTF_ID`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`OFR_ID`),
  ADD KEY `FK_OFR_RES_ID` (`OFR_RES_ID`);

--
-- Index pour la table `participation`
--
ALTER TABLE `participation`
  ADD PRIMARY KEY (`PRT_ID`,`PRT_MBR_ID`,`PRT_ACT_ID`),
  ADD KEY `FK_PRT_MBR_ID` (`PRT_MBR_ID`),
  ADD KEY `FK_PRT_ACT_ID` (`PRT_ACT_ID`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`PHT_ID`),
  ADD KEY `FK_PHT_GLR_ID` (`PHT_GLR_ID`);

--
-- Index pour la table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`PUB_ID`),
  ADD KEY `FK_PUB_SEC_ID` (`PUB_SEC_ID`);

--
-- Index pour la table `recevoir`
--
ALTER TABLE `recevoir`
  ADD PRIMARY KEY (`MBR_NTF_ID`,`NTF_MBR_ID`),
  ADD KEY `FK_NTF_MBR_ID` (`NTF_MBR_ID`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`RES_ID`);

--
-- Index pour la table `reserver`
--
ALTER TABLE `reserver`
  ADD PRIMARY KEY (`MBR_RES_ID`,`RES_MBR_ID`),
  ADD KEY `FK_RES_MBR_ID` (`RES_MBR_ID`);

--
-- Index pour la table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`SEC_ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `abonnement`
--
ALTER TABLE `abonnement`
  MODIFY `ABN_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `activite`
--
ALTER TABLE `activite`
  MODIFY `ACT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT pour la table `adherent`
--
ALTER TABLE `adherent`
  MODIFY `ADR_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `administratteur`
--
ALTER TABLE `administratteur`
  MODIFY `ADM_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `amicale`
--
ALTER TABLE `amicale`
  MODIFY `AMCL_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `CMTR_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `don`
--
ALTER TABLE `don`
  MODIFY `DON_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FDB_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `galerie`
--
ALTER TABLE `galerie`
  MODIFY `GLR_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `MBR_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `notification`
--
ALTER TABLE `notification`
  MODIFY `NTF_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `OFR_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `participation`
--
ALTER TABLE `participation`
  MODIFY `PRT_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `photo`
--
ALTER TABLE `photo`
  MODIFY `PHT_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `publication`
--
ALTER TABLE `publication`
  MODIFY `PUB_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `RES_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `section`
--
ALTER TABLE `section`
  MODIFY `SEC_ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
