-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2025 at 10:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 'Unde cum et dolores non eum labore minima distinctio.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(2, 1, 8, 'Provident consequatur corrupti velit est odio minus eos.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(3, 2, 9, 'Voluptatibus rerum est explicabo quia eaque.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(4, 2, 10, 'Nisi dolor commodi architecto quia tempore omnis excepturi eius.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(5, 3, 11, 'Beatae accusantium assumenda voluptatem impedit voluptatum id sed.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(6, 3, 12, 'Minus perferendis id vitae et totam laboriosam qui.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(7, 4, 13, 'Hic aut voluptatibus delectus culpa.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(8, 4, 14, 'Dolor aut laborum aut voluptatem odio.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(9, 5, 15, 'Quis et dolore rerum rerum laudantium et.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(10, 5, 16, 'Libero reprehenderit sit mollitia autem.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(11, 6, 17, 'Non atque nihil consequatur dolores adipisci possimus temporibus.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(12, 6, 18, 'Et consequatur eos et est.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(13, 7, 19, 'Vitae quasi qui placeat dolor veniam velit.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(14, 7, 20, 'In pariatur est magni sunt repellendus et.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(15, 8, 21, 'Tempora aut porro quod asperiores possimus voluptas fugit sit.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(16, 8, 22, 'Omnis ipsa non sed officia.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(17, 9, 23, 'Suscipit quas itaque sit.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(18, 9, 24, 'Officia aperiam voluptas est voluptatem eum asperiores.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(19, 10, 25, 'Autem enim accusamus incidunt labore.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(20, 10, 26, 'Et id excepturi mollitia suscipit necessitatibus velit rerum.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(21, 11, 27, 'Rem quibusdam sunt fugit quia culpa quis.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(22, 11, 28, 'Nam ipsum itaque in aut dolore a.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(23, 12, 29, 'A culpa cum veritatis et facilis.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(24, 12, 30, 'Quidem optio totam at molestiae.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(25, 13, 31, 'Enim deleniti natus in.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(26, 13, 32, 'Omnis et dicta et molestiae sit deserunt odio.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(27, 14, 33, 'Occaecati sed inventore nisi nam.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(28, 14, 34, 'Aliquid est itaque incidunt ea sed.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(29, 15, 35, 'Totam et sint delectus repellendus aliquid.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(30, 15, 36, 'Perferendis tempora voluptas temporibus ut reprehenderit modi voluptatibus ipsam.', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(32, 1, 37, 'hello world this is test comments', '2025-11-25 22:47:32', '2025-11-25 22:47:45'),
(33, 16, 37, 'test1 test', '2025-11-25 22:48:44', '2025-11-25 22:51:37'),
(34, 18, 39, 'Nice post from Postman!', '2025-11-26 04:08:55', '2025-11-26 04:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_25_182614_create_posts_table', 1),
(5, '2025_11_25_182903_create_comments_table', 1),
(6, '2025_11_26_071132_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 39, 'api-token', 'f28c7a58751e7c65b641dd85f430345b22a65485bebeeeae619459e5aad9707b', '[\"*\"]', '2025-11-26 04:19:04', NULL, '2025-11-26 04:07:27', '2025-11-26 04:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Est facilis aut voluptatem animi eos aut error.', 'Facere nihil et dolorum placeat quia voluptatem quia. Unde ducimus est fugit dolore. Quia non eum amet sunt consectetur sed. Doloremque veritatis qui eum quidem quo dolor quo.\n\nId rerum quam eos eius officiis voluptatibus. Earum autem molestiae nostrum velit. Qui eius incidunt animi.\n\nVeniam cumque labore perspiciatis cum est aut distinctio deleniti. Expedita voluptatem rerum deserunt ex. Voluptas libero hic repudiandae quis quis deserunt inventore. Omnis doloremque ut at amet qui qui. Porro tempora enim sed labore.\n\nPariatur consequatur sed distinctio blanditiis doloremque eum culpa est. Quidem totam saepe odit sunt. Dolores voluptatibus fuga consequuntur voluptas amet aut illo aut.', 2, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(2, 'Sed dolor minima atque.', 'Non impedit consequuntur molestiae fugiat ut. Molestiae est enim modi rem vel quia. Facere molestiae rerum iure qui. Est autem aut tempore ut quis ab et est.\n\nEx voluptas et rem veritatis velit repellendus tenetur. Esse hic ut fugiat quam sit quaerat illum. Voluptas aut distinctio repudiandae eius eos alias quibusdam. Illum voluptatem tempora aut in velit voluptatibus omnis.\n\nQuis a et iure qui. Iusto nihil porro aliquid quis numquam doloribus. Et incidunt cupiditate aut totam sint officia. Ipsum a eos ipsa et eaque ut nobis.\n\nIusto fuga ut quo aut. Eligendi consequatur facere dolor voluptatem quia. Voluptatibus minima accusamus voluptatem officiis est. At explicabo alias est.', 2, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(3, 'Omnis ut ipsa voluptas fuga rerum aut dolor.', 'Magni ea sunt est dolorem quia sit explicabo. Laboriosam molestiae dolorem ab ipsa sunt recusandae quod. Excepturi sunt dolorem ea eum quae repellendus sit voluptate. Adipisci maiores numquam iusto rerum eum minima quam tempora.\n\nIure voluptas quo quis et tempora voluptates tenetur. Laudantium voluptas ipsa reiciendis rerum quaerat assumenda. Sunt autem laudantium tempore odit hic similique aliquid.\n\nVoluptatibus quo aperiam iste error omnis id nobis. Expedita voluptatem praesentium nisi tempora. Ipsam deleniti ea beatae consequatur id maxime sequi.\n\nIllo sint quibusdam neque ducimus quasi in perspiciatis. Consectetur tempore rerum aut dolore provident vitae illum. Voluptatem cupiditate repellat eligendi. Ullam a et minus eum est.', 2, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(4, 'Enim perferendis quibusdam omnis tempora accusantium.', 'Dignissimos numquam neque totam non ea aut. Nulla et ab vitae deleniti rerum perspiciatis.\n\nIllo perspiciatis consequuntur et aut quidem aliquid aspernatur totam. Sed quo in dignissimos temporibus quod explicabo.\n\nConsequuntur voluptatem rerum iusto. Eum officiis numquam voluptates modi vitae est. Rerum vel cupiditate quisquam labore consequatur debitis. Nisi et ea libero corporis dolores ipsa quia.\n\nQuo qui quia non sed nam. Aperiam porro ut consequatur laudantium possimus iure ut.', 3, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(5, 'Odio consectetur veniam est consequuntur.', 'Expedita qui doloribus at debitis neque non. Velit ducimus in est autem quia.\n\nNumquam excepturi quisquam temporibus dolor est alias id quis. Voluptatem dolorem earum facere quas tempora asperiores aspernatur et. Reiciendis voluptatem vero saepe voluptatem earum molestiae. Voluptas veniam consequatur quaerat quia ad. Aspernatur facilis necessitatibus aut officiis illum numquam.\n\nAmet illo maiores molestias in. Error dolorem porro aspernatur rem rerum. Mollitia assumenda sequi facilis sit. Ut tenetur sequi ipsam sit et possimus. Doloribus magnam doloremque rerum.\n\nNon minima ut aliquid. Eos quo repellat molestiae illo nihil ipsam repellat. Pariatur quia enim quisquam impedit et.', 3, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(6, 'Voluptatem maxime labore autem tempora commodi consequatur quia.', 'Accusamus odio totam adipisci error recusandae et vitae. Nisi sit quisquam suscipit odio sit laudantium. Similique laudantium id consequatur blanditiis distinctio. Ratione dolorem impedit atque.\n\nDolorem voluptas et ratione nihil fugit optio quam et. Nobis autem blanditiis vel debitis nemo id necessitatibus. Velit et neque totam autem optio perferendis. Nulla fugit distinctio voluptatem.\n\nRepellendus autem eos sed. Quia quia et consequatur impedit omnis. Facilis rem voluptas in nesciunt omnis suscipit fugiat. Voluptas tempore dolores impedit explicabo natus qui similique.\n\nIpsum omnis ratione et. Accusantium fugit totam rem dolorem impedit qui. Unde explicabo soluta sint aut placeat. Quod deleniti in ut ea deleniti asperiores.', 3, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(7, 'Iusto dolorem sed repellendus voluptatem eos.', 'Nesciunt sint consequatur accusamus ut quis. Occaecati odit est nihil et expedita accusantium. Dignissimos iure deserunt cupiditate nisi. Et tenetur nostrum inventore velit iusto minus exercitationem.\n\nEt nostrum aut et molestiae rerum id aut. Aut reprehenderit corporis cupiditate possimus omnis adipisci sapiente modi. Magni suscipit minima molestias laudantium quisquam.\n\nQuibusdam distinctio qui voluptatum consectetur eum quasi. Voluptatem odit totam dolor quos velit. Nesciunt dignissimos occaecati suscipit quam sed adipisci itaque.\n\nVeniam fugit dolorum repellat et est odio. Vero dolorum sed voluptatum similique voluptate sed vel.', 4, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(8, 'Delectus at quasi voluptatibus rem et tempora aliquid.', 'Quaerat aut dolor fugiat nisi reiciendis. Eveniet non incidunt nihil. Voluptas voluptatem tempora molestiae sed. Possimus explicabo ipsa dolores similique.\n\nEligendi minus dolores sit qui. Maiores error ad nam. Sed quod illum repellat et nihil commodi ut.\n\nUt est consequatur aut iure facere rem. Autem eum est ut molestiae. Recusandae exercitationem enim at et et. Quia laudantium id eveniet voluptatibus ducimus atque tenetur. Libero quis qui sit earum.\n\nOfficiis nesciunt voluptas numquam neque incidunt dicta. Non nemo voluptate eaque facilis libero odio. Magnam quaerat in fugiat et commodi laudantium rerum.', 4, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(9, 'Consectetur et beatae id ut.', 'Voluptatibus tempore nam nisi et. Quasi repellat fuga nihil quasi molestiae. Animi porro aspernatur recusandae officiis. Porro sint non ab iste adipisci excepturi.\n\nLaudantium nihil similique perferendis quia quia placeat amet et. Velit ducimus voluptatem nobis minus fuga blanditiis assumenda. Aut quidem rem praesentium hic vero quas.\n\nEt non maxime iste voluptates natus. Corporis ducimus accusantium quia in consequatur. Qui sit non nesciunt. Dolorem nobis nostrum qui accusamus et. Deleniti rerum autem vel eligendi.\n\nIpsam sapiente voluptas vel sequi quo. Minima voluptas autem nam quia minima.', 4, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(10, 'Deleniti necessitatibus ratione atque et rerum.', 'Omnis odit aperiam laudantium dolorem dolor. Eligendi tempore sit reiciendis tenetur repellendus ullam. Voluptate nisi eum totam ratione accusantium provident nihil.\n\nAtque aliquid quasi consequatur delectus. Minima ratione voluptas quidem consectetur. Exercitationem eaque saepe iusto adipisci rerum debitis neque. Porro illum officiis praesentium laborum dolor earum.\n\nAnimi adipisci non laboriosam corporis magnam sint. Cum rerum ut cupiditate autem dolorem. Recusandae itaque quas nihil doloremque.\n\nDucimus voluptatem dicta praesentium quae voluptate. Atque quis aut ut doloribus cumque ut. Deleniti similique dolore cupiditate iure consequuntur. Praesentium cum est rerum rerum corporis sequi. Illum sint id voluptatibus dolore voluptates repudiandae.', 5, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(11, 'Accusantium in magnam nihil qui.', 'Earum quia nemo soluta est et. Laudantium dolorem tempora commodi. Eveniet molestias nihil illo consequatur et ut.\n\nEt esse minus magnam saepe exercitationem. Qui ea eum cumque. Alias quia alias voluptatum vel fuga a deserunt voluptatem.\n\nVero qui natus facere et ut. Quia et dolore velit quae vel.\n\nAut ut omnis eum numquam corporis omnis eos repellat. Alias eius assumenda hic quis sunt minus. Autem eaque omnis omnis voluptas facere voluptatum soluta.', 5, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(12, 'Error velit suscipit consequatur quia id dolor ipsa.', 'Sint omnis maiores omnis accusamus omnis quaerat. Aut non asperiores qui et. Maiores voluptatibus rerum temporibus quia fuga ad et.\n\nAsperiores eum molestiae tempore nihil sit provident dicta. Adipisci enim a saepe id dolorum numquam eum. Temporibus nesciunt ea aut illum.\n\nOccaecati quam voluptas qui consequatur voluptate officiis ea. Et explicabo natus qui voluptates. Aut sed temporibus repudiandae alias.\n\nEt corporis et reprehenderit magni provident. Minus voluptates excepturi repellendus totam omnis consequatur. Voluptas voluptatem velit quo natus quis recusandae id.', 5, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(13, 'Omnis et dolor eos.', 'Hic animi aut id. Ullam dolor repudiandae animi fugit. Voluptatem impedit et quae ut eveniet aliquid.\n\nAut eligendi a nobis sit aut occaecati. Dolore voluptatibus tempora voluptas mollitia. Aliquam id praesentium quaerat. Facere et vitae voluptatibus quidem repellat id.\n\nIpsum officia asperiores necessitatibus amet illo error. Inventore voluptate et odio. Ratione incidunt amet sit tenetur. Veniam nesciunt facere suscipit et distinctio ut veniam.\n\nAspernatur ullam ducimus minus et voluptate sequi vel. Nihil est assumenda aliquam. Nobis dolor minima rem quia.', 6, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(14, 'Aut aut quibusdam repellat a.', 'Dolores dolorem ipsam facilis aut et. Commodi sit qui saepe est sed molestiae repudiandae ratione. Deserunt omnis pariatur quas velit doloremque officiis. Repellendus assumenda aut sed excepturi ratione.\n\nUt ab perferendis mollitia natus. Quibusdam perspiciatis rerum delectus temporibus neque accusamus molestias. Omnis dolore veniam odit id ad veniam. Consequatur nam non necessitatibus provident ex inventore.\n\nConsequatur rerum dolor consequatur eligendi est quo ut. Deserunt unde quia consequatur dolores. Molestiae culpa a maxime rem beatae amet.\n\nSunt sunt velit cumque omnis ullam maxime. Itaque voluptas et ut soluta. Nulla illum nam occaecati commodi temporibus est consectetur.', 6, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(15, 'Est distinctio et necessitatibus molestiae.', 'Et cum consequatur quis earum dolorem. Id vel provident non enim quo corporis ratione. Qui voluptatem nulla deleniti voluptatem vel voluptas. Sit modi maxime rerum sint.\n\nEst a soluta voluptatem quisquam. Qui veniam cum necessitatibus labore necessitatibus. Repellendus soluta nostrum accusantium quia nihil dicta. Quae sit rerum blanditiis repellat officiis et.\n\nBeatae pariatur doloremque aut et tenetur sapiente. Inventore fugit voluptatem magni consectetur. Eos quae dolorum quas doloremque. Doloremque eaque id soluta in aliquam.\n\nEa facilis voluptates nemo aliquam commodi. Quia enim molestiae aut necessitatibus excepturi inventore facere. Dolores beatae et impedit consectetur. Eius possimus non facere ea.', 6, '2025-11-25 21:40:02', '2025-11-25 21:40:02', NULL),
(16, 'hello this is test page', 'hello world this is post', 1, '2025-11-25 22:27:46', '2025-11-25 22:27:46', NULL),
(17, 'hello test test tes', 'hello test', 37, '2025-11-26 00:57:51', '2025-11-26 00:57:51', NULL),
(18, 'API Post', 'Post created via Postman collection', 39, '2025-11-26 04:08:14', '2025-11-26 04:08:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@example.com', '2025-11-25 21:40:01', '$2y$12$P/KL98.CFdZdZ52q/BDn8OaWUOXRNk6voQHYPjxDSFbohc2GuIAmC', 'admin', 'GIUMCTco8qBe8319WZ4YIrDuFwhPIYa8SXGbgEyrCrCzHa6tSwlqevGRVeuk', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(2, 'Miss Anika Doyle', 'bradford.murazik@example.com', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'FGC3qgQV3e', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(3, 'Rylee Bogisich', 'wunsch.keyon@example.net', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', '5t2G6r447I', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(4, 'Justyn Flatley Jr.', 'clovis40@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'r2NW3146rM', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(5, 'Retha Altenwerth', 'alysa10@example.net', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'UjPOo49EwS', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(6, 'Coleman Predovic', 'caleb.leffler@example.net', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'sluxe47tbC', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(7, 'Prof. Darion Ullrich', 'gabe05@example.net', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'aCJnEbV7s3', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(8, 'Madisen McLaughlin III', 'cassin.ivah@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'rfbt5iiVex', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(9, 'Retta Lindgren', 'littel.luigi@example.com', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'JS04byRUvG', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(10, 'Gay Carroll', 'hermiston.alice@example.net', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'cEFZJYXwTC', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(11, 'Arvid Jenkins', 'pleuschke@example.net', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', '25eYVxBGYF', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(12, 'Mae Armstrong', 'kshlerin.hank@example.com', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'PH3GDFTOkY', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(13, 'Troy Reinger', 'arlie.stiedemann@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'MpHvyU7nuf', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(14, 'Freddy Bailey', 'andres.wehner@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'MVo7h6J9qy', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(15, 'Rowan Schiller', 'lourdes75@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'LQ1Q6HJn86', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(16, 'Modesto Leannon V', 'neoma38@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'I0T4EeECua', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(17, 'Reynold Hand', 'korey.weimann@example.net', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'FTxGkxYMSY', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(18, 'April Kulas', 'loy37@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'ebo8j4tPRo', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(19, 'Annie Altenwerth', 'arussel@example.com', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'I4SNB9Voui', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(20, 'Zoey Bechtelar', 'cgreenfelder@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'Nrbc68r4L3', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(21, 'Prof. Fritz Hoppe', 'bdare@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'M92cnhFbgc', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(22, 'Earline Bins', 'jevon58@example.net', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', '3JKnVMau7f', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(23, 'Nyasia Powlowski', 'orlo.treutel@example.com', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'rBLYEctiJ3', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(24, 'Ms. Luna Jacobi PhD', 'brenda.marvin@example.net', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'UDZ88PZBxA', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(25, 'Chadd Crist', 'edythe.hammes@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'wBIZ1twtwN', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(26, 'Lonny Tromp', 'xlockman@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'JwV0EqL202', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(27, 'Modesto Blick', 'jamey38@example.com', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'OqmOTa6QKG', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(28, 'Dr. Liana Shields Sr.', 'funk.mauricio@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'dGVbQLRrl3', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(29, 'Dortha Leannon', 'ischiller@example.com', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', '4NHVuW2nLC', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(30, 'Hobart Hamill', 'fpollich@example.net', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'AIsJBxDeBb', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(31, 'Dr. Joesph Konopelski', 'lysanne56@example.com', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'BiEVHJ0HTN', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(32, 'Edwardo Daniel', 'grant.kimberly@example.com', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'gLXXcm99Sb', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(33, 'Dr. Mavis Goldner', 'rubie.little@example.com', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'nyfxqvP4cR', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(34, 'Vivianne Grimes PhD', 'abbott.gerald@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'kXcvakxrHh', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(35, 'Mr. Luther O\'Keefe Jr.', 'dangelo29@example.org', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', '8aStMdwfDs', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(36, 'Syble Koepp', 'bins.jerry@example.com', '2025-11-25 21:40:02', '$2y$12$lbi/g4fq0DzhkSGZ4E8vbe.K7.waa2Gf5Eehkg7myfDquoURUoz4u', 'user', 'An3dlDtIXZ', '2025-11-25 21:40:02', '2025-11-25 21:40:02'),
(37, 'test', 'test@yopmail.com', NULL, '$2y$12$13.SmLHndTX2AAq6ueuVYuI/7nNUTbyzwscJ1bfdlcifjTDhGUXNy', 'user', NULL, '2025-11-25 22:46:10', '2025-11-25 22:46:10'),
(39, 'Test User', 'test@example.com', NULL, '$2y$12$gDXNb3ipyM8CWopm7GzggOWOSTD6780PoUJRvMD7s4vm.lMxfLg/u', 'user', NULL, '2025-11-26 04:07:27', '2025-11-26 04:07:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
