-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 12 août 2021 à 15:58
-- Version du serveur :  8.0.26-0ubuntu0.20.04.2
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dbapi`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'films'),
(2, 'peoples'),
(3, 'planetes'),
(4, 'species'),
(5, 'starships'),
(6, 'vehicles');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_nickname` varchar(15) NOT NULL,
  `comment_content` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `comment_creation` datetime DEFAULT NULL,
  `comment_update` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `people_id` int DEFAULT NULL,
  `films_id` int DEFAULT NULL,
  `planetes_id` int DEFAULT NULL,
  `species_id` int DEFAULT NULL,
  `starships_id` int DEFAULT NULL,
  `vehicles_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `user_nickname`, `comment_content`, `comment_creation`, `comment_update`, `created_at`, `people_id`, `films_id`, `planetes_id`, `species_id`, `starships_id`, `vehicles_id`) VALUES
(1, 1, '', 'test avec tanguy', NULL, NULL, '2021-08-11 11:59:42', 1, NULL, NULL, NULL, NULL, NULL),
(30, 1, '', 'lkdnlksdnfln', NULL, NULL, '2021-08-12 09:45:07', NULL, 5, NULL, NULL, NULL, NULL),
(29, 1, '', 'lsdnlksdn', NULL, NULL, '2021-08-12 09:44:56', NULL, 5, NULL, NULL, NULL, NULL),
(28, 1, '', 'lkjlkjlkjlkj', NULL, NULL, '2021-08-12 06:38:29', NULL, 5, NULL, NULL, NULL, NULL),
(7, 1, '', 'test avec guillaume', NULL, NULL, '2021-08-11 19:46:49', 1, NULL, NULL, NULL, NULL, NULL),
(27, 1, '', 'test commentaire', NULL, NULL, '2021-08-12 06:26:51', NULL, 5, NULL, NULL, NULL, NULL),
(26, 1, '', 'test avec guillaume', NULL, NULL, '2021-08-12 06:16:00', NULL, 1, NULL, NULL, NULL, NULL),
(25, 1, '', NULL, NULL, NULL, '2021-08-12 06:10:05', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 1, '', NULL, NULL, NULL, '2021-08-12 05:51:49', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1, '', NULL, NULL, NULL, '2021-08-12 05:56:31', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 1, '', NULL, NULL, NULL, '2021-08-12 05:58:50', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 1, '', NULL, NULL, NULL, '2021-08-12 06:07:25', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, '', NULL, NULL, NULL, '2021-08-12 05:50:10', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 1, '', 'lkjdflksdjflksj', NULL, NULL, '2021-08-12 10:28:13', NULL, 1, NULL, NULL, NULL, NULL),
(32, 1, '', 'alooooo', NULL, NULL, '2021-08-12 11:14:22', NULL, 8, NULL, NULL, NULL, NULL),
(33, 1, 'test', 'zrjfksdjlksjlfkj', NULL, NULL, '2021-08-12 11:41:26', NULL, 5, NULL, NULL, NULL, NULL),
(34, 16, 'cookie', 'aloalaoalaoa', NULL, NULL, '2021-08-12 11:54:07', NULL, 5, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` int NOT NULL,
  `title` varchar(96) DEFAULT NULL,
  `opening_crawl` varchar(1024) DEFAULT NULL,
  `episode_id` varchar(32) DEFAULT NULL,
  `director` varchar(64) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `picture_url` varchar(96) DEFAULT NULL,
  `categoty_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `title`, `opening_crawl`, `episode_id`, `director`, `release_date`, `picture_url`, `categoty_id`) VALUES
(5, 'The Empire Strikes Back', 'It is a dark time for the \\r\\n Rebellion. Although the Death \\r\\n Star has been destroyed, \\r\\n Imperial troops have driven the \\r\\n Rebel forces from their hidden \\r\\n base and pursued them across \\r\\n the galaxy. \\r\\n\\r\\n Evading the dreaded Imperial \\r\\n Starfleet, a group of freedom \\r\\n fighters led by Luke Skywalker \\r\\n has established a new secret \\r\\n base on the remote ice world \\r\\n of Hoth. \\r\\n\\r\\n The evil lord Darth Vader, \\r\\n obsessed with finding young \\r\\n Skywalker, has dispatched \\r\\n thousands of remote probes into \\r\\n the far reaches of space...', 'Episode V', 'Irvin Kershner', '1980-05-21', 'film_5.png', 1),
(4, 'A New Hope', 'It is a period of civil war. \\r\\n Rebel spaceships, striking \\r\\n from a hidden base, have won \\r\\n their first victory against \\r\\n the evil Galactic Empire. \\r\\n\\r\\n During the battle, Rebel \\r\\n spies managed to steal secret \\r\\n plans to the Empire\'s \\r\\n ultimate weapon, the DEATH \\r\\n STAR, an armored space \\r\\n station with enough power \\r\\n to destroy an entire planet. \\r\\n\\r\\n Pursued by the Empire\'s \\r\\n sinister agents, Princess \\r\\n Leia races home aboard her \\r\\n starship, custodian of the \\r\\n stolen plans that can save her \\r\\n people and restore \\r\\n freedom to the galaxy...', 'Episode IV', 'George Lucas', '1977-05-25', 'film_4.png', 1),
(3, 'Revenge of the Sith', 'The Republic is crumbling \\r\\n under attacks by the ruthless \\r\\n Sith Lord, Count Dooku. \\r\\n There are heroes on both sides. \\r\\n Evil is everywhere. \\r\\n\\r\\n In a stunning move, the \\r\\n fiendish droid leader, General \\r\\n Grievous, has swept into the \\r\\n Republic capital and kidnapped \\r\\n Chancellor Palpatine, leader of \\r\\n the Galactic Senate. \\r\\n\\r\\n As the Separatist Droid Army \\r\\n attempts to flee the besieged \\r\\n capital with their valuable \\r\\n hostage, two Jedi Knights lead a \\r\\n desperate mission to rescue the \\r\\n captive Chancellor...', 'Episode III', 'George Lucas', '2005-05-19', 'film_3.png', 1),
(2, 'Attack of the Clones', 'There is unrest in the Galactic \\r\\n Senate. Several thousand solar \\r\\n systems have declared their \\r\\n intentions to leave the Republic. \\r\\n\\r\\n This separatist movement, \\r\\n under the leadership of the \\r\\n mysterious Count Dooku, has \\r\\n made it difficult for the limited \\r\\n number of Jedi Knights to maintain \\r\\n peace and order in the galaxy. \\r\\n\\r\\n Senator Amidala, the former \\r\\n Queen of Naboo, is returning \\r\\n to the Galactic Senate to vote \\r\\n on the critical issue of creating \\r\\n an ARMY OF THE REPUBLIC \\r\\n to assist the overwhelmed \\r\\n Jedi...', 'Episode II', 'George Lucas', '2002-05-16', 'film_2.png', 1),
(1, 'The Phantom Menace', 'Turmoil has engulfed the \\r\\n Galactic Republic. The taxation \\r\\n of trade routes to outlying star \\r\\n systems is in dispute.\\r\\n\\r\\n Hoping to resolve the matter \\r\\n with a blockade of deadly\\r\\n battleships, the greedy Trade \\r\\n Federation has stopped all \\r\\n shipping to the small planet \\r\\n of Naboo.\\r\\n\\r\\n While the Congress of the \\r\\n Republic endlessly debates \\r\\n this alarming chain of events, \\r\\n the Supreme Chancellor has \\r\\n secretly dispatched two Jedi \\r\\n Knights, the guardians of \\r\\n peace and justice in the \\r\\n galaxy, to settle the conflict...', 'Episode I', 'George Lucas', '1999-05-19', 'film_1.png', 1),
(6, 'Return of the Jedi', 'Luke Skywalker has returned to \\r\\n his home planet of Tatooine in \\r\\n an attempt to rescue his \\r\\n friend Han Solo from the \\r\\n clutches of the vile gangster \\r\\n Jabba the Hutt. \\r\\n\\r\\n Little does Luke know that the \\r\\n GALACTIC EMPIRE has secretly \\r\\n begun construction on a new \\r\\n armored space station even \\r\\n more powerful than the first \\r\\n dreaded Death Star. \\r\\n\\r\\n When completed, this ultimate \\r\\n weapon will spell certain doom \\r\\n for the small band of rebels \\r\\n struggling to restore freedom \\r\\n to the galaxy...', 'Episode VI', 'Richard Marquand', '1983-05-25', 'film_6.png', 1),
(7, 'The Force Awakens', 'Luke Skywalker has vanished. \\r\\n In his absence, the sinister \\r\\n FIRST ORDER has risen \\r\\n from the ashes of the Empire \\r\\n and will not rest until Skywalker, the last Jedi, \\r\\n has been destroyed. \\r\\n\\r\\n With the support of the REPUBLIC, \\r\\n General Leia Organa leads a brave RESISTANCE. \\r\\n She is desperate to find her \\r\\n brother Luke and gain his \\r\\n help in restoring peace and \\r\\n justice to the galaxy. \\r\\n\\r\\n Leia has sent her most daring \\r\\n pilot on a secret mission \\r\\n to Jakku, where an old ally \\r\\n has discovered a clue to \\r\\n Luke’s whereabouts ….', 'Episode VII', 'J. J. Abrams', '2015-12-18', 'film_7.png', 1),
(8, 'The Last Jedi', 'The FIRST ORDER reigns.\\r\\n Having decimated the peaceful\\r\\n Republic, Supreme Leader Snoke\\r\\n now deploys his merciless\\r\\n legions to seize military\\r\\n control of the galaxy. \\r\\n\\r\\n Only General Leia Organa\'s\\r\\n band of RESISTANCE fighters\\r\\n stand against the rising\\r\\n tyranny, certain that Jedi\\r\\n Master Luke Skywalker will\\r\\n return and restore a spark of\\r\\n hope to the fight. \\r\\n\\r\\n But the Resistance has been\\r\\n exposed. As the First Order\\r\\n speeds toward the rebel base,\\r\\n the brave heroes mount a\\r\\n desperate escape....', 'Episode VIII', 'Rian Johnson', '2017-12-15', 'film_8.png', 1),
(9, 'The Rise of Skywalker', 'The dead speak! The galaxy has\\r\\n heard a mysterious broadcast,\\r\\n a threat of REVENGE in the\\r\\n sinister voice of the late\\r\\n EMPEROR PALPATINE. \\r\\n\\r\\n GENERAL LEIA ORGANA\\r\\n dispatches secret agents to\\r\\n gather intelligence, while REY,\\r\\n the last hope of the Jedi, trains\\r\\n for battle against the diabolical\\r\\n FIRST ORDER. \\r\\n\\r\\n Meanwhile, Supreme Leader\\r\\n KYLO REN rages in search\\r\\n of the phantom Emperor,\\r\\n determined to destroy any\\r\\n threat to his power....', 'Episode IX', 'J. J. Abrams', '2019-12-20', 'film_9.png', 1);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `people`
--

CREATE TABLE `people` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `body_mass` varchar(100) DEFAULT NULL,
  `hair_color` varchar(100) DEFAULT NULL,
  `skin_color` varchar(100) DEFAULT NULL,
  `eye_color` varchar(100) DEFAULT NULL,
  `birthyear` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `species` varchar(100) DEFAULT NULL,
  `mass` varchar(5) DEFAULT NULL,
  `specie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `picture_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `category_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `people`
