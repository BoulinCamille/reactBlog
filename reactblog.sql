-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 13 oct. 2020 à 12:10
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `reactblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `author`, `content`, `created_at`, `image`) VALUES
(31, 'Mme.', 'Madeleine Marion', 'Atque qui rerum ad sint aperiam aut. Eum est id perspiciatis aut. Officia illum reprehenderit laborum laborum impedit et.', '1993-01-01 11:36:44', 'https://lorempixel.com/640/480/?11401'),
(32, 'Me.', 'Lucie Huet', 'Non cum ullam distinctio nisi excepturi sunt iste assumenda. Quia earum omnis veniam commodi. Totam est eum cumque. Cumque est maiores officia ut cumque velit assumenda. Sit et atque exercitationem et quis ut voluptatem qui.', '2001-10-30 23:49:22', 'https://lorempixel.com/640/480/?79494'),
(33, 'Dr.', 'Dorothée Bouchet', 'Laborum iste et libero blanditiis. Sunt officia molestiae earum voluptatem sed quia nisi. Molestiae in consequatur dicta at distinctio.', '2013-11-01 16:34:38', 'https://lorempixel.com/640/480/?15935'),
(34, 'Dr.', 'Sylvie Gallet', 'Ea sit laudantium autem facilis. Impedit labore eveniet porro expedita quidem est voluptates. Recusandae aliquid enim qui porro est.', '2014-10-26 15:52:18', 'https://lorempixel.com/640/480/?38262'),
(35, 'Dr.', 'Éléonore Reynaud', 'Non eaque necessitatibus dicta optio voluptatibus quisquam. Nobis cum ipsam sit dolorum dolores minus a.', '1975-09-10 15:15:57', 'https://lorempixel.com/640/480/?59887'),
(36, 'Dr.', 'Maryse Fontaine', 'Harum omnis assumenda aut ut voluptatem ut voluptatem. Qui qui recusandae eos aut aut. Sit excepturi blanditiis est commodi molestias.', '1971-11-01 15:24:33', 'https://lorempixel.com/640/480/?58926'),
(37, 'Me.', 'Manon Clement', 'Sint accusamus eos libero. Dolorem non sequi ad perspiciatis. Dolores ut dolores est vel sit quia.', '1981-08-01 05:10:19', 'https://lorempixel.com/640/480/?53405'),
(38, 'Pr.', 'Emmanuel Gaillard-Joly', 'Repudiandae magnam et adipisci possimus dolores nulla eum aut. Officiis est eos eveniet cumque reprehenderit numquam ipsa. Velit rerum eaque sed ad odio. Sequi nemo occaecati voluptas consequatur suscipit dolore omnis.', '2012-03-22 00:53:32', 'https://lorempixel.com/640/480/?77588'),
(39, 'Me.', 'Olivier Remy', 'Dolores ut totam praesentium ipsam ut illum. Eum sint sed vel placeat. Id ut corporis quas voluptates repellendus molestiae. Doloremque ea ut mollitia nulla ea quae ut.', '1993-01-25 03:52:48', 'https://lorempixel.com/640/480/?53111'),
(40, 'Pr.', 'Hugues Roy', 'Nostrum autem consequuntur a cupiditate dolorem ipsam. Rem eos dolor inventore impedit qui rerum totam et. Voluptas enim mollitia sit voluptatibus qui ea. Perferendis facere saepe sed tenetur enim soluta inventore. Qui dolor est cupiditate.', '2014-12-21 12:27:29', 'https://lorempixel.com/640/480/?52486');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C7294869C` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `author`, `content`, `created_at`) VALUES
(151, 31, 'Aimé Hamel', '<p>Sed voluptas exercitationem enim placeat iure aut. Sapiente nihil ut dolorem iure reiciendis.</p><p>Quia debitis esse blanditiis voluptatem unde. Quis ut soluta voluptas. Sequi voluptatem omnis rem quae dolorum.</p>', '1982-10-18 00:02:37'),
(152, 31, 'René Coulon-Traore', '<p>Velit commodi a rem et veniam iure ipsa. Voluptatibus in harum magnam voluptatem. Deserunt molestiae optio id voluptatum. Blanditiis id hic ad sapiente.</p><p>Quidem nihil aut cumque excepturi. Sapiente odit aut praesentium magnam. Eum suscipit et fuga ea. Voluptate doloribus sunt asperiores nemo eos et consectetur.</p>', '1973-11-25 03:35:17'),
(153, 31, 'Thomas Tanguy', '<p>Ducimus fugiat ut a similique ut odit. Velit voluptas ipsum illo ut natus repellendus. Vitae qui ut alias est sint vero. Sit cumque fugiat officia sapiente.</p><p>Alias quia nesciunt et ad dolor doloribus rem. Praesentium esse deleniti est optio dolorem voluptatum ut. Quos ab qui qui consequatur similique commodi. Eum commodi omnis optio qui impedit consequatur sit dolore.</p>', '1996-05-02 04:10:57'),
(154, 31, 'Emmanuel Faure', '<p>Est dolorem atque quaerat nam id quod. Aut provident earum consequatur quia veniam fugiat. Quis fugit qui odio consectetur officiis dolor. Sit ut quisquam possimus. In ut explicabo mollitia non consequatur voluptas mollitia.</p><p>Ipsum vel hic voluptates. Vel sed odit magnam rerum impedit non. Distinctio repellendus vero consequatur ut. Commodi atque debitis mollitia quis labore numquam. Esse sed odio dolores qui cupiditate ex placeat.</p>', '2007-04-27 11:38:59'),
(155, 31, 'Dominique Petitjean', '<p>Tempore architecto quo enim repellendus vero occaecati sed autem. Perspiciatis aut sequi exercitationem. Numquam asperiores molestias rem sapiente et placeat et aut.</p><p>Libero ab aut est autem temporibus. Dolorum earum molestias consectetur aut.</p>', '1982-09-07 07:54:39'),
(156, 32, 'Andrée Thibault', '<p>Sunt nemo rerum maiores enim. Nam eum commodi quas voluptatem repellendus. Neque nisi vel quam soluta perferendis deserunt perferendis. Non vel nesciunt qui quo ut fugit.</p><p>Labore molestiae ratione itaque voluptatem. Qui qui totam voluptatum. Et sequi ab voluptatibus neque maiores. Ea ut dolorum officiis aliquam.</p>', '2013-06-01 08:34:52'),
(157, 32, 'Bertrand Allard', '<p>Odit dicta et officiis pariatur. Ipsum et autem aperiam et quis beatae aperiam. Voluptate et voluptas similique et officia beatae numquam veniam.</p><p>Consequatur sequi repellendus quasi esse vero. Occaecati exercitationem laudantium dolorem in et saepe incidunt. Atque dolore id fugit excepturi recusandae tempora mollitia.</p>', '1976-03-01 18:19:06'),
(158, 32, 'Christelle Boucher', '<p>Qui nihil soluta omnis quia dolorem asperiores occaecati. Qui quia iure quod est quibusdam recusandae. Est aut et necessitatibus ab corporis est. Quis quaerat dolorem nulla aut aspernatur exercitationem iusto. Perferendis omnis eaque quae praesentium ut magnam.</p><p>In quaerat reprehenderit a dolores repellendus odio. Iste ut quo a non iste qui. Consectetur deserunt quis sit reprehenderit earum ea.</p>', '2011-11-24 23:41:57'),
(159, 32, 'Arthur du Ferrand', '<p>Laudantium ad quos quas dolorem et error molestiae. Amet maiores in assumenda minima quo labore perspiciatis. Et sed nulla maxime.</p><p>Vitae aut voluptatem aut cumque vero. Perferendis cum sit et saepe aliquid minus quisquam. Reprehenderit qui voluptates suscipit expedita.</p>', '2008-10-20 23:05:56'),
(160, 32, 'Lucie Peron', '<p>Aut unde deserunt excepturi corrupti neque. Molestiae quis et deserunt ullam tempora et. Dolor est consequatur recusandae aut placeat laboriosam.</p><p>Qui dolor eaque id asperiores. Voluptatibus voluptas excepturi magni perferendis illum aut. Aut facere quis quibusdam consectetur praesentium illo.</p>', '1987-08-03 13:30:31'),
(161, 33, 'Henriette Nguyen', '<p>Dolorem laborum repellat nostrum nesciunt esse. Vitae rem asperiores corrupti numquam. Placeat animi architecto non explicabo dolores est qui. Et a maiores omnis voluptatem.</p><p>Non mollitia optio aut. Iure consequuntur qui voluptas dolorum itaque sunt. Sit eveniet vel in quia recusandae doloremque. Asperiores in numquam libero consectetur alias est.</p>', '2010-06-07 23:51:42'),
(162, 33, 'Inès Guyot', '<p>Et facere autem odio rem maxime quis consequatur et. Pariatur dolores quasi ex minima. Velit corrupti quasi debitis a voluptatem.</p><p>Est est harum ab voluptatem consequatur deleniti. Facilis ea est veritatis quis magni. Cupiditate et assumenda alias quis nisi aut. Est sit omnis illo tenetur itaque ab autem et.</p>', '2016-10-16 17:26:05'),
(163, 33, 'Bernard Breton-Seguin', '<p>Omnis qui et porro voluptate qui praesentium. Porro enim consequatur possimus quidem sit. Maxime nihil sed pariatur accusantium aut.</p><p>Et ad animi nihil ipsa sed doloremque dolores. Est odio dolores iusto voluptatem maxime consequatur.</p>', '1996-01-06 07:45:49'),
(164, 33, 'Nicole Chauvet-Lagarde', '<p>Omnis quis culpa sint velit et. Perspiciatis earum quis repellendus. Aut porro sunt modi.</p><p>At nam laborum nihil quis dolor itaque reiciendis. Totam ipsa quia et voluptatem adipisci.</p>', '1998-12-20 00:42:55'),
(165, 33, 'Arnaude Colin', '<p>Est sit inventore est dolore nam autem. In temporibus facere consequatur eligendi quidem temporibus suscipit. Natus atque laborum inventore fuga quaerat nemo. Non sit quam reiciendis enim fugiat adipisci. Officia nemo nemo sed laboriosam sint at placeat.</p><p>Illum cum ab praesentium adipisci minima. Temporibus repudiandae non iure sint voluptates quia fuga. Id non assumenda adipisci consequuntur beatae. Possimus est soluta necessitatibus voluptas velit rem.</p>', '2006-06-12 07:27:20'),
(166, 34, 'Martin Chauveau', '<p>Occaecati molestiae porro et nisi quo itaque iure quaerat. Minus ratione molestias numquam voluptatem sapiente. Autem nobis sunt ut adipisci laborum.</p><p>Nihil quasi harum est maiores. Et est est ea et inventore facere explicabo omnis. Omnis qui pariatur itaque. Soluta voluptas porro excepturi sunt aspernatur dolore provident. Impedit dicta et laudantium rerum ratione ut necessitatibus.</p>', '1982-08-30 09:54:38'),
(167, 34, 'Benjamin Levy', '<p>Inventore ab dolor sint corporis sunt. Dolor in sit aut recusandae possimus officia consequatur dicta. Incidunt delectus eum est molestiae nesciunt. Cupiditate similique et ipsam.</p><p>Possimus sunt debitis illo rerum amet repellendus sapiente. Facere dolore iure eos eius omnis ut officia. Non consequuntur quidem nemo dignissimos iste explicabo dicta magni.</p>', '2019-09-21 09:18:21'),
(168, 34, 'Margaud Allard-Clement', '<p>Voluptatem unde ea rerum nesciunt sunt. Alias vel cumque ipsa est expedita aut vitae. Ipsa repellat sit nulla deserunt quibusdam aut natus. Neque necessitatibus architecto commodi officia dolorem unde.</p><p>Sunt deserunt sed blanditiis excepturi aut ut. Officia molestiae laborum corporis consectetur dolore dolore. Dolorem voluptas aut quis et.</p>', '2014-04-30 14:27:16'),
(169, 34, 'Olivie-Patricia Besnard', '<p>Possimus maxime quo quam itaque explicabo enim. Distinctio earum id nostrum corrupti autem provident quia. Numquam architecto ut et doloribus.</p><p>Consectetur fugit aut atque atque. Voluptate saepe laborum fugit. Maxime aut officiis laborum excepturi magni eveniet.</p>', '2020-05-10 14:49:41'),
(170, 34, 'Patricia Faure-Maillet', '<p>Qui minus sit nihil velit. Consequuntur unde ut consequuntur. Ut suscipit non neque in velit. Dolorem occaecati nostrum corporis quibusdam eos commodi.</p><p>Alias vero et perspiciatis adipisci eos sapiente. Dicta repudiandae magnam laudantium voluptatibus. Reprehenderit quis omnis mollitia modi. Molestiae minus minus iste et dolor quia qui vitae.</p>', '1997-05-06 02:23:05'),
(171, 35, 'Thierry de Ferreira', '<p>Nisi assumenda autem aut eum possimus fugit. Velit architecto consequatur eveniet labore sit. Pariatur hic magni ducimus dolor rem quia. Veniam sint dolores facere eligendi. Dolor in quidem qui excepturi perspiciatis aut.</p><p>Magnam quidem itaque sit cupiditate enim iure. Expedita cumque et quia perspiciatis debitis provident alias eos. Autem voluptatum aut et dolores dolor voluptatibus.</p>', '2003-09-29 13:12:05'),
(172, 35, 'Marianne Buisson', '<p>Sed explicabo consectetur possimus vel. Ducimus qui non laboriosam illum et. Quibusdam error est cum est unde. Nesciunt assumenda est aut ea sequi.</p><p>Ut enim quia deleniti voluptatibus. Iusto ducimus veritatis asperiores qui reprehenderit pariatur. Assumenda nostrum modi reprehenderit tempore ullam.</p>', '1980-09-16 17:43:01'),
(173, 35, 'Jules Marques', '<p>Quo quas nemo voluptates. Provident sapiente voluptatem voluptatum ut vel dolor quidem iste. Alias nihil neque et amet neque unde.</p><p>Vero incidunt et odio est. Fugiat voluptates facilis culpa atque et dolor. Unde error rerum sunt placeat.</p>', '1994-07-04 15:40:12'),
(174, 35, 'Adèle-Laure Benoit', '<p>Non quia ut accusamus rerum aut ullam. Reprehenderit eius magnam corrupti consequuntur tempore accusamus. Et et perferendis sequi tenetur modi similique.</p><p>Deleniti maiores ullam eum ullam. Eveniet ipsum quibusdam temporibus sed qui. Molestiae molestias possimus inventore.</p>', '1987-04-25 05:16:34'),
(175, 35, 'Auguste Dijoux', '<p>Quo eum in quaerat eos. Laboriosam suscipit cum laboriosam id sunt iure ut. Recusandae aspernatur quia nisi in minima non deleniti. Fuga et quidem inventore.</p><p>Qui culpa quia at ex minima voluptas et. Sit quis nobis alias cum ut quis nostrum veniam.</p>', '2017-09-25 11:21:18'),
(176, 36, 'Lucie Courtois', '<p>Qui dolore quos deleniti est voluptatem. Consectetur et reiciendis consequatur rerum fuga nihil hic voluptas. Culpa voluptatibus dolorem sint omnis. Ab dolor non quia quasi maiores iste.</p><p>Magni sit est a ullam aut qui asperiores. Dignissimos qui est ut eos accusantium dolores minima qui.</p>', '1973-04-30 05:52:19'),
(177, 36, 'Christelle Cousin', '<p>Vitae non eaque ut repellendus cupiditate. Aspernatur suscipit praesentium est inventore deleniti. Quam est ex debitis nemo molestiae voluptatibus excepturi. Repellendus voluptas aut odio excepturi eius.</p><p>Vel provident modi quia voluptatem in aut voluptate. Sunt dignissimos accusantium omnis reiciendis at non. Dignissimos minima quasi quia earum molestiae ea necessitatibus qui. Totam error quia voluptas minus praesentium excepturi placeat nemo.</p>', '1978-12-01 15:30:17'),
(178, 36, 'Henri Potier', '<p>Vitae adipisci vel ut mollitia. Voluptatum labore illum et enim id nesciunt. Aperiam recusandae alias sunt et consequuntur libero quia.</p><p>Officia reiciendis totam tempore iusto sed. Officiis consectetur sit tempora consequatur reprehenderit et et odio. Minus in ab quisquam. Rerum accusantium corrupti totam delectus facere non.</p>', '1996-10-17 17:55:14'),
(179, 36, 'Josette Gillet', '<p>Unde asperiores sed accusamus quia repellat. Nemo suscipit numquam accusantium ut totam. Ut quibusdam quae ut nisi voluptatem quia facere.</p><p>Consequatur fuga error voluptates. Ipsum atque doloremque incidunt ratione doloribus sint. Cumque pariatur et et beatae at. Odit eos sed adipisci quas eum.</p>', '2019-11-13 18:35:59'),
(180, 36, 'Benjamin Georges', '<p>Pariatur et et atque unde a. Ipsum hic magni sit qui soluta soluta et.</p><p>Suscipit voluptas ex qui nesciunt nostrum amet ut omnis. Dolore nobis eum praesentium minus.</p>', '1994-06-04 11:34:19'),
(181, 37, 'Nath Didier', '<p>Qui commodi eos iure consequuntur in vero non. Voluptate fugiat sed repellendus. In ea in aperiam dignissimos expedita et. Sit ut porro dolor nam cumque culpa.</p><p>Beatae aliquid iusto assumenda sequi perspiciatis. Nam pariatur voluptatem esse recusandae. Nihil dolorum architecto nam unde ipsa suscipit. Repellendus autem dolorum sed exercitationem tenetur consequatur.</p>', '1980-10-10 05:25:20'),
(182, 37, 'Odette Buisson', '<p>Eum quasi temporibus necessitatibus aut iusto. Alias similique repellendus reiciendis. Labore beatae sint nostrum a at sit sed. Totam dolores incidunt animi incidunt porro ipsum est. Et ad illo maiores minima nisi.</p><p>Aut debitis eius aperiam perspiciatis nam et recusandae. Officiis minus exercitationem et minima et sit. Amet voluptatem suscipit aut ab impedit. Qui maiores suscipit accusamus. Unde ab architecto architecto dolores molestiae quo.</p>', '1978-09-18 04:22:10'),
(183, 37, 'Hugues Briand', '<p>Et molestiae nostrum cum ea. Minima illum sit illum rem laboriosam et asperiores. Ex sit voluptas libero.</p><p>Ut deserunt laborum eligendi est cupiditate. Soluta atque vel sed est iste impedit porro. Officia porro similique molestiae quo iste harum. Tenetur dolores voluptas pariatur et soluta sapiente velit nihil.</p>', '1997-08-15 14:06:56'),
(184, 37, 'Gérard Lenoir', '<p>Eveniet alias nulla est ut. Veritatis itaque deserunt amet doloribus. Eos placeat neque nulla ut dicta omnis accusantium.</p><p>Sit fuga ut ea delectus qui autem alias. Minima quasi quisquam est et ex accusantium. Iure nesciunt neque ut numquam unde. Necessitatibus ut illo nulla aperiam commodi sit facilis.</p>', '1972-05-26 00:36:02'),
(185, 37, 'Paul Gregoire', '<p>Qui dolor veritatis vero recusandae praesentium. Cumque modi delectus et labore non sit laboriosam. Facilis nam dolores necessitatibus ut ut consequatur.</p><p>Voluptas et fugit ab commodi sapiente ut placeat. Ut ad est magnam id doloremque enim nulla. Dolorem cumque eum provident incidunt occaecati fugit saepe similique.</p>', '1972-06-05 14:27:28'),
(186, 38, 'Hugues Teixeira', '<p>Voluptas dolorem quisquam eum voluptatibus voluptatum velit. Doloribus reiciendis vitae voluptatem voluptatum eum eos. Facilis ut mollitia ut dolores ut voluptatem laborum. Voluptatum qui in beatae.</p><p>Dolor rerum fugiat dolores sit explicabo molestiae. Nostrum quia voluptas incidunt enim enim voluptatem aut. Distinctio minus qui atque omnis fugiat.</p>', '2017-12-14 06:12:46'),
(187, 38, 'Adélaïde Gosselin', '<p>Optio voluptas aut id reiciendis corporis iusto architecto numquam. Consectetur quia et eaque qui. Voluptas earum non quaerat eos id ut. Consequatur officia dolorem dolorem modi neque.</p><p>Quia possimus rerum cupiditate ex officia aperiam. Qui aut dicta quo ipsum corrupti ea. Dolores quasi repellendus velit accusamus qui rem.</p>', '1992-04-10 05:43:03'),
(188, 38, 'Gérard Poulain', '<p>Magni veniam ratione qui eius facere. Amet omnis quo distinctio architecto quibusdam reiciendis quia reiciendis. Assumenda ipsam corporis architecto cupiditate autem.</p><p>Omnis culpa velit exercitationem velit. Enim omnis ut molestiae dignissimos. Cumque nobis doloribus iusto excepturi et.</p>', '2008-11-09 14:23:26'),
(189, 38, 'Thomas Mary', '<p>Qui exercitationem pariatur optio similique. Odio libero non voluptatum cupiditate iure voluptas. Omnis ea nobis et et aut assumenda.</p><p>Quidem et esse ut molestiae et ipsa. Nulla aut perferendis aliquam possimus ut fugit. Veritatis qui blanditiis beatae error accusantium nihil nisi dicta. Aspernatur minus quidem totam ea quidem laborum.</p>', '1990-07-20 02:13:51'),
(190, 38, 'Alexandre Clement-Lecomte', '<p>Est aut sed ut quia hic perspiciatis nemo aut. Possimus nihil ea qui ullam soluta architecto accusamus omnis. Sed aliquam mollitia nulla et qui velit. Sit voluptas ea quaerat aperiam enim et non.</p><p>Repellat optio dolore vel quasi excepturi autem. Ut voluptas debitis accusamus minus sunt ducimus laboriosam. Hic itaque nemo hic quis qui. Labore eum alias a deserunt.</p>', '2007-10-15 01:57:27'),
(191, 39, 'Michèle Schmitt', '<p>Nihil voluptatum perspiciatis qui et libero. Ut voluptates non officia qui voluptas. Veniam sequi in vel qui quo dicta. Eveniet qui consectetur officiis nobis.</p><p>Nobis et necessitatibus voluptatem eligendi officiis quisquam. Laboriosam sit excepturi sint ipsam facere et nisi. Animi natus est eos eveniet numquam. Et aliquid sit vitae.</p>', '1988-06-03 00:59:48'),
(192, 39, 'Alice-Capucine Le Roux', '<p>Ab magnam fugit omnis et amet. Deserunt maxime illo non deleniti vel illo maxime. Delectus iure et quos ad. Dolor non quibusdam nam sunt.</p><p>Dolores sapiente modi dolor autem repellendus beatae amet. Et maiores vel esse atque.</p>', '1980-02-22 09:50:03'),
(193, 39, 'Lorraine Carre', '<p>Tenetur eveniet quo doloribus saepe delectus corporis quos. Totam et est possimus illum nemo. Sunt sunt qui beatae aut voluptatibus eligendi.</p><p>Neque ut ut consequatur et libero molestiae eum. Sed dolorem ut qui voluptatum quia distinctio. Illum tenetur aliquam voluptatem nemo. Aliquam qui sunt ea et voluptatem laborum magnam.</p>', '1970-08-12 15:48:00'),
(194, 39, 'Émile-Maurice Blanchard', '<p>Inventore libero quo numquam. Laborum accusamus velit dolores ut. Saepe sunt dolor et distinctio est.</p><p>Quia quas sapiente quis quia eveniet dolorem. Non sequi et distinctio soluta ut soluta dolores ipsa. Illum odit laboriosam optio eos temporibus cupiditate.</p>', '1997-06-17 15:07:07'),
(195, 39, 'Eugène Briand', '<p>Animi commodi perferendis voluptas et. Iusto ut exercitationem quam atque dolores corrupti. Sint quia illum tempore qui ex tempore.</p><p>At aut corrupti nemo architecto. Corporis dolorum ullam est cupiditate est et. Itaque porro ab necessitatibus aut. Praesentium temporibus tenetur et eveniet cum qui repellendus.</p>', '2007-01-27 21:05:16'),
(196, 40, 'Yves Clerc', '<p>Nihil aperiam iste aut commodi consequatur velit consequuntur. Et nihil quia ipsa porro. Aliquid quia deserunt odio id labore eum. Non quas accusantium et quidem et dolores culpa.</p><p>Nisi occaecati quia quidem non amet qui. Illo dicta aut qui. Quasi odio ut non non quis ex.</p>', '1997-01-02 12:19:09'),
(197, 40, 'Inès Michel', '<p>Excepturi dolorum sed consequuntur est ut sint. Ipsa ab consequatur impedit voluptas. Earum voluptatem sed ea officia atque molestias eum porro. Est omnis numquam vel rerum iste.</p><p>Aut possimus eligendi impedit quasi. Sed ut unde dolor quaerat tenetur.</p>', '1980-03-13 03:20:56'),
(198, 40, 'Henri Gimenez-Brunel', '<p>Dignissimos praesentium quos debitis error nostrum vitae qui dolore. Unde est ratione eum repudiandae voluptas. Error quis veniam est accusamus assumenda. Necessitatibus sed voluptatum quia aut perferendis.</p><p>Deleniti libero esse laboriosam ut dolorem. Qui sit rem sunt. Id eaque id debitis accusamus quae repudiandae est. Est sed molestias dolor. Et quia dolorum voluptatibus dolores illo et omnis.</p>', '1987-11-30 04:54:25'),
(199, 40, 'Margot Lecomte', '<p>Fuga voluptates quis aut ipsa hic illum eaque. Eum aut accusantium at aperiam rem maxime quasi. Exercitationem mollitia quibusdam sint voluptate ipsam. Ut cupiditate voluptatum natus rem et sit. Odit voluptate non vero suscipit.</p><p>Placeat tempora dignissimos animi. Molestias maxime et sit facilis consectetur amet est. Aliquam sint est ut amet quidem dolor placeat.</p>', '2014-01-08 05:36:07'),
(200, 40, 'Benoît Le Rodrigues', '<p>Explicabo hic corrupti fugiat enim. Quibusdam quidem est id rerum qui nobis. Vel dolores error nisi temporibus et tenetur accusantium.</p><p>Magni possimus iusto odit velit qui voluptatem aliquid. Doloribus temporibus rem mollitia excepturi quidem. Aspernatur unde et dolor quaerat enim cumque nostrum. Debitis nihil nihil temporibus facilis corrupti quas incidunt.</p>', '2014-12-20 12:32:35');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200831001218', '2020-08-31 00:12:27', 111);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
