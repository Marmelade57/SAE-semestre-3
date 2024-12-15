-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : devbdd.iutmetz.univ-lorraine.fr
-- Généré le : mer. 27 nov. 2024 à 16:37
-- Version du serveur : 10.3.39-MariaDB
-- Version de PHP : 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tafiroul2u_3_01`
--

-- --------------------------------------------------------

--
-- Structure de la table `ACTUALITE`
--

CREATE TABLE `ACTUALITE` (
  `id_actu` int(8) NOT NULL,
  `nom_actu` varchar(255) NOT NULL,
  `desc_actu` varchar(255) NOT NULL,
  `date_actu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `ACTUALITE`
--

INSERT INTO `ACTUALITE` (`id_actu`, `nom_actu`, `desc_actu`, `date_actu`) VALUES
(1, 'La Tablée Onirique', 'L\'article dresse une description de la Tablée Onirique, une association promouvant une ludothèque.', '2024-11-21'),
(2, 'Loups-Garou', 'Le célèbre jeu fait son entrée sur la ludothèque de la Tablée Onirique. Découvrez ce qui en découle !', '2024-11-21'),
(3, 'La grande Base de données', 'Djibril TAFIROULT s\'est occupé entièrement de la Base de données de la Ludothèque. Voici son rapport individuel !', '2024-11-21'),
(4, 'Les meilleurs jeux !', 'Voici les deux meilleurs jeux de la ludothèque.', '2024-11-27');

-- --------------------------------------------------------

--
-- Structure de la table `CONCERNE`
--