--

INSERT INTO `people` (`id`, `name`, `height`, `body_mass`, `hair_color`, `skin_color`, `eye_color`, `birthyear`, `gender`, `species`, `mass`, `specie`, `picture_url`, `category_id`) VALUES
(1, 'Luke Skywalker', '172', '67', 'blond', 'fair', 'blue', '19BBY', 'male', 'Human', '77', 'humanoide', 'people_1.png', 2),
(2, 'R2-D2', '96', '357', 'n/a', 'white, blue', 'red', '33BBY', 'n/a', 'Droid', '32', 'Droid', 'people_2.png', 2),
(3, 'Leia Organa', '150', '55', 'brown', 'light', 'brown', '19BBY', 'female', 'Human', '49', 'humanoide', 'people_3.png', 2),
(4, 'Anakin Skywalker', '188', '69', 'blond', 'fair', 'blue', '41.9BBY', 'male', 'Human', '84', 'humanoide', 'people_4.png', 2),
(5, 'Han Solo', '180', '72', 'brown', 'fair', 'brown', '29BBY', 'male', 'Droid', '80', 'humanoide', 'people_5.png', 2),
(6, 'C-3PO', '167', '325', 'n/a', 'gold', 'yellow', '112BBY', 'n/a', 'Droid', '75', 'humanoide', 'people_6.png', 2),
(7, 'Palpatine', '170', '97', 'grey', 'pale', 'yellow', '82BBY', 'male', 'Human', '75', 'humanoide', 'people_7.png', 2),
(8, 'Obi-Wan Kenobi', '182', '75', 'auburn, white', 'fair', 'blue-gray', '57BBY', 'male', 'Human', '77', 'humanoide', 'people_8.png', 2),
(9, 'Chewbacca', '228', '142', 'brown', 'unknown', 'blue', '200BBY', 'male', 'Wookie', '112', 'Wookie', 'people_9.png', 2),
(10, 'Jabba Desilijic Tiure', '175', '248', 'n/a', 'green-tan, brown', 'orange', '600BBY', 'hermaphrodite', 'Hutt', '1,358', 'Hutt', 'people_10.png', 2),
(11, 'Darth Vader', '202', '120', 'none', 'white', 'yellow', '41.9BBY', 'male', 'Human', '136', 'humanoide', 'people_11.png', 2);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', '04c956f05c3580ad60ceea22520987efe8e41e404edafd3e0dad584b78dc5d62', '[\"*\"]', NULL, '2021-08-05 19:41:16', '2021-08-05 19:41:16'),
(2, 'App\\Models\\User', 1, 'token', '732c061dbb0223f3113e608a6aa43e968f96f959fec23629a4a9fb190f065ba7', '[\"*\"]', NULL, '2021-08-05 20:02:03', '2021-08-05 20:02:03'),
(3, 'App\\Models\\User', 1, 'token', '6e08e272026eac38bb2d34dae856e814fa86bc976f1a4ec78bd18684793cd19c', '[\"*\"]', NULL, '2021-08-05 20:32:18', '2021-08-05 20:32:18'),
(4, 'App\\Models\\User', 1, 'token', '5a93d25ea5fad9a8911b2da87a9733ba387330a6d9aefe3e050c560035863775', '[\"*\"]', NULL, '2021-08-05 20:32:32', '2021-08-05 20:32:32'),
(5, 'App\\Models\\User', 1, 'token', '26d2cc287f3bdcfc1ac043c838b2d5b2be6eba9578a507563fc2f983c957ea51', '[\"*\"]', NULL, '2021-08-06 05:50:31', '2021-08-06 05:50:31'),
(6, 'App\\Models\\User', 1, 'token', '1983fd4d53fc9f45214f2c1192e4d68b0cbd43ebe75f8771a5c2c6db9b6f0cb6', '[\"*\"]', NULL, '2021-08-06 05:56:40', '2021-08-06 05:56:40'),
(7, 'App\\Models\\User', 1, 'token', 'ab4f423f070f9aea1923441b1d909918b57bdd02568ff8cffa8ca3f7bd0685fe', '[\"*\"]', NULL, '2021-08-06 06:01:41', '2021-08-06 06:01:41'),
(8, 'App\\Models\\User', 1, 'token', '03b66601faa6c623c86dd70bf92e1958f8a421cc778f35eb8e0d27ec445ee3ca', '[\"*\"]', NULL, '2021-08-06 06:59:32', '2021-08-06 06:59:32'),
(9, 'App\\Models\\User', 1, 'token', '2c528dcf9d410f1df9e8a845e60102ad5f923b80e1f49a168b0d990480499d4a', '[\"*\"]', NULL, '2021-08-06 07:02:11', '2021-08-06 07:02:11'),
(10, 'App\\Models\\User', 1, 'token', 'b2b5dd9f232faea717af1e27ca63946c48a9fdb5a5f5ba2c5d281a0918c2a285', '[\"*\"]', '2021-08-07 17:30:45', '2021-08-06 07:03:52', '2021-08-07 17:30:45'),
(11, 'App\\Models\\User', 1, 'token', 'd97e72c05dc8bb3820c16b328cfb1e491cf79250fae04db91050190c2667721a', '[\"*\"]', NULL, '2021-08-06 07:17:12', '2021-08-06 07:17:12'),
(12, 'App\\Models\\User', 1, 'token', '7b5dd2d0188e799b62b84c45f4a67ef60c6bd2dd5b105acdde6c33d02700dcab', '[\"*\"]', NULL, '2021-08-06 07:17:22', '2021-08-06 07:17:22'),
(13, 'App\\Models\\User', 1, 'token', 'a1eadc3bbbfa39c373c6ccf0ff264f96f0aa075004e0e9e1e9bd46e70ea185b6', '[\"*\"]', NULL, '2021-08-06 07:17:43', '2021-08-06 07:17:43'),
(14, 'App\\Models\\User', 1, 'token', '556350fc477581d004e3e0f2feab4b92fbc59080015f08e72da6874ccbb0699f', '[\"*\"]', NULL, '2021-08-06 07:26:14', '2021-08-06 07:26:14'),
(15, 'App\\Models\\User', 1, 'token', '7824110d39fedb1a09b3875e92d6fabb7362553159060c1d65e74822bac4f9b3', '[\"*\"]', NULL, '2021-08-06 07:28:20', '2021-08-06 07:28:20'),
(16, 'App\\Models\\User', 2, 'token', 'c72ef96bc394706eb226d2b0eba6193bf658aff3480c32777d8efaf09578c98b', '[\"*\"]', NULL, '2021-08-06 07:49:28', '2021-08-06 07:49:28'),
(17, 'App\\Models\\User', 2, 'token', 'efc44ef1f97cb300837cfe96ed1b0e7b957a7d9ffb72aa61844867e75d44ae75', '[\"*\"]', NULL, '2021-08-06 10:37:17', '2021-08-06 10:37:17'),
(18, 'App\\Models\\User', 2, 'token', '18f36350e843f874129c1b5a98b1a947d5d6ad5bf9f172a940c8e57df5d014d1', '[\"*\"]', NULL, '2021-08-06 13:40:57', '2021-08-06 13:40:57'),
(19, 'App\\Models\\User', 1, 'token', 'a5361af9d69d4e8404597be405cc260c4ce2ee8b170bd29bbc7729e78963d028', '[\"*\"]', NULL, '2021-08-07 10:45:08', '2021-08-07 10:45:08'),
(20, 'App\\Models\\User', 1, 'token', 'c2476b328891fdc253a511703c5f9ce0e3eeab2f9f12dea3e82b9accf7d329d5', '[\"*\"]', NULL, '2021-08-07 10:48:50', '2021-08-07 10:48:50'),
(28, 'App\\Models\\User', 1, 'token', '60d9f06b3d0b8a7a315f61f20cea49af29edc6ff0a39fe97c383dccab9a02cfe', '[\"*\"]', NULL, '2021-08-07 15:50:24', '2021-08-07 15:50:24'),
(29, 'App\\Models\\User', 1, 'token', '4b2a872bc5bff2b27a2b3f45b5133221979b1cc313e618226691466ef3f04190', '[\"*\"]', NULL, '2021-08-07 15:55:50', '2021-08-07 15:55:50'),
(30, 'App\\Models\\User', 1, 'token', '049c029e403234062d60e4b6b6d62647887deaca1a5f492f6a9d9eb36d27c465', '[\"*\"]', NULL, '2021-08-07 15:57:37', '2021-08-07 15:57:37'),
(31, 'App\\Models\\User', 1, 'token', 'd50929c658a12c4f6146a86275704cdbf226bd932b4aa5bb64cc7aec2067cb3d', '[\"*\"]', NULL, '2021-08-07 15:58:33', '2021-08-07 15:58:33'),
(33, 'App\\Models\\User', 1, 'token', 'a915f82a68c6c5fe130063e3b45d43e08f84fe618d5f7e0088eb475e01b99ffb', '[\"*\"]', NULL, '2021-08-07 16:03:02', '2021-08-07 16:03:02'),
(34, 'App\\Models\\User', 1, 'token', '5fcec27b00c910f36275dabdf837594e6780dfc1a08715761c5fb8a8a88a9df1', '[\"*\"]', NULL, '2021-08-07 16:04:14', '2021-08-07 16:04:14'),
(37, 'App\\Models\\User', 1, 'browser', 'd95936c9622d0ab589afe83ab8522f29b8d636f00f1944d8a7abca161010e806', '[\"*\"]', NULL, '2021-08-07 16:56:58', '2021-08-07 16:56:58'),
(38, 'App\\Models\\User', 1, 'browser', '4d3ee3b7ac5ea4f4a45d393e5329ce5a686981b451814cff14871991c487d1e2', '[\"*\"]', NULL, '2021-08-07 17:17:27', '2021-08-07 17:17:27'),
(41, 'App\\Models\\User', 1, 'myapptoken', '98a92bb652275181a7acb6536fb862ce0e1127389d79d8a62133ed05ea584adb', '[\"*\"]', NULL, '2021-08-07 17:52:53', '2021-08-07 17:52:53'),
(42, 'App\\Models\\User', 1, 'myapptoken', '993297c4e61c6042d1d8a24326a7c2ffd36fcff14d153bf94881242d8b16f812', '[\"*\"]', NULL, '2021-08-07 17:54:36', '2021-08-07 17:54:36'),
(43, 'App\\Models\\User', 1, 'myapptoken', '24167644dc1f131b7a963b03da912e9997eee3f30b4b0c34a3319764a0217c51', '[\"*\"]', NULL, '2021-08-07 18:49:56', '2021-08-07 18:49:56'),
(44, 'App\\Models\\User', 1, 'myapptoken', '66e949c7564fe1e0bfa8fbf0002ca9794629c05b8e3be03b82a29dc1a58746e8', '[\"*\"]', NULL, '2021-08-07 18:53:29', '2021-08-07 18:53:29'),
(46, 'App\\Models\\User', 11, 'myapptoken', 'f3e9ebbeb3a7e39b0be424c0a616e5e4bf57cbc87cb2e30f0f98644abaced3aa', '[\"*\"]', NULL, '2021-08-07 19:11:22', '2021-08-07 19:11:22'),
(47, 'App\\Models\\User', 11, 'myapptoken', 'bb108626dad10941cd438e564ffa186b55e3f44405e57e8390d1c88857c080e1', '[\"*\"]', NULL, '2021-08-07 19:15:10', '2021-08-07 19:15:10'),
(48, 'App\\Models\\User', 1, 'myapptoken', '6f15e17c3baf28b895a6a16b0325e4ad5d2b27222f2764f302128170c4b015ef', '[\"*\"]', NULL, '2021-08-07 19:16:55', '2021-08-07 19:16:55'),
(49, 'App\\Models\\User', 1, 'myapptoken', '9e4540b55a9043a9880c819f70ff0b3bc80b53f0566acc770e35e023118cc08e', '[\"*\"]', NULL, '2021-08-07 19:17:07', '2021-08-07 19:17:07'),
(51, 'App\\Models\\User', 1, 'myapptoken', '827f868e835e09081c5fef111eea9d7bdb57082be52cd0b2312223de76f6f326', '[\"*\"]', NULL, '2021-08-07 19:19:17', '2021-08-07 19:19:17'),
(52, 'App\\Models\\User', 1, 'myapptoken', '6717a7b51bb3fd672578a91da520d06eaf9f546355f1e1fd0744bf4bdd6e0850', '[\"*\"]', NULL, '2021-08-07 19:22:33', '2021-08-07 19:22:33'),
(53, 'App\\Models\\User', 13, 'myapptoken', '0b8206aafd167d26f455d950194a3e0512bdb35c03f319833e011c0385b581d8', '[\"*\"]', NULL, '2021-08-07 19:24:27', '2021-08-07 19:24:27'),
(54, 'App\\Models\\User', 1, 'myapptoken', 'f0a6569318d59ba1c8941409d1af97faebd82469fa3d46a5ca5c024c5ca1c47d', '[\"*\"]', NULL, '2021-08-07 19:25:14', '2021-08-07 19:25:14'),
(55, 'App\\Models\\User', 1, 'myapptoken', 'b0889cf416eb033f010dc1fdc4dc286fb6fe44b1d23a2f5f5bc74e25ae95507d', '[\"*\"]', NULL, '2021-08-07 19:25:48', '2021-08-07 19:25:48'),
(56, 'App\\Models\\User', 1, 'myapptoken', 'f02c03daf91ad0820ce18b4229fad6aaa2939e7fc3fc6cbd893296f3375ef0cd', '[\"*\"]', NULL, '2021-08-07 19:26:18', '2021-08-07 19:26:18'),
(57, 'App\\Models\\User', 1, 'myapptoken', 'f84a7b6fc35fac212032ba65730f52e3a37b8bdef74a36bad72b8c1b49e489ff', '[\"*\"]', NULL, '2021-08-07 19:26:32', '2021-08-07 19:26:32'),
(58, 'App\\Models\\User', 11, 'myapptoken', '5a0f4c48196671a8663cef6b423f74596fcfeed7ec5f002bb4fa868ab90dfd31', '[\"*\"]', NULL, '2021-08-07 19:27:05', '2021-08-07 19:27:05'),
(59, 'App\\Models\\User', 1, 'token', 'a7135846fadd7cf02d0f4e16adfc34950962a75850e8a45ff9cd9f0c109bbc80', '[\"*\"]', NULL, '2021-08-07 19:30:19', '2021-08-07 19:30:19'),
(60, 'App\\Models\\User', 11, 'token', '1f75c0b0f10a32a2e3d35f07c7b5f83999d8f60a9793c969e1006d0f3284080b', '[\"*\"]', NULL, '2021-08-07 19:30:59', '2021-08-07 19:30:59'),
(61, 'App\\Models\\User', 1, 'token', 'c220adeb486716f28c032c9c1502de9119b33ae777858d25ecc0b7b5db509e4f', '[\"*\"]', NULL, '2021-08-07 19:31:14', '2021-08-07 19:31:14'),
(62, 'App\\Models\\User', 11, 'myapptoken', '4de61d092542ddcc8d352175492e6129973da4fae5224731fa3acfa093df5d3a', '[\"*\"]', NULL, '2021-08-07 22:13:44', '2021-08-07 22:13:44'),
(63, 'App\\Models\\User', 16, 'myapptoken', '2120564f3e09c74b2aa173bfd2629fbc2dc5a7e5cb51f69f2c2c14cc0897aaf6', '[\"*\"]', NULL, '2021-08-07 22:14:20', '2021-08-07 22:14:20'),
(64, 'App\\Models\\User', 16, 'myapptoken', '3005218fd62f59c0a14ee55ea2df45882ce536daf7366cb1ac7bd47acb3b08a3', '[\"*\"]', NULL, '2021-08-07 22:14:20', '2021-08-07 22:14:20'),
(65, 'App\\Models\\User', 16, 'myapptoken', 'ef9df6a77dadce3410c41e45a4ea2a4cc64e915df94bca88140579bac34e684f', '[\"*\"]', NULL, '2021-08-07 22:14:28', '2021-08-07 22:14:28'),
(66, 'App\\Models\\User', 16, 'myapptoken', '33e0416cd177accc5af9adf8997543adb7ef7919cd89cbbf93b214076b117d36', '[\"*\"]', NULL, '2021-08-07 22:14:28', '2021-08-07 22:14:28'),
(67, 'App\\Models\\User', 16, 'myapptoken', '1ba7e3982b54d5aa8cba6d9433dc8e90b5df0a365df57126b1c1545ae887a7b9', '[\"*\"]', NULL, '2021-08-07 22:15:30', '2021-08-07 22:15:30'),
(68, 'App\\Models\\User', 16, 'myapptoken', 'ecd3636b33dfead4793ebe95d3c76b8cda0609e3547d5e8746e72d9261eacd99', '[\"*\"]', NULL, '2021-08-07 22:15:30', '2021-08-07 22:15:30'),
(69, 'App\\Models\\User', 16, 'myapptoken', 'c2fded04dd69949bfcb4593635ef674038dcb40ea7717e69caccd1eaf57543f1', '[\"*\"]', NULL, '2021-08-07 22:18:23', '2021-08-07 22:18:23'),
(70, 'App\\Models\\User', 16, 'myapptoken', 'd7f94168383a2ce1795915b8b22de53aa4e53ff506d45376dea439b14f5b4404', '[\"*\"]', NULL, '2021-08-07 22:20:14', '2021-08-07 22:20:14'),
(71, 'App\\Models\\User', 16, 'myapptoken', '23dada02062ecc2234679967318bda9ae2a78d546da2ac8db0715ee167ae23c8', '[\"*\"]', NULL, '2021-08-07 22:25:56', '2021-08-07 22:25:56'),
(72, 'App\\Models\\User', 16, 'myapptoken', 'e955ed61201d9e822654770781fa7ba7bf86e9e6cfbb98be6727c3682ff09cab', '[\"*\"]', NULL, '2021-08-07 22:25:56', '2021-08-07 22:25:56'),
(73, 'App\\Models\\User', 16, 'myapptoken', '98548f0e96ee6d12c05aa13435fbd46d122911c22d068d69119cd7bbed427a6c', '[\"*\"]', NULL, '2021-08-07 22:26:18', '2021-08-07 22:26:18'),
(74, 'App\\Models\\User', 16, 'myapptoken', '3ee9be7812579d188595241b53ba7709dd9b9c288ecda74c5bb518fa356f65a8', '[\"*\"]', NULL, '2021-08-07 22:26:18', '2021-08-07 22:26:18'),
(77, 'App\\Models\\User', 16, 'myapptoken', '450154ed33bc8a2d8556242ee59a5f743f20da15acf6df5e38d6322e97fb703f', '[\"*\"]', NULL, '2021-08-07 22:53:36', '2021-08-07 22:53:36'),
(78, 'App\\Models\\User', 16, 'myapptoken', '82cbfe6f9c9fe26950c3658187c3661287fd7146dbdbacbaa10d8d3c18fcbb2f', '[\"*\"]', NULL, '2021-08-07 22:53:36', '2021-08-07 22:53:36'),
(88, 'App\\Models\\User', 16, 'myapptoken', '83e9d990b98df6a1ab2b9ede2af8780fc51262226a45c4bf2ad1340349e73c96', '[\"*\"]', NULL, '2021-08-08 00:57:23', '2021-08-08 00:57:23'),
(89, 'App\\Models\\User', 16, 'myapptoken', '92d75fefd985eff602c5bac0859423db9a7a2cffabb1c18c970bc436e7333c72', '[\"*\"]', NULL, '2021-08-08 00:57:23', '2021-08-08 00:57:23'),
(90, 'App\\Models\\User', 17, 'myapptoken', 'a46f27b371e5029f418b7981bfe485682aeaac5ac8bd375603fbd1c5f6232970', '[\"*\"]', NULL, '2021-08-08 00:57:44', '2021-08-08 00:57:44'),
(91, 'App\\Models\\User', 17, 'myapptoken', '7c32bc853e03cc060bad0dd90429fd7eb973ceab42e18a6afb016d1d97a68ac7', '[\"*\"]', NULL, '2021-08-08 00:58:00', '2021-08-08 00:58:00'),
(92, 'App\\Models\\User', 17, 'myapptoken', '87f5cca80203d2642995c350d6cf4aa2d9256196d5672e96ac15d52ef6911443', '[\"*\"]', NULL, '2021-08-08 00:58:00', '2021-08-08 00:58:00'),
(93, 'App\\Models\\User', 17, 'myapptoken', '799f1f0599f1705297434d1717296350b2bbdc7b9d3b323b410503fb5337d7b9', '[\"*\"]', NULL, '2021-08-08 01:05:46', '2021-08-08 01:05:46'),
(94, 'App\\Models\\User', 17, 'myapptoken', 'b9eedf956a697f208e1429bd1f1567e4ed97244203bd1ea891439fff0b36945f', '[\"*\"]', NULL, '2021-08-08 01:05:46', '2021-08-08 01:05:46'),
(95, 'App\\Models\\User', 17, 'myapptoken', '336ae9567b8b7a629259018829e8375c69bef7e26f93189b825ea5f21cca02ab', '[\"*\"]', NULL, '2021-08-08 01:05:49', '2021-08-08 01:05:49'),
(96, 'App\\Models\\User', 17, 'myapptoken', 'd6b87ffa4a20af6fe6b4867926ca09526880de80547251f9217c6bedf5d3360d', '[\"*\"]', NULL, '2021-08-08 01:05:49', '2021-08-08 01:05:49'),
(97, 'App\\Models\\User', 17, 'myapptoken', '2979fb38a77a548c3dfdf02c2eb26a138996236885f3ac5bca76699b990b66c1', '[\"*\"]', NULL, '2021-08-08 01:05:50', '2021-08-08 01:05:50'),
(98, 'App\\Models\\User', 17, 'myapptoken', 'cd5ed90144f00acf26734bff3c0c0a1371432dfaf7be8d7d1a68f54c940fae1b', '[\"*\"]', NULL, '2021-08-08 01:05:50', '2021-08-08 01:05:50'),
(99, 'App\\Models\\User', 17, 'myapptoken', 'efa601fc75c6908996d19aadebb7f581757b288d52caa60e833ca593806bff05', '[\"*\"]', NULL, '2021-08-08 01:05:51', '2021-08-08 01:05:51'),
(100, 'App\\Models\\User', 17, 'myapptoken', '304151c2126ae2f01dce26df0cd841795d88aa27e04e1af2e8aa931d86acb93c', '[\"*\"]', NULL, '2021-08-08 01:05:51', '2021-08-08 01:05:51'),
(101, 'App\\Models\\User', 17, 'myapptoken', 'af4dcf52546e2facf2f500ef8795c5b008cf875414df03018786102560e5f275', '[\"*\"]', NULL, '2021-08-08 01:05:51', '2021-08-08 01:05:51'),
(102, 'App\\Models\\User', 17, 'myapptoken', '00a21d5211dc23dd44fce65779bb9d41368c125fa793dff6187edea759d8e265', '[\"*\"]', NULL, '2021-08-08 01:05:51', '2021-08-08 01:05:51'),
(103, 'App\\Models\\User', 17, 'myapptoken', '26c24bde26f98c2d8158ffcd051a118d011e73b064e51d8ceab2d42e9a9a3d43', '[\"*\"]', NULL, '2021-08-08 01:05:52', '2021-08-08 01:05:52'),
(104, 'App\\Models\\User', 17, 'myapptoken', '5a7712039f3474945616fe99dc9ebc957dab2667287cbfb6feb11e943a7ab353', '[\"*\"]', NULL, '2021-08-08 01:05:52', '2021-08-08 01:05:52'),
(105, 'App\\Models\\User', 17, 'myapptoken', '3f13f68cb8351978e8427f34f289195f6e9a5f951bc5eec94618732ea11c2746', '[\"*\"]', NULL, '2021-08-08 11:26:22', '2021-08-08 11:26:22'),
(106, 'App\\Models\\User', 16, 'myapptoken', 'ec82b24f1f43d4fc182b8e52bfd93a9629e51b0dfbd91fc46091c0194a4a93b9', '[\"*\"]', NULL, '2021-08-08 11:43:19', '2021-08-08 11:43:19'),
(107, 'App\\Models\\User', 16, 'myapptoken', 'd58d85afc064dff4dd3147a042df90fd8327fd63d9d59fe5ee837a63f100ba56', '[\"*\"]', NULL, '2021-08-08 11:43:19', '2021-08-08 11:43:19'),
(108, 'App\\Models\\User', 16, 'myapptoken', '2286951aa5163f1708cd969dcca551557ca1213c9a6a0171dc55306de9c25ca1', '[\"*\"]', NULL, '2021-08-08 12:14:37', '2021-08-08 12:14:37'),
(109, 'App\\Models\\User', 16, 'myapptoken', '8b592e19bfbf2f83260420822d3f86744ae72bb2378499a39fa7bdf0ff708d53', '[\"*\"]', NULL, '2021-08-08 12:14:37', '2021-08-08 12:14:37'),
(110, 'App\\Models\\User', 17, 'myapptoken', '761e52ee62a873d58a94b3a4736e70e538cede875a6976968a8153c7c2eb5bc2', '[\"*\"]', NULL, '2021-08-08 12:38:29', '2021-08-08 12:38:29'),
(112, 'App\\Models\\User', 16, 'myapptoken', '53527b3c81224faa4e6abcb8565542dfbb642eccca57bae18a8a38acec70f331', '[\"*\"]', NULL, '2021-08-08 13:16:51', '2021-08-08 13:16:51'),
(113, 'App\\Models\\User', 16, 'myapptoken', '60f9e3eb1c3a1e78bfd0116f98b9514ee6e77fa4a426517eb6ce6dc70b4197e9', '[\"*\"]', NULL, '2021-08-08 13:16:51', '2021-08-08 13:16:51'),
(114, 'App\\Models\\User', 17, 'myapptoken', '491844b954795a0123fe802e275f817d66df89eac0fd23bf6cb89ae25bbc6cb6', '[\"*\"]', NULL, '2021-08-09 05:36:46', '2021-08-09 05:36:46'),
(115, 'App\\Models\\User', 16, 'myapptoken', '7613239569e8acc33f136349184af828585de9a42c55c462f4ad739c1b825ca6', '[\"*\"]', NULL, '2021-08-09 05:40:08', '2021-08-09 05:40:08'),
(116, 'App\\Models\\User', 16, 'myapptoken', '125a4d161cdc380a6d2f96d2d52a88e4f868c73e04b8cacdc142aaee8913f3bc', '[\"*\"]', NULL, '2021-08-09 05:40:08', '2021-08-09 05:40:08'),
(117, 'App\\Models\\User', 16, 'myapptoken', 'e72902ed7b70fbbce58836f182ded95c08d62e81b9920d0d811e477537e7852b', '[\"*\"]', NULL, '2021-08-09 05:58:50', '2021-08-09 05:58:50'),
(118, 'App\\Models\\User', 16, 'myapptoken', '2e92d55ea142d94ad0a6414f14c6cbf8b74a8c2c3c4063695227c5c8f6e1bcea', '[\"*\"]', NULL, '2021-08-09 05:58:50', '2021-08-09 05:58:50'),
(119, 'App\\Models\\User', 16, 'myapptoken', 'ec8c5bfa33fadb4114370aae21bfef3893ec530585c7d88e4844d18b7f16c08d', '[\"*\"]', NULL, '2021-08-09 06:16:46', '2021-08-09 06:16:46'),
(120, 'App\\Models\\User', 16, 'myapptoken', 'cc0c98f5c7447fd09a8f7697b8312ecba24684457860f291dad9af71e29f4042', '[\"*\"]', NULL, '2021-08-09 06:16:46', '2021-08-09 06:16:46'),
(121, 'App\\Models\\User', 16, 'myapptoken', '3e82743eff408e72219825feb0e7dbc83efefedec4ab8daae466eaaa80ec53b5', '[\"*\"]', NULL, '2021-08-09 06:18:07', '2021-08-09 06:18:07'),
(122, 'App\\Models\\User', 16, 'myapptoken', 'dc483415f8ff7cb25e5d9e1f59201d7672952e02c1b5ece324928353dc51cbac', '[\"*\"]', NULL, '2021-08-09 06:18:07', '2021-08-09 06:18:07'),
(123, 'App\\Models\\User', 16, 'myapptoken', '0616493fb9bccf7843709199596a9803065159b40d690dd2ece607fb863cea8a', '[\"*\"]', NULL, '2021-08-09 06:18:25', '2021-08-09 06:18:25'),
(124, 'App\\Models\\User', 16, 'myapptoken', '37271e914f65796eab550ed5cfb4b64cdbde73abb4366854b566a4f278b9cfdb', '[\"*\"]', NULL, '2021-08-09 06:18:25', '2021-08-09 06:18:25'),
(125, 'App\\Models\\User', 1, 'myapptoken', 'b65d46706341883f7d4a8fa75eeb08c8f655f6da6f04bccde2802d1715d3a5eb', '[\"*\"]', NULL, '2021-08-09 06:20:37', '2021-08-09 06:20:37'),
(126, 'App\\Models\\User', 1, 'myapptoken', '9bde6f3b3afc58dedff2475fa5bc3c8e62a3db7eb2b615855e856e4703796aba', '[\"*\"]', NULL, '2021-08-09 06:20:37', '2021-08-09 06:20:37'),
(127, 'App\\Models\\User', 1, 'myapptoken', '7c321c570109994d9010e0c49264b4439a68bcde2cbe3ce3876d1e1fce7d2b23', '[\"*\"]', NULL, '2021-08-11 11:57:54', '2021-08-11 11:57:54'),
(128, 'App\\Models\\User', 1, 'myapptoken', 'a2077753484c93b77961abe8ba6664855b15fa7fcec2a359412723a24be6202e', '[\"*\"]', '2021-08-11 12:33:04', '2021-08-11 11:57:54', '2021-08-11 12:33:04'),
(129, 'App\\Models\\User', 1, 'myapptoken', '46181b0e7ddc28b6485384c84e50246aeb171576ebf6a921d17f12de7f6007b1', '[\"*\"]', '2021-08-12 06:16:00', '2021-08-11 11:59:26', '2021-08-12 06:16:00'),
(130, 'App\\Models\\User', 1, 'myapptoken', 'bd5fa734e278d89f484c8e54a11c8adc11a99ede61a4683461962819da265de4', '[\"*\"]', NULL, '2021-08-11 13:10:12', '2021-08-11 13:10:12'),
(131, 'App\\Models\\User', 1, 'myapptoken', 'd616ce7a23c85ba35b19818d79a6305b4fc90e04a7f0bee32f00a00093d3e3a1', '[\"*\"]', '2021-08-11 13:51:28', '2021-08-11 13:10:12', '2021-08-11 13:51:28'),
(132, 'App\\Models\\User', 1, 'myapptoken', 'a05607e3f44edc33687b6c26d682d930cfe6980587eba5f83968f1a74745759e', '[\"*\"]', NULL, '2021-08-11 13:53:05', '2021-08-11 13:53:05'),
(133, 'App\\Models\\User', 1, 'myapptoken', '6c75bf3813eeffc55c4bafec83e8e6c8b78bcd26c10c17f893ba60c1d6e6246f', '[\"*\"]', '2021-08-12 06:38:29', '2021-08-11 13:53:05', '2021-08-12 06:38:29'),
(134, 'App\\Models\\User', 1, 'myapptoken', '314a5df506eab4b237e7468bb2b951347cd4af3af135935f24ce43d538a96a25', '[\"*\"]', NULL, '2021-08-11 18:06:26', '2021-08-11 18:06:26'),
(135, 'App\\Models\\User', 1, 'myapptoken', '384cf72d0b7bb03cdfdc865eb2402f724baecd87885e21e7d7b85de58a99c17a', '[\"*\"]', '2021-08-11 20:41:29', '2021-08-11 18:06:27', '2021-08-11 20:41:29'),
(136, 'App\\Models\\User', 16, 'myapptoken', '0991d2a37138c1bcbfcd42fb63d7d48bab592e9499ad7feefd4849c5cc8735af', '[\"*\"]', NULL, '2021-08-11 20:42:49', '2021-08-11 20:42:49'),
(140, 'App\\Models\\User', 1, 'myapptoken', '20710815e2085a143141ef3d7ef62c9b792919724045d59619011a6498b4e6f9', '[\"*\"]', NULL, '2021-08-11 21:08:47', '2021-08-11 21:08:47'),
(142, 'App\\Models\\User', 1, 'myapptoken', '8ab6961a45579db74496cefe4f9c040e1b12e9d4c55a96d2433491d387b4d0af', '[\"*\"]', NULL, '2021-08-12 07:12:05', '2021-08-12 07:12:05'),
(143, 'App\\Models\\User', 1, 'myapptoken', 'a15ff0b8e754f36b4501d80a77331042de664f54784437ade8833e1d7a634216', '[\"*\"]', NULL, '2021-08-12 07:12:05', '2021-08-12 07:12:05'),
(144, 'App\\Models\\User', 1, 'myapptoken', '434894f3ac607c76a05f7610fc07a1f3069d9cf02dbf1ddde4bbb0cc836fd8c6', '[\"*\"]', NULL, '2021-08-12 09:41:31', '2021-08-12 09:41:31'),
(146, 'App\\Models\\User', 1, 'myapptoken', '348f3846d15a44cac42a1d5eca26e966fb79a3d1a5b4c095b98063bdb27be44c', '[\"*\"]', NULL, '2021-08-12 10:02:46', '2021-08-12 10:02:46'),
(148, 'App\\Models\\User', 1, 'myapptoken', '7820d067e7b9b023ade6439d67e8f4edbf1b98f5c9b9450b6f2cbfc9e6389f56', '[\"*\"]', NULL, '2021-08-12 10:03:32', '2021-08-12 10:03:32'),
(150, 'App\\Models\\User', 1, 'myapptoken', '031903c6ef2b59cfe61acd22ef5668bd3984fd6fe7c2a3798ff717777f72138a', '[\"*\"]', NULL, '2021-08-12 10:10:07', '2021-08-12 10:10:07'),
(152, 'App\\Models\\User', 1, 'myapptoken', '57ab920f822bb35e6417c1e9a3170393ae3fb205339888d32a8947517fb75828', '[\"*\"]', NULL, '2021-08-12 10:12:13', '2021-08-12 10:12:13'),
(154, 'App\\Models\\User', 1, 'myapptoken', '03e20e4eafe80d9d848deeb5ca96395e59ae16bcc6e462c406c7a9ca2909d0cc', '[\"*\"]', NULL, '2021-08-12 10:27:59', '2021-08-12 10:27:59'),
(156, 'App\\Models\\User', 1, 'myapptoken', '8c61a253c855b943502e2e0df3d5c3ec80fee763bfa847ef487329b6005b598b', '[\"*\"]', NULL, '2021-08-12 11:13:39', '2021-08-12 11:13:39'),
(158, 'App\\Models\\User', 1, 'myapptoken', '9842a9743ed3857104b3d972bfca4d13dbd5385539e9a2001f1be64e2d9d8f78', '[\"*\"]', '2021-08-12 11:29:06', '2021-08-12 11:22:00', '2021-08-12 11:29:06'),
(159, 'App\\Models\\User', 16, 'myapptoken', 'cd6d320e459fce490853341eee03e46dc09412c4159c41728a5e8d90a936ae9c', '[\"*\"]', NULL, '2021-08-12 11:34:08', '2021-08-12 11:34:08'),
(160, 'App\\Models\\User', 16, 'myapptoken', '71dfa42a425b1fb03b8faf66ccab4e08ad81f80926317dcf8628cfe52d697f4d', '[\"*\"]', NULL, '2021-08-12 11:53:55', '2021-08-12 11:53:55'),
(161, 'App\\Models\\User', 16, 'myapptoken', 'fe1db04ebd76d8227680bfc671c547a027994fc45480ac9b744e11217f2a7e92', '[\"*\"]', '2021-08-12 11:54:07', '2021-08-12 11:53:55', '2021-08-12 11:54:07');

-- --------------------------------------------------------

--
-- Structure de la table `planetes`
--

CREATE TABLE `planetes` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rotation_period` varchar(100) DEFAULT NULL,
  `orbital_period` varchar(100) DEFAULT NULL,
  `diameter` varchar(100) DEFAULT NULL,
  `climate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gravity` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `terrain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `surface_water` varchar(100) DEFAULT NULL,
  `population` varchar(100) DEFAULT NULL,
  `picture_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `category_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `planetes`
--

INSERT INTO `planetes` (`id`, `name`, `rotation_period`, `orbital_period`, `diameter`, `climate`, `gravity`, `terrain`, `surface_water`, `population`, `picture_url`, `category_id`) VALUES
(1, 'Endor', '18', '402', '4900', 'temperate', '0.85 standard', 'forests, mountains, lakes', '8', '30000000', 'planete_1.png', 3),
(2, 'Bespin', '12', '5110', '118000', 'temperate', '1.5 (surface), 1 standard (Cloud City)', 'gas giant', '0', '6000000', 'planete_2.png', 3),
(3, 'Naboo', '26', '312', '12120', 'temperate', '1 standard', 'grassy hills, swamps, forests, mountains', '12', '4500000000', 'planete_3.png', 3),
(4, 'Tatooine', '23', '304', '10465', 'arid', '1 standard', 'desert', '1', '200000', 'planete_4.png', 3),
(5, 'Mustafar', '36', '412', '4200', 'hot', '1 standard', 'volcanoes, lava rivers, mountains, caves', '0', '20000', 'planete_5.png', 3),
(6, 'Alderaan', '24', '364', '12500', 'temperate', '1 standard', 'grasslands, mountains', '40', '2000000000', 'planete_6.png', 3),
(7, 'Dagobah', '23', '341', '8900', 'murky', 'N/A', 'swamp, jungles', '8', 'N/A', 'planete_7.png', 3),
(8, 'Coruscant', '24', '368', '12240', 'temperate', '1 standard', 'cityscape, mountains', '27', '1000000000000', 'planete_8.png', 3);

-- --------------------------------------------------------

--
-- Structure de la table `species`
--

CREATE TABLE `species` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `classification` varchar(100) DEFAULT NULL,
  `average_height` varchar(100) DEFAULT NULL,
  `skin_colors` varchar(100) DEFAULT NULL,
  `hair_colors` varchar(100) DEFAULT NULL,
  `eye_colors` varchar(100) DEFAULT NULL,
  `average_lifespan` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `picture_url` varchar(100) DEFAULT NULL,
  `category_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `species`
--

INSERT INTO `species` (`id`, `name`, `classification`, `average_height`, `skin_colors`, `hair_colors`, `eye_colors`, `average_lifespan`, `language`, `picture_url`, `category_id`) VALUES
(1, 'Human', ' mammal', '180', 'caucasian, black, asian, hispanic', 'blonde, brown, black, red', 'brown, blue, green, hazel, grey, amber', '120', 'Galactic Basic', 'specie_1.png', 4),
(2, 'Droid', ' artificial', 'n/a', 'n/a', 'n/a', 'n/a', 'indefinite', 'n/a', 'specie_2.png', 4),
(3, 'Wookie', ' mammal', '210', 'gray', 'black, brown', 'blue, green, yellow, brown, golden, red', '400', 'Shyriiwook', 'specie_3.png', 4),
(4, 'Hutt', ' gastropod', '300', 'green, brown, tan', 'n/a', 'yellow, red', '1000', 'Huttese', 'specie_4.png', 4),
(5, 'Yoda\'s species', 'mammal', '30', 'green', 'green,white', 'dark', '900', 'Basic Galactic', 'specie_5.png', 4);

-- --------------------------------------------------------

--
-- Structure de la table `starships`
--

CREATE TABLE `starships` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `lenght` int DEFAULT NULL,
  `crew` int DEFAULT NULL,
  `passengers` int DEFAULT NULL,
  `cargo_capacity` varchar(100) DEFAULT NULL,
  `consumables` varchar(100) DEFAULT NULL,
  `hyperdrive_rating` float DEFAULT NULL,
  `starship_class` varchar(100) DEFAULT NULL,
  `picture_url` varchar(100) DEFAULT NULL,
  `category_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `starships`
--

INSERT INTO `starships` (`id`, `name`, `model`, `manufacturer`, `cost`, `lenght`, `crew`, `passengers`, `cargo_capacity`, `consumables`, `hyperdrive_rating`, `starship_class`, `picture_url`, `category_id`) VALUES
(5, 'TIE Advanced-x1', 'Twin Ion Engin Advanced-x1', 'Sienar Fleet Systems', 'unknown', 9, 1, 0, '150', '5 days', 1, 'Starfighter', 'starship_5.png', 5),
(3, 'Millennium-Falcon', 'YT-1300 light freighter', 'Corellian Engineering Corporation', '100000', 34, 4, 6, '100000', '2 months', 0.5, 'Light freighter', 'starship_3.png', 5),
(4, 'X-wing', 'T-65 X-wing', 'Incom Corporation', '149999', 12, 1, 0, '110', '1 week', 1, 'Starfighter', 'starship_4.png', 5),
(2, 'Death Star', 'DS-1 Orbital Battle Station', 'Imperial Department of Military Research, Sienar Fleet Systems', '1000000000000', 120000, 342953, 843342, '1000000000000', '3 years', 4, 'Deep Space Mobile Battlestation', 'starship_2.png', 5),
(1, 'Star Destroyer', 'Imperial I-class Star-Destroyer', 'Kuat Drive Yards', '150000000', 1600, 4706, 12345, '36000000', '2 years', 2, 'Star Destroyer', 'starship_1.png', 5);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(256) NOT NULL,
  `nickname` varchar(48) NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(96) NOT NULL,
  `url` varchar(96) DEFAULT NULL,
  `screensize` varchar(96) DEFAULT NULL,
  `registered` datetime DEFAULT NULL,
  `status` int DEFAULT '0',
  `team` varchar(8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `nickname`, `birthdate`, `email`, `url`, `screensize`, `registered`, `status`, `team`, `created_at`) VALUES
(1, 'test', '$2y$10$vi9YkPbvJ4a8OBOR2kId2.LDOmgZojmL70QM10hruVuFVej47YhAW', 'test', '2020-08-05', 'test@test', NULL, NULL, NULL, 0, NULL, '2021-08-05 19:10:49'),
(19, 'AZTY', '$2y$10$Pp5Wv.uoKrl33KaUo1pL3O80fbKwsmqdLsb7Js5AiWcTHrHftqU5a', 'test', '2020-08-05', 'p@q', NULL, NULL, NULL, 0, NULL, '2021-08-08 11:27:42'),
(11, 'a', '$2y$10$z4nqcf0w86HMIpFHLTUpSuo6j79lBYcAFElo9GsxM/1lqGEqYy49a', 'a', '2000-08-12', 'a@a', NULL, NULL, NULL, 0, NULL, '2021-08-07 17:01:40'),
(12, 'b', '$2y$10$s6mogKaoSMYH5Srheab/B.MwNKULmlGTbgF12RDrWYLrzn7u0RY0q', 'b', '2000-08-28', 'b@b', NULL, NULL, NULL, 0, NULL, '2021-08-07 17:58:44'),
(13, 'z', '$2y$10$Wi2HmWAI2PPk6uTVu670heCTq6Ev/t.3qgKdvL9e1Pll90MAzBWm6', 'z', '2000-08-25', 'z@z', NULL, NULL, NULL, 0, NULL, '2021-08-07 19:23:59'),
(14, 'r', '$2y$10$HrQc2Z8P1amIu8OFPO/vJudAAaYq6TyajXJO9nYXaQjbpuPljUGU2', 'r', '2000-08-26', 'r@r', NULL, NULL, NULL, 0, NULL, '2021-08-07 20:26:57'),
(15, 'i', '$2y$10$1UnFr9qTKLWQug5waj3zd.O9fBKsNIxJ3JcFG7wKqmiVpWO5BiKqS', 'i', '2000-08-31', 'i@i', NULL, NULL, NULL, 0, NULL, '2021-08-07 20:30:20'),
(16, 'cookie', '$2y$10$Bj/8C8435WOp1nbM84Cnwub6x9cCbff756YZlcusydsZ0j5wa6fSG', 'cookie', '2000-08-18', 'cookie@cookie', NULL, NULL, NULL, 0, NULL, '2021-08-07 20:31:59'),
(17, 'AZERTY', '$2y$10$xq9Oq8Rr37QWpUu/hEGLJ.iW5x42aoiYMRuCIQMAEHPSyIW0TNbGu', 'test', '2020-08-05', 'q@q', NULL, NULL, NULL, 0, NULL, '2021-08-07 22:47:02'),
(18, 't', '$2y$10$7RSt8MoqRFQBJXQJ7pNt4ebFgUyYksOzzZXu19bvokgplD9uu4SPG', 't', '2000-08-19', 't@t', NULL, NULL, NULL, 0, NULL, '2021-08-07 22:48:00'),
(10, 'samedi', '$2y$10$I2j.8nJbQgkOCqIrkUlYfeFoYQMlHbIzQ6zKcifW/CDRkcJuVq9Sm', 'samedi', '2021-08-12', 'samedi@samedi', NULL, NULL, NULL, 0, NULL, '2021-08-07 09:38:51'),
(20, 'lqksjdlkjsq', '$2y$10$7ps1Jz4wef1LFhc/bbMdHuyANO2yV8ekuFzotvZwQM.ClrIRMjMv2', 'mmmmmmmmmm', '2021-08-26', 'qmlsdmqslkd]qdjhsqdkjhq', NULL, NULL, NULL, 0, NULL, '2021-08-08 11:33:13'),
(21, 'env', '$2y$10$0alFUizs9SAXHRop4VoBT.pyhhPVl/yq/fr38FkgNs.g2Tc79bJp.', 'env', '2000-08-25', 'env@env', NULL, NULL, NULL, 0, NULL, '2021-08-08 11:42:11'),
(22, 'ali', '$2y$10$RsL2AJFNXBXOICGdlKS9Iu0iV6cyith9QN6zPKDtb0L.t588bvla6', 'ali', '2021-08-20', 'ali@ali', NULL, NULL, NULL, 0, NULL, '2021-08-12 09:47:44'),
(23, 'vvvvvvvvv', '$2y$10$yFDArFUjzlQ9Qz7RwmKiNeQ8XLAMviiuexatqrkjYzrpHLczW23GG', 'vvv', '2021-08-19', 'vvvvvvv@vvvv', NULL, NULL, NULL, 0, NULL, '2021-08-12 10:34:27');

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `lenght` varchar(100) DEFAULT NULL,
  `max_speed` varchar(100) DEFAULT NULL,
  `crew` varchar(100) DEFAULT NULL,
  `passengers` varchar(100) DEFAULT NULL,
  `cargo_capacity` varchar(100) DEFAULT NULL,
  `picture_url` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`id`, `category_id`, `name`, `model`, `manufacturer`, `cost`, `lenght`, `max_speed`, `crew`, `passengers`, `cargo_capacity`, `picture_url`) VALUES
