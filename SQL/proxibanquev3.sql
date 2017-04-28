-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 28 Avril 2017 à 14:26
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `proxibanquev3`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `type_compte` varchar(31) NOT NULL,
  `idCompte` int(11) NOT NULL,
  `dateOuverture` varchar(255) DEFAULT NULL,
  `numeroCompte` int(11) NOT NULL,
  `solde` double NOT NULL,
  `remuneration` double DEFAULT NULL,
  `decouvert` double DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `compte`
--

INSERT INTO `compte` (`type_compte`, `idCompte`, `dateOuverture`, `numeroCompte`, `solde`, `remuneration`, `decouvert`, `client_id`) VALUES
('CompteCourant', 1, '2012-12-01', 14598563, 524689.56, NULL, 1000, 3),
('CompteEpargne', 2, '2013-04-12', 85749852, 75000, 0.03, NULL, 3),
('CompteCourant', 3, '2010-05-06', 87895244, 2587.23, NULL, 1000, 4),
('CompteEpargne', 4, '2013-04-12', 98765421, 25045.23, 0.03, NULL, 5),
('CompteEpargne', 5, '2017-05-14', 48521547, 9658.23, 0.03, NULL, 6),
('CompteCourant', 6, '2016-05-23', 1254785, 568.12, NULL, 1000, 6),
('CompteCourant', 7, '2009-05-23', 1254879, 50.01, NULL, 1000, 7),
('CompteCourant', 8, '2008-08-02', 968574, 45000, NULL, 1000, 8),
('CompteEpargne', 9, '2003-07-01', 254563, 458792.25, 0.03, NULL, 8);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequences`
--

CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `hibernate_sequences`
--

INSERT INTO `hibernate_sequences` (`sequence_name`, `sequence_next_hi_value`) VALUES
('Personne', 1);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `Statut` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `codePostal` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `entreprise` bit(1) DEFAULT NULL,
  `nomEntreprise` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `conseiller_id` int(11) DEFAULT NULL,
  `gerant_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`Statut`, `id`, `adresse`, `codePostal`, `email`, `nom`, `prenom`, `telephone`, `ville`, `entreprise`, `nomEntreprise`, `login`, `pwd`, `conseiller_id`, `gerant_id`) VALUES
('CONSEILLER', 1, '24 rue du Chène', '38420', NULL, 'Robichet', 'Robert', '0478458596', 'Le Versoud', NULL, NULL, 'test1', 'test1TU]_', NULL, NULL),
('CONSEILLER', 2, '5 avenue du Chateau', '45789', NULL, 'Patoulatchi', 'Marcel', '0745859632', 'Ville sur marne', NULL, NULL, 'test2', 'test2TU]_', NULL, NULL),
('CLIENT', 3, 'route du chemin', '78852', 'john.smith@test.com', 'Smithdfsf', 'John', '014458712', 'Lille', b'1', 'GTM', NULL, NULL, 1, NULL),
('CLIENT', 4, 'chemin du pré', '38000', 'jdoe@example.fr', 'Doe', 'Jane', '0145789632', 'Grenoble', b'0', NULL, NULL, NULL, 1, NULL),
('CLIENT', 5, 'hollywood boulevard', '14587', 'fsinatra@star.com', 'Sinatra', 'Frank', '555-4548', 'Los Angeles', b'0', NULL, NULL, NULL, 1, NULL),
('CLIENT', 6, 'gabriel péri', '69100', 'fayraud@email.com', 'Ayraud', 'Florent', '98754121', 'Villeurbanne', b'1', 'Netapsys', NULL, NULL, 1, NULL),
('CLIENT', 7, 'chemin de la vie', '12000', 'wd@test.com', 'William', 'David', '01458796', 'Paris', b'0', NULL, NULL, NULL, 2, NULL),
('CLIENT', 8, 'rue alexis Perroncel', '69100', 'me@email.com', 'Espuche', 'Marine', '0606060606', 'Villeurbanne', b'1', 'Sopra', NULL, NULL, 2, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`idCompte`),
  ADD KEY `FK_jypo7b7k528n3pbpm0armju7y` (`client_id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_dorgrgheop46kc1y0o9evdfav` (`conseiller_id`),
  ADD KEY `FK_499wre0yidtjk671mwtnmqfbj` (`gerant_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `idCompte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