CREATE TABLE `CONCERNE` (
  `id_actu` int(8) NOT NULL,
  `id_jeu` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `CONCERNE`
--

INSERT INTO `CONCERNE` (`id_actu`, `id_jeu`) VALUES
(2, 1),
(4, 2),
(4, 17);

-- --------------------------------------------------------

--
-- Structure de la table `CONTIENT`
--

CREATE TABLE `CONTIENT` (
  `id_jeu` int(8) NOT NULL,
  `id_tag` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `CONTIENT`
--

INSERT INTO `CONTIENT` (`id_jeu`, `id_tag`) VALUES
(3, 1),
(8, 1),
(9, 1),
(12, 1),
(14, 1),
(18, 1),
(20, 1),
(1, 2),
(5, 2),
(6, 2),
(7, 2),
(11, 2),
(13, 2),
(19, 2),
(2, 3),
(4, 3),
(10, 3),
(15, 3),
(16, 3),
(17, 3),
(1, 4),
(10, 5),
(16, 5),
(20, 5),
(3, 6),
(4, 7),
(8, 7),
(11, 7),
(5, 8),
(7, 8),
(18, 8),
(6, 9),
(17, 9),
(2, 10),
(9, 11),
(12, 11),
(13, 11),
(14, 11),
(19, 11),
(15, 12),
(2, 13),
(3, 13),
(4, 13),
(5, 13),
(6, 13),
(7, 13),
(8, 13),
(9, 13),
(10, 13),
(11, 13),
(15, 13),
(16, 13),
(18, 13),
(20, 13),
(13, 14),
(17, 14),
(1, 15),
(12, 15),
(14, 15),
(19, 16),
(1, 17),
(2, 17),
(4, 17),
(6, 17),
(7, 17),
(8, 17),
(9, 17),
(10, 17),
(11, 17),
(12, 17),
(13, 17),
(14, 17),
(15, 17),
(16, 17),
(17, 17),
(18, 17),
(19, 17),
(20, 17),
(3, 18),
(5, 18),
(1, 19),
(19, 19),
(2, 20),
(3, 21),
(13, 21),
(4, 22),
(12, 22),
(6, 23),
(7, 23),
(10, 23),
(11, 23),
(15, 23),
(20, 23),
(5, 24),
(8, 24),
(18, 24),
(14, 25),
(17, 26),
(9, 27),
(16, 27),
(1, 29),
(2, 29),
(2, 30),
(10, 30),
(3, 31),
(4, 31),
(7, 31),
(9, 31),
(11, 31),
(12, 31),
(13, 31),
(14, 31),
(18, 31),
(5, 32),
(19, 32),
(6, 33),
(8, 34),
(20, 35),
(15, 36),
(2, 37),
(16, 37),
(17, 38),
(12, 39),
(13, 39),
(5, 40),
(6, 40),
(7, 40),
(10, 40),
(11, 40),
(15, 40),
(16, 40),
(17, 40),
(19, 40),
(20, 40),
(19, 41),
(1, 42),
(2, 42),
(3, 43),
(4, 44),
(8, 44),
(5, 45),
(19, 45),
(6, 46),
(20, 46),
(7, 47),
(13, 47),
(9, 48),
(14, 48),
(10, 49),
(11, 49),
(15, 49),
(15, 50),
(17, 50),
(16, 51),
(17, 51),
(18, 52),
(1, 53),
(2, 53),
(7, 53),
(9, 53),
(10, 53),
(11, 53),
(13, 53),
(14, 53),
(15, 53),
(16, 53),
(17, 53),
(18, 53),
(19, 53),
(3, 54),
(8, 54),
(4, 55),
(20, 55),
(5, 56),
(6, 56),
(12, 56),
(1, 57),
(2, 58),
(6, 58),
(3, 59),
(10, 59),
(11, 59),
(20, 59),
(4, 60),
(19, 60),
(12, 61),
(18, 61),
(7, 62),
(13, 62),
(5, 64),
(14, 65),
(15, 66),
(16, 66),
(17, 66),
(8, 67),
(9, 68),
(2, 69),
(3, 70),
(11, 70),
(18, 70),
(4, 71),
(19, 71),
(7, 72),
(15, 73),
(17, 73),
(1, 74),
(5, 74),
(8, 74),
(10, 74),
(13, 75),
(12, 76),
(14, 76),
(6, 77),
(16, 77),
(20, 77),
(9, 78);

-- --------------------------------------------------------

--
-- Structure de la table `DETIENT`
--

CREATE TABLE `DETIENT` (
  `id_role` int(8) NOT NULL,
  `id_perm` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `DETIENT`
--

INSERT INTO `DETIENT` (`id_role`, `id_perm`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(2, 3),
(2, 6);

-- --------------------------------------------------------

--
-- Structure de la table `JEU`
--

CREATE TABLE `JEU` (
  `id_jeu` int(8) NOT NULL,
  `titre_jeu` varchar(255) NOT NULL,
  `desc_jeu` text NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `lien_image` text NOT NULL,
  `lien_youtube` text NOT NULL,
  `date_ajout` date NOT NULL,
  `date_publication` date DEFAULT NULL,
  `date_derniere_modif` date NOT NULL,
  `date_archivage` date DEFAULT NULL,
  `date_suppression` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `JEU`
--

INSERT INTO `JEU` (`id_jeu`, `titre_jeu`, `desc_jeu`, `disponible`, `lien_image`, `lien_youtube`, `date_ajout`, `date_publication`, `date_derniere_modif`, `date_archivage`, `date_suppression`) VALUES
(1, 'Loups-Garous', 'Dans les contrées sauvages de l’Est, le hameau paisible de Thiercelieux est désormais la cible des loups-garous. Face à cette menace, les villageois ont pris la décision de s’unir et de riposter. Notre association, s’inspirant directement du jeu « Les Loups-garous de Thiercelieux », organise des parties exceptionnelles animées par des maîtres du jeu expérimentés, et agrémentées d’une multitude d’effets spéciaux pour renforcer l’immersion. « Les Loups-garous de Thiercelieux » est notre événement vedette, se distinguant par son riche arsenal d’effets techniques et de décors.', 1, 'https://media.discordapp.net/attachments/797545468900278292/1306928760624255016/gu238003_6.png?ex=673873c2&is=67372242&hm=e37610a8e7d6eb6eb149174322d2abae960bab1161455da57ef0f2e734391838&=&format=webp&quality=lossless&width=701&height=701', 'https://www.youtube.com/watch?v=9dz1wDVJIio', '2024-11-15', NULL, '2024-11-15', NULL, NULL),
(2, 'Donjons et Dragons', 'Dans Dungeons & Dragons, les joueurs forment un groupe d’aventuriers qui explorent ensemble des mondes fantastiques où ils mènent des quêtes épiques en accumulant des niveaux d’expérience. Le maître du donjon (on dit aussi MD) est à la fois l’arbitre du jeu et le conteur du récit. Il n’y a ni perdants ni gagnants à D&D, du moins pas au sens traditionnel du terme.\r\nD&D reste avant tout un jeu de narration et de création de conte. Les dés ne sont là que pour vous assister. C’est vous qui décidez de tout, de votre apparence à vos actes, en passant par le déroulement de l’histoire.\r\nLa créativité collective de vos parties de D&D fonde les histoires dont vous vous remémorerez encore et encore, des récits épiques aux anecdotes absurdes dont vous rirez des années plus tard.', 1, 'https://media.discordapp.net/attachments/797545468900278292/1306929302545104897/dungeons-and-dragons-l-aventure-commence.png?ex=67387443&is=673722c3&hm=8ec09f148a1aff09bab86f6c4030014989eedcf5861988e99851ff33da700dfa&=&format=webp&quality=lossless&width=437&height=437', 'https://www.youtube.com/watch?v=OK-LrV2eBQ8', '2024-11-15', NULL, '2024-11-15', NULL, NULL),
(3, 'Uno', 'Le jeu de société Uno contient 108 cartes. Celles-ci sont réparties en 4 familles de couleurs et se divisent en deux catégories distinctes : les cartes simples et les cartes spéciales.\r\nTout d’abord, un des joueurs distribue à chacun 7 cartes. Le reste des cartes fait office de pioche. Pour commencer, le joueur ayant distribué retourne la première carte de la pioche et le joueur situé à gauche commence la partie. Il doit recouvrir la carte de la pioche par une carte d’une même couleur, du même chiffre ou du même symbole. Si le joueur ne peut pas jouer, il a la possibilité de poser une carte « joker » ou « +4 ». Dans le cas où le joueur ne possèderait aucune de ces cartes, il doit en piocher une. Si cette carte peut être jouée, il peut directement la poser, sinon il devra la conserver dans son jeu.\r\nLorsque qu’un joueur n’a plus qu’une carte en sa possession, il doit crier « Uno » pour avertir tous les autres joueurs. S’il oublie de le faire et qu’un joueur s’en aperçoit en criant « contre Uno ! », il devra piocher 2 cartes en pénalité.\r\nLe premier des joueurs à s’être débarrassé de toutes ses cartes gagne.', 0, 'https://media.discordapp.net/attachments/797545468900278292/1306930695687372800/815PPCJy-zL.png?ex=6738758f&is=6737240f&hm=c931b1bfd103857391a40027eb1341c093b6e3de788113bbb674f049b20487ec&=&format=webp&quality=lossless&width=701&height=701', 'https://www.youtube.com/watch?v=QPqRmIEG1Qc', '2024-11-15', NULL, '2024-11-15', NULL, NULL),
(4, 'Echecs', 'Le jeu d\'échecs est un jeu de stratégie qui se joue à deux. Il est composé d\'un plateau nommé échiquier, qui porte 32 cases blanches et 32 cases noires, et de 32 pièces (16 blanches et 16 noires).\r\nSur toute la surface de la Terre, le jeu d\'échecs est joué avec les mêmes règles de déplacement des pièces.\r\nIl y a trois périodes dans une partie d\'échecs :\r\nL\'ouverture ou le début de partie. Elle se différencie d\'après les joueurs (exemples d\'ouvertures : la Française, la Sicilienne, l\'Alekhine, la Pirc, l\'Italienne...);\r\nLe milieu de jeu, où les joueurs élaborent leur stratégie ;\r\nLa finale, ou fin de jeu, où chaque joueur essaye de faire échec et mat.', 0, 'https://media.discordapp.net/attachments/797545468900278292/1306934452747898930/coffret-pliant-jeu-echec-28-cm-plateau32-pieces.png?ex=6738790f&is=6737278f&hm=0cb6ca47fccae8e5d94bd0b546c383ad9a2f65b7470263b0fd6d521148fde74b&=&format=webp&quality=lossless&width=808&height=701', 'https://www.youtube.com/watch?v=zA0aW09fxGw', '2024-11-15', NULL, '2024-11-15', NULL, NULL),
(5, 'Cluedo', 'Cluedo est un jeu de société dans lequel les joueurs doivent découvrir parmi eux qui est le meurtrier d\'un crime commis dans un manoir anglais, le Manoir Tudor.', 0, 'https://media.discordapp.net/attachments/797545468900278292/1306934705341599785/jeu-cluedo-838992_512x512.png?ex=6738794b&is=673727cb&hm=88a086b6dc6654f895e630dd761f37633c9915a4d84f4cd2a45177547dd6fd90&=&format=webp&quality=lossless&width=640&height=640', 'https://www.youtube.com/watch?v=cTbAAffIir8', '2024-11-15', NULL, '2024-11-15', NULL, NULL),
(6, 'Monopoly', 'Le but du jeu consiste à ruiner ses adversaires par des opérations immobilières. Il symbolise les aspects apparents et spectaculaires du capitalisme, les fortunes se faisant et se défaisant au fil des coups de dés.', 0, 'https://media.discordapp.net/attachments/797545468900278292/1307354458052759603/gu009594_6.png?ex=673a0038&is=6738aeb8&hm=98caa259f64d0e6c00db46327f2e194bf779d9f6374d100786bad989131b2307&=&format=webp&quality=lossless&width=701&height=701', 'https://www.youtube.com/watch?v=FT1QCoT3OaM', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(7, 'Trivial Pursuit', 'Trivial Pursuit est un jeu de société dont la progression dépend de la capacité du joueur à répondre à des questions de culture générale.', 1, 'https://media.discordapp.net/attachments/797545468900278292/1307355033733431346/trivial-pursuit-junior.png?ex=673a00c1&is=6738af41&hm=98b24b3e7e715638fab430143bd9b1867cf5bac22131015da88d16ff1757ee6c&=&format=webp&quality=lossless&width=437&height=437', 'https://www.youtube.com/watch?v=IZXVrQJJ_fQ', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(8, 'Bataille Navale', 'Pour jouer à la Bataille Navale et quelle que soit la forme de celle-ci, chacun des deux joueurs dispose d\'une grille où il positionne ses bateaux et une grille sur laquelle il va noter les repères de chaque tir touché ou dans l\'eau. Ces grilles peuvent être considérées comme des cartes maritimes permettant d\'identifier les emplacements de bateaux.\r\nLes bateaux doivent être positionnés de façon verticale ou horizontale sur une grille et jamais en diagonale. Ils doivent toujours être placés bien à l\'intérieur du plateau, ne doivent pas se toucher ni se superposer.\r\nCe jeu de société consiste à faire couler tous les bateaux de l\'adversaire. La bataille commence en plaçant tous les navires dans une grille secrète. Chacun à leur tour, les joueurs doivent trouver et couler les bateaux adverses en communiquant les coordonnées visées, composées d\'une lettre puis d\'un nombre. Il revient aux deux joueurs de décider qui va ouvrir les hostilités en premier.', 0, 'https://media.discordapp.net/attachments/797545468900278292/1307355729484578919/81M7cI6NmL.png?ex=673a0167&is=6738afe7&hm=6f2a6fe77c9d202e93276166305018d84e397f4c2db0376b979e1ca23e9aa41f&=&format=webp&quality=lossless&width=568&height=437', 'https://www.youtube.com/watch?v=VUvqjpdysCg', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(9, 'Action ou Vérité', 'Le jeu consiste à : action : une action est donnée et le joueur a obligation de l\'accomplir ; chiche : trois actions sont proposées au joueur et il doit en choisir une et l\'accomplir ; vérité : le joueur doit répondre de façon détaillée et sincère à une question posée.', 1, 'https://media.discordapp.net/attachments/797545468900278292/1307356960307417199/61dlfLpbkuL.png?ex=673a028c&is=6738b10c&hm=1672772c0cfb4e3146ec720d4b932e2fd3ea685c85fababdfd4adf900ce7747d&=&format=webp&quality=lossless&width=548&height=437', 'https://www.youtube.com/watch?v=rgTX6eBsyKc', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(10, 'Saboteur 2', 'Saboteur est un jeu de cartes semi-coopératif où les joueurs incarnent des nains qui doivent creuser une mine dans la montagne à la recherche d\'un précieux filon d\'or.\r\nMalheureusement, certains d\'entres eux sont des saboteurs qui vont tenter d\'empêcher le groupe de parvenir à son objectif. Parviendrons-nous à les identifier et les contrer ?\r\nSaboteur est semi coopératif car les joueurs mineurs doivent s\'entraider pour creuser la mine mais en fin de partie, c\'est tout de même le joueur ayant récupéré le plus d\'or dans les mines qui l\'emportera.', 1, 'https://media.discordapp.net/attachments/797545468900278292/1307358179822272553/saboteur-2-les-mineurs-contre-attaquent.png?ex=673a03af&is=6738b22f&hm=0b63ea2e55828cedd4fff7f710b68c6007e40cbb4bf165a1a046265524e00150&=&format=webp&quality=lossless&width=701&height=701', 'https://www.youtube.com/watch?v=NH-QG3qI0Nc', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(11, 'Mastermind', 'Le Mastermind ou Master Mind est un jeu de société pour deux joueurs dont le but est de trouver un code en 10 ou 12 coups.', 1, 'https://media.discordapp.net/attachments/797545468900278292/1310371444512919682/05010994012755-a1c1-s01.png?ex=6744fa01&is=6743a881&hm=cb8399c9af66fc0adf4997998cb56df376910cdb31e336c41408ec412a79deb6&=&format=webp&quality=lossless&width=437&height=437', 'https://www.youtube.com/watch?v=vJmd5MPKIQw', '2024-11-24', NULL, '2024-11-24', NULL, NULL),
(12, 'Chaises musicales', 'Ce jeu implique un groupe de participants qui marchent en cercle autour d\'un certain nombre de chaises. Une chanson ou une musique est jouée en arrière-plan. Lorsque la musique s\'arrête de jouer de manière inattendue, les participants doivent rapidement trouver une chaise libre sur laquelle s\'asseoir.', 0, 'https://media.discordapp.net/attachments/797545468900278292/1307360042256826368/les-chaises-musicales-un-jeu-de-musique-pour-les-enfants-avec-tete-a-modeler.png?ex=673a056b&is=6738b3eb&hm=bc0086423be77eab5acde914c1810f53a1cfb2437bc1cf1a263587bbc1b7d607&=&format=webp&quality=lossless&width=375&height=375', 'https://www.youtube.com/watch?v=B36KWA2wCto', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(13, 'Blind Test', 'Le blind test est un jeu musical qui consiste à écouter une partie d\'une chanson et à essayer de deviner le titre ou l\'artiste de cette chanson. Ce jeu est souvent pratiqué entre amis ou en famille et peut être joué à différents niveaux de difficulté en fonction du niveau de connaissance musicale des participants.', 1, 'https://media.discordapp.net/attachments/797545468900278292/1307361143127412776/QuTNpkDvTqIOHk2ZhVXqKdXtEYF9_JzaPLiRoaGz22wnxHbMxsuuhzwamE-P98E_21EJgK_Aigs900-c-k-c0x00ffffff-no-rj.png?ex=673a0672&is=6738b4f2&hm=97a72df1d1b2efcb313fc6db867424f7947fb63dcc0840e9a7d6ef8fc0005b2e&=&format=webp&quality=lossless&width=437&height=437', 'https://www.youtube.com/watch?v=5uA8xxD8210', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(14, 'Téléphone sans fil', 'Les joueurs forment une ligne ; le premier joueur arrive avec un message et le murmure à l\'oreille de la deuxième personne dans la ligne. Le deuxième joueur répète le message au troisième joueur, et ainsi de suite. Quand le dernier joueur est atteint, celui-ci annonce à voix haute le message qu\'il a entendu. La première personne de la liste compare ensuite le message original avec la version finale.', 1, 'https://media.discordapp.net/attachments/797545468900278292/1307361893765222410/jeu-du-telephone-arabe.png?ex=673a0725&is=6738b5a5&hm=3729ff5e642a77c1cdd065125d1e7de59c8ec4a061fd9ccf07c434d8bb3e7cf6&=&format=webp&quality=lossless&width=437&height=437', 'https://www.youtube.com/watch?v=FpCOIb8CcLY', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(15, '7 Wonders', '7 wonders vous invite à prendre la tête de l’une des sept grandes cités du monde Antique et ainsi laisser votre empreinte dans l’histoire des civilisations. Un jeu de développement de civilisation, de gestion de ressources et de cartes.', 1, 'https://media.discordapp.net/attachments/797545468900278292/1307363242028568687/7-wonders.png?ex=673a0866&is=6738b6e6&hm=3cbc392cc9732bd1a49afb66e1d97808776545b2bb891ff1217b68b8b9b21c7b&=&format=webp&quality=lossless&width=701&height=701', 'https://www.youtube.com/watch?v=sZHSylvYn0s', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(16, 'Tainted Grail : La Chute D\'Avalon', 'Tainted Grail : la chute d’Avalon est un jeu narratif et immersif. Il propose une campagne incroyable, aux multiples embranchements, selon les choix des joueurs. Son univers est sombre, servi par une identité graphique forte.', 0, 'https://media.discordapp.net/attachments/797545468900278292/1307364364143300689/tainted-grail-la-chute-d-avalon.png?ex=673a0972&is=6738b7f2&hm=17420a11f3b5376b1a0887065663afa3c5c2990e2947dbccfe550b4ac77db5fa&=&format=webp&quality=lossless&width=701&height=701', 'https://www.youtube.com/watch?v=-RVZOHrV-2g', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(17, 'Sub Terra', 'Sub Terra est un jeu collaboratif de survie horrifique pour un à six joueurs. Avec jusqu’à cinq amis, vous faites partie d’un groupe d’explorateurs de cavernes, des spéléologues qui, suite à un incident, se retrouvent piégés dans les profondeurs souterraines. Ensemble, vous devez trouver la sortie avant que vos lampes ne soient épuisées et que vous ne soyez perdus pour toujours dans les ténèbres.', 1, 'https://media.discordapp.net/attachments/797545468900278292/1307364664140763157/sub-terra.png?ex=673a09b9&is=6738b839&hm=0f6ebf70db203acb773ae5128b7474942bd6016f095bb555d628a744d91e9e64&=&format=webp&quality=lossless&width=701&height=701', 'https://www.youtube.com/watch?v=XUX_F-dLaLs', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(18, 'Devine Tête', 'Le principe est simple : chaque joueur tire une carte sans la regarder et la fixe sur son bandeau. Ensuite, il doit poser un maximum de questions aux autres joueurs pour deviner l\'illustration qui se trouve sur sa carte.', 1, 'https://media.discordapp.net/attachments/797545468900278292/1307365187623325799/50_237090_1_10_FR.png?ex=673a0a36&is=6738b8b6&hm=f50a460655fb86e704e5d621cfe4fa78aa596a4cfcf35ea89d631a08bc1a8784&=&format=webp&quality=lossless&width=315&height=437', 'https://www.youtube.com/watch?v=OmwvGQd8J74', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(19, 'Undercover', 'Pour jouer à l’Undercover sans cartes ni application, il faut un maître du jeu. Ce dernier va choisir deux mots assez proches. Le premier mot va être chuchoté à l’oreille de tous les joueurs sauf trois. Deux des trois joueurs restants auront l’autre mot et le dernier n’aura aucun mot. Ensuite, le jeu commence : chacun son tour, chaque joueur doit dire un mot qui a un lien, proche ou lointain avec le mot qu’on lui a chuchoté. Le but est de découvrir qui sont les trois Undercover et ces derniers doivent faire semblant d’avoir le même mot que les autres.', 0, 'https://media.discordapp.net/attachments/797545468900278292/1307365888927993876/rules_undercover.png?ex=673a0add&is=6738b95d&hm=8abe81bf3742f804586de8ac4b06e50c6e14c0391f3077d647c36fba3b276ff2&=&format=webp&quality=lossless&width=681&height=701', 'https://www.youtube.com/watch?v=x_l7Am7v7XM', '2024-11-16', NULL, '2024-11-16', NULL, NULL),
(20, 'La Bonne Paye', 'Le plateau de La Bonne Paye se présente sous la forme d\'un calendrier mensuel, où chaque case correspond à une journée, du 1er au 31 du mois. Une fois parvenu à la fin de celui-ci, au 31e jour, chaque joueur reçoit sa paye et doit régler les différentes factures et dépenses accumulées.', 1, 'https://media.discordapp.net/attachments/797545468900278292/1307366510293159988/image.png?ex=673a0b71&is=6738b9f1&hm=80dc38a10fd1d70b749858d53bef6b744e39fe1c07aab5a0904b6baf3c3d34c8&=&format=webp&quality=lossless&width=625&height=625', 'https://www.youtube.com/watch?v=EJLwkhaV_t0', '2024-11-16', NULL, '2024-11-16', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `PERMISSION`
--

CREATE TABLE `PERMISSION` (
  `id_perm` int(8) NOT NULL,
  `nom_perm` varchar(255) NOT NULL,
  `desc_perm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `PERMISSION`
--

INSERT INTO `PERMISSION` (`id_perm`, `nom_perm`, `desc_perm`) VALUES
(1, 'Création d\'une actualité', 'Permet à l\'utilisateur de créer une actualité.'),
(2, 'Modification d\'une actualité', 'Permet à l\'utilisateur de modifier une actualité.'),
(3, ' Lecture d\'une actualité', 'Permet à l\'utilisateur de lire une actualité.'),
(4, 'Suppression d\'une actualité', 'Permet à l\'utilisateur de supprimer une actualité.'),
(5, 'Modification de l\'application', 'Permet à l\'utilisateur de modifier l\'application.'),
(6, 'Utilisation de l\'application', 'Permet à l\'utilisateur d\'utiliser l\'application.'),
(7, 'Attribution des permissions', 'Permet à l\'utilisateur d\'attribuer des permissions à d\'autres utilisateurs.'),
(8, 'Modification de la Base de données', 'Permet à l\'utilisateur de modifier la Base de données de l\'application.'),
(9, 'Modification de l\'état des jeux', 'Permet à l\'utilisateur de modifier l\'état des jeux afin de les afficher ou non.');

-- --------------------------------------------------------

--
-- Structure de la table `ROLE`
--

CREATE TABLE `ROLE` (
  `id_role` int(8) NOT NULL,
  `nom_role` varchar(255) NOT NULL,
  `desc_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `ROLE`
--

INSERT INTO `ROLE` (`id_role`, `nom_role`, `desc_role`) VALUES
(1, 'Administrateur', 'Possède tous les droits sur l\'application.'),
(2, 'Client', 'Utilise l\'application.');

-- --------------------------------------------------------

--
-- Structure de la table `TAG`
--

CREATE TABLE `TAG` (
  `id_tag` int(8) NOT NULL,
  `nom_tag` varchar(255) NOT NULL,
  `desc_tag` text NOT NULL,
  `type_tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `TAG`
--

INSERT INTO `TAG` (`id_tag`, `nom_tag`, `desc_tag`, `type_tag`) VALUES
(1, 'Facile', 'Correspond au niveau de difficulté du jeu.', 'Difficulté'),
(2, 'Moyen', 'Correspond au niveau de difficulté du jeu.', 'Difficulté'),
(3, 'Difficile', 'Correspond au niveau de difficulté du jeu.', 'Difficulté'),
(4, '16 Joueurs', 'Nombre de joueurs maximum.', 'NbJoueursMax'),
(5, '4 Joueurs', 'Nombre de joueurs maximum.', 'NbJoueursMax'),
(6, '10 Joueurs', 'Nombre de joueurs maximum.', 'NbJoueursMax'),
(7, '2 Joueurs', 'Nombre de joueurs maximum.', 'NbJoueursMax'),
(8, '6 Joueurs', 'Nombre de joueurs maximum.', 'NbJoueursMax'),
(9, '8 Joueurs', 'Nombre de joueurs maximum.', 'NbJoueursMax'),
(10, '12 Joueurs', 'Nombre de joueurs maximum.', 'NbJoueursMax'),
(11, '20 Joueurs', 'Nombre de joueurs maximum.', 'NbJoueursMax'),
(12, '7 Joueurs', 'Nombre de joueurs maximum.', 'NbJoueursMax'),
(13, '2 Joueurs', 'Nombre de joueurs minimum.', 'NbJoueursMin'),
(14, '1 Joueur', 'Nombre de joueurs minimum.', 'NbJoueursMin'),
(15, '4 Joueurs', 'Nombre de joueurs minimum.', 'NbJoueursMin'),
(16, '3 Joueurs', 'Nombre de joueurs minimum.', 'NbJoueursMin'),
(17, 'Sans limite', 'Âge maximum autorisé (par défaut).', 'AgeMax'),
(18, '120 ans', 'Âge maximum autorisé.', 'AgeMax'),
(19, '16 ans', 'Âge minimum requis.', 'AgeMin'),
(20, '12 ans', 'Âge minimum requis.', 'AgeMin'),
(21, '7 ans', 'Âge minimum requis.', 'AgeMin'),
(22, '4 ans', 'Âge minimum requis.', 'AgeMin'),
(23, '8 ans', 'Âge minimum requis.', 'AgeMin'),
(24, '5 ans', 'Âge minimum requis.', 'AgeMin'),
(25, '3 ans', 'Âge minimum requis.', 'AgeMin'),
(26, '10 ans', 'Âge minimum requis.', 'AgeMin'),
(27, '14 ans', 'Âge minimum requis.', 'AgeMin'),
(28, '6 ans', 'Âge minimum requis.', 'AgeMin'),
(29, 'Médiéval', 'Tout ce qui est lié au Moyen-Age.', 'Univers'),
(30, 'Fantastique', 'L\'univers fantastique correspond à placer des éléments surnaturels dans un monde proche du réel.', 'Univers'),
(31, 'Classique', 'C\'est une catégorie correspondant aux jeux n\'ayant pas spécialement d\'univers lié.', 'Univers'),
(32, 'Policier', 'L\'univers Policier correspond souvent à des enquêtes à résoudre.', 'Univers'),
(33, 'Immobilier', 'Tout ce qui est lié à l\'immobilier (construction, terrains...) et le gain d\'argent.', 'Univers'),
(34, 'Bateau', 'Cet univers comprend des bateaux et est lié à l\'océan.', 'Univers'),
(35, 'Vie quotidienne', 'Le jeu essayera au maximum de se rapprocher de la réalité.', 'Univers'),
(36, 'Civilisation', 'Cet univers sort du lot puisqu\'il consiste à développer sa propre civilisation à l\'instar des autres joueurs.', 'Univers'),
(37, 'Dark Fantasy', 'Contrairement à l\'univers Fantasy simple, celui-ci possède une atmosphère beaucoup plus sombre.', 'Univers'),
(38, 'Horreur', 'Si un jeu se passe dans un univers horreur, c\'est qu\'il est fait pour mettre une certaine pression aux joueurs. Attention aux monstres !', 'Univers'),
(39, 'Jeu musical', 'Le jeu possède comme sujet principal le domaine musical.', 'Type'),
(40, 'Jeu de société', 'C\'est un des types de jeu les plus répandus, on utilise souvent une boite avec.', 'Type'),
(41, 'Jeu d\'ambiance', 'Le jeu se concentre surtout sur l\'ambiance qu\'il procure aux joueurs.', 'Type'),
(42, 'Jeu de rôle', 'Un jeu de rôle est une technique ou activité, par laquelle une personne interprète le rôle d\'un personnage dans un environnement.', 'Type'),
(43, 'Jeu de cartes', 'Ce type de jeu utilise principalement des cartes et tourne autour d\'elles.', 'Type'),
(44, 'Jeu de guerre', 'Le type jeu de guerre simule de réelles batailles.', 'Type'),
(45, 'Jeu d\'enquête', 'Ce type de jeu consiste à trouver le coupable de l\'enquête durant le jeu.', 'Type'),
(46, 'Jeu de parcours', 'Ce type de jeu nécessite souvent l\'utilisation d\'un dé permettant de faire avancer son personnage à travers la carte du jeu.', 'Type'),
(47, 'Jeu de culture général', 'Il faudra redoubler d\'efforts pour répondre à des questions de culture générale.', 'Type'),
(48, 'Jeu amusant', 'Le but principal de ce jeu est de s\'amuser entre amis ou en famille sans se prendre la tête.', 'Type'),
(49, 'Jeu de stratégie', 'Ce type de jeu consiste à réaliser un objectif connu et une victoire réside dans la planification et la tacticité du joueur.', 'Type'),
(50, 'Jeu de coopération', 'L\'objectif principal de ce type de jeu est de faire équipe avec les autres joueurs pour réussir un objectif final.', 'Type'),
(51, 'Jeu de survie', 'Comme dans les jeux vidéos, les jeux de survie consistent à devoir survivre aux obstacles et dangers du jeu et atteindre un objectif de temps, de lieu ou autre.', 'Type'),
(52, 'Jeu de devinettes', 'On devra répondre à des questions posées par les autres joueurs et inversement afin de deviner quelque chose.', 'Type'),
(53, 'Disponible', 'État actuel du jeu dans la ludothèque. (par défaut)', 'Etat'),
(54, 'Archivé', 'État actuel du jeu dans la ludothèque.', 'Etat'),
(55, 'En réparation', 'État actuel du jeu dans la ludothèque.', 'Etat'),
(56, 'Indisponible', 'État actuel du jeu dans la ludothèque.', 'Etat'),
(57, '3 Heures', 'Estimation de la durée maximale.', 'DuréeMax'),
(58, '5 Heures', 'Estimation de la durée maximale.', 'DuréeMax'),
(59, '30 Minutes', 'Estimation de la durée maximale.', 'DuréeMax'),
(60, '2 Heures', 'Estimation de la durée maximale.', 'DuréeMax'),
(61, '10 Minutes', 'Estimation de la durée maximale.', 'DuréeMax'),
(62, '1 Heure', 'Estimation de la durée maximale.', 'DuréeMax'),
(63, '20 Minutes', 'Estimation de la durée maximale.', 'DuréeMax'),
(64, '45 Minutes', 'Estimation de la durée maximale.', 'DuréeMax'),
(65, '5 Minutes', 'Estimation de la durée maximale.', 'DuréeMax'),
(66, '1 Heure 30 Minutes', 'Estimation de la durée maximale.', 'DuréeMax'),
(67, '15 Minutes', 'Estimation de la durée maximale.', 'DuréeMax'),
(68, 'Aucune limite', 'Estimation de la durée maximale.', 'DuréeMax'),
(69, '3 Heures', 'Estimation de la durée minimale.', 'DuréeMin'),
(70, '5 Minutes', 'Estimation de la durée minimale.', 'DuréeMin'),
(71, '1 Heure 30 Minutes', 'Estimation de la durée minimale.', 'DuréeMin'),
(72, '30 Minutes', 'Estimation de la durée minimale.', 'DuréeMin'),
(73, '45 Minutes', 'Estimation de la durée minimale.', 'DuréeMin'),
(74, '15 Minutes', 'Estimation de la durée minimale.', 'DuréeMin'),
(75, '10 Minutes', 'Estimation de la durée minimale.', 'DuréeMin'),
(76, '2 Minutes', 'Estimation de la durée minimale.', 'DuréeMin'),
(77, '1 Heure', 'Estimation de la durée minimale.', 'DuréeMin'),
(78, 'Aucune limite', 'Estimation de la durée minimale.', 'DuréeMin');

-- --------------------------------------------------------

--
-- Structure de la table `UTILISATEUR`
--

CREATE TABLE `UTILISATEUR` (
  `id_user` int(8) NOT NULL,
  `nom_user` varchar(255) NOT NULL,
  `prenom_user` varchar(255) NOT NULL,
  `id_role` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `UTILISATEUR`
--

INSERT INTO `UTILISATEUR` (`id_user`, `nom_user`, `prenom_user`, `id_role`) VALUES
(1, 'TAFIROULT', 'Djibril', 1),
(2, 'HALLER', 'Margaux', 1),
(3, 'HUMBERT', 'Gabin', 1),
(4, 'AIT BAMMOU', 'Zain', 1),
(5, 'DE ANDRADE', 'Vincent', 1),
(6, 'MENNEL', 'Timothé', 2),
(7, 'SZCZEPANSKI', 'Antoine', 2),
(8, 'BAILLY-RIOS-MARCOS', 'Ambre', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ACTUALITE`
--
ALTER TABLE `ACTUALITE`
  ADD PRIMARY KEY (`id_actu`);

--
-- Index pour la table `CONCERNE`
--
ALTER TABLE `CONCERNE`
  ADD PRIMARY KEY (`id_actu`,`id_jeu`),
  ADD KEY `id_jeu` (`id_jeu`);

--
-- Index pour la table `CONTIENT`
--
ALTER TABLE `CONTIENT`
  ADD PRIMARY KEY (`id_tag`,`id_jeu`) USING BTREE,
  ADD KEY `id_jeu` (`id_jeu`,`id_tag`);

--
-- Index pour la table `DETIENT`
--
ALTER TABLE `DETIENT`
  ADD PRIMARY KEY (`id_role`,`id_perm`),
  ADD KEY `id_perm` (`id_perm`);

--
-- Index pour la table `JEU`
--
ALTER TABLE `JEU`
  ADD PRIMARY KEY (`id_jeu`);

--
-- Index pour la table `PERMISSION`
--
ALTER TABLE `PERMISSION`
  ADD PRIMARY KEY (`id_perm`);

--
-- Index pour la table `ROLE`
--
ALTER TABLE `ROLE`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `TAG`
--
ALTER TABLE `TAG`
  ADD PRIMARY KEY (`id_tag`);

--
-- Index pour la table `UTILISATEUR`
--
ALTER TABLE `UTILISATEUR`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `CONCERNE`
--
ALTER TABLE `CONCERNE`
  ADD CONSTRAINT `CONCERNE_ibfk_1` FOREIGN KEY (`id_actu`) REFERENCES `ACTUALITE` (`id_actu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CONCERNE_ibfk_2` FOREIGN KEY (`id_jeu`) REFERENCES `JEU` (`id_jeu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `CONTIENT`
--
ALTER TABLE `CONTIENT`
  ADD CONSTRAINT `CONTIENT_ibfk_1` FOREIGN KEY (`id_jeu`) REFERENCES `JEU` (`id_jeu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CONTIENT_ibfk_2` FOREIGN KEY (`id_tag`) REFERENCES `TAG` (`id_tag`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `DETIENT`
--
ALTER TABLE `DETIENT`
  ADD CONSTRAINT `DETIENT_ibfk_1` FOREIGN KEY (`id_perm`) REFERENCES `PERMISSION` (`id_perm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `DETIENT_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `ROLE` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `UTILISATEUR`
--
ALTER TABLE `UTILISATEUR`
  ADD CONSTRAINT `UTILISATEUR_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `ROLE` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