(1, 6, 'Sand Crawler', 'Digger Crawler', 'Corellia Mining Corporation', '150000', '36.8', '30', '46', '30', '50000', 'vehicle_1.png'),
(2, 6, 'X-34 landspeeder', 'X-34 landspeeder', 'SoroSuub Corporation', '10550', '3.4', '250', '1', '1', '5', 'vehicle_2.png'),
(3, 6, 'TIE/LN starfighter', 'Twin Ion Engine/Ln Starfighter', 'Sienar Fleet Systems', '20000', '6.4', '1200', '1', '0', '65', 'vehicle_3.png'),
(4, 6, 'Snowspeeder', 't-47 airspeeder', 'Incom corporation', '25000', '4.5', '650', '2', '0', '10', 'vehicle_4.png'),
(5, 6, 'AT-AT', 'All Terrain Armored Transport', 'Kuat Drive Yards, Imperial Department of Military Research', '100000', '20', '60', '5', '40', '1000', 'vehicle_5.png');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `planetes`
--
ALTER TABLE `planetes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `starships`
--
ALTER TABLE `starships`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `people`
--
ALTER TABLE `people`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT pour la table `planetes`
--
ALTER TABLE `planetes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `species`
--
ALTER TABLE `species`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `starships`
--
ALTER TABLE `starships`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
