-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2022 pada 12.56
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_wpu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Programming', 'programming', '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(2, 'Web Design', 'web-design', '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(3, 'Personal', 'personal', '2022-07-03 02:06:13', '2022-07-03 02:06:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_28_034505_create_posts_table', 1),
(6, '2022_06_28_071109_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `category_id`, `user_id`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Distinctio eum ea est omnis illo commodi distinctio ut.', 2, 4, 'vero-ut-reiciendis-voluptatum-distinctio-quas-sit', NULL, 'Odit a sapiente error distinctio animi et fuga. Error illum ex possimus sit. Sapiente placeat odio in sunt culpa. Omnis nulla itaque odio ipsam.', '<p>Eos iusto nihil praesentium omnis velit dolores omnis. Repellendus consequatur voluptatibus in aspernatur et. Assumenda dolores veniam labore animi.</p><p>Magnam ea molestiae fugit dicta vel. Non qui quas ipsa ut est. Dolores ducimus nemo porro nihil ipsam in pariatur.</p><p>Assumenda omnis tempore ut nobis sed deserunt nisi laudantium. Eligendi sequi aut animi dolores recusandae. Id fugiat odit animi quibusdam quia et. Aut saepe omnis natus illo vel ut.</p><p>Cumque quis rerum accusantium aut laborum aspernatur omnis. Nobis dolor officia itaque eum earum consequatur voluptate. Saepe aut quo veniam maiores ullam sunt repellendus.</p><p>Odio consequatur sint eveniet magni dicta. Sint eum consequuntur laudantium sed est quibusdam. Cumque et consequuntur tenetur molestiae officia. Consequatur magni natus ex ad perferendis.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(2, 'Aut ab nemo nulla.', 1, 2, 'omnis-blanditiis-facilis-et-temporibus-delectus-corrupti', NULL, 'Perspiciatis qui dolores magni reiciendis. Saepe laborum sint cum. Qui enim voluptatibus repellendus architecto nisi. Quam magnam aliquam labore sunt. Temporibus sunt autem sed.', '<p>Ea ratione temporibus sunt quia labore rerum earum. Eos culpa debitis beatae. Soluta autem iure quo et rerum.</p><p>Consequatur soluta nam est. Aut doloribus autem id est id amet. Ut et dignissimos quaerat accusamus recusandae et. Repellendus et exercitationem laboriosam illo.</p><p>Deleniti earum quia rerum perspiciatis in et. Repellat architecto aut a qui aut. Nam cumque ut velit facere.</p><p>Sapiente hic odit voluptatem non. Ex provident quam et commodi voluptate. Consequatur occaecati cumque sit eius ut et rerum.</p><p>Magnam sequi perferendis qui aut. Ut sapiente rerum sed. Nihil autem dolorem cum eos atque dolorem. Fugit odit qui qui repellat iusto.</p><p>Unde labore nam quidem quis suscipit ad. Dolores totam qui dolor a voluptatum incidunt neque. Ut et quibusdam eum. Aliquid quam quis aspernatur est et.</p><p>Dolor mollitia ab blanditiis nemo ut. Impedit minus quaerat quisquam illo reiciendis unde nostrum. Beatae ipsa molestiae ea quaerat vel.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(3, 'Molestiae dicta dolores iusto esse nemo quo.', 1, 1, 'hic-consequuntur-rerum-et-cumque-ut', NULL, 'Fugit quo praesentium dolor. Ut numquam rerum et officia. Qui blanditiis qui eligendi. Tenetur molestiae quis velit optio.', '<p>Earum repudiandae ut dolores assumenda sed nemo. Consequatur et aut et blanditiis vitae autem qui voluptatem.</p><p>Magnam asperiores non possimus pariatur excepturi. Porro reiciendis sed amet non eaque. Quis error et tempora sapiente vel sit. Doloribus rerum rem quos.</p><p>Mollitia deserunt sed rem in delectus doloremque sed qui. Autem ducimus corporis consequatur soluta veniam eos beatae. Distinctio aut et doloribus dolorum sapiente.</p><p>Non voluptatum animi voluptate laboriosam ut est ut ullam. Ullam dolore est debitis veniam enim aut quo. Vero expedita rerum vitae aut blanditiis et. Enim sit aut id voluptas autem.</p><p>Rerum unde qui et provident veniam. Sed repellat quam iusto maiores qui. Ut unde natus qui accusamus eligendi debitis et. Veniam corporis ut deleniti aut.</p><p>Rem omnis dolores quibusdam tempore. Sed veniam tenetur laborum blanditiis. Repudiandae tempore nostrum ex quidem iste amet.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(4, 'Commodi sit quibusdam similique quis laudantium.', 1, 5, 'cupiditate-id-voluptatem-voluptatem-tempora-non-asperiores-voluptas', NULL, 'Molestiae tenetur dignissimos quibusdam id laudantium. Iste cum repudiandae et veritatis quibusdam. Ipsa cupiditate commodi esse molestiae.', '<p>Error quae nobis eos blanditiis incidunt doloremque omnis. Consequatur velit sed odit vero. Quas dignissimos adipisci nihil voluptas iusto molestias.</p><p>Velit et eveniet qui itaque doloremque pariatur in. Illum ut quia dolore labore dolor cum sunt provident. Vero id autem maxime id veniam. Est dolores reiciendis consequatur laboriosam molestias soluta aperiam.</p><p>Libero qui voluptate quas facilis. Sit et consequatur accusamus voluptatibus saepe repellat doloremque. Nulla molestias ea quaerat repellendus quia expedita id.</p><p>Id ex nulla in rerum voluptas officia. Sequi ea consequatur id autem. Est eius at blanditiis et.</p><p>Aut qui et et voluptatum fugiat rem. Necessitatibus illum provident quam quo harum reprehenderit. Quibusdam porro nulla ullam est. Libero quisquam amet earum. Optio eius officia velit ducimus qui esse.</p><p>Ab molestiae vero et dolore inventore laudantium sunt vel. Pariatur id harum delectus saepe est numquam. Optio voluptatem natus quo.</p><p>Rem sunt reprehenderit libero praesentium voluptatem possimus commodi. Labore tempore labore amet qui omnis non vel. Delectus et deleniti dolores eaque. Qui enim voluptas inventore labore suscipit voluptatem iure.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(5, 'Dolore et nobis eius sint debitis facilis iste.', 1, 2, 'quo-omnis-dolores-laborum-amet', NULL, 'Velit veniam sed doloribus eum ut. Placeat voluptas repellat deleniti sed occaecati deleniti suscipit. Pariatur blanditiis iure optio natus consequatur voluptatem.', '<p>Quia blanditiis soluta ut sit officia nulla. Voluptatibus sed qui ex ipsa aliquam voluptatem. Aspernatur voluptatum illo id quos et est.</p><p>Aut iure numquam asperiores dolorum nulla quia. Tenetur rerum nihil totam et dolorum. Cupiditate eos ducimus sunt maiores sit. Laboriosam corrupti eos et.</p><p>Voluptas suscipit molestias pariatur facilis voluptatibus rerum nulla suscipit. Dolor ad repudiandae ut maiores sed.</p><p>Iure laudantium et enim iste vitae esse. Occaecati soluta inventore provident quibusdam ipsum. Necessitatibus non rerum labore in.</p><p>Eius facilis sed sed ex et laboriosam rerum. Praesentium sequi blanditiis et cum tempore. Et quasi reiciendis quo.</p><p>Pariatur nihil sed minus error autem soluta. Ipsam ducimus accusantium soluta architecto aut accusamus. Qui hic beatae distinctio fugit provident voluptate. Eos qui sequi et pariatur.</p><p>Sed maiores totam consequatur quia esse qui. Doloremque dolorem ab sed iure exercitationem. Aut quos corporis explicabo veniam quia. Maiores praesentium pariatur iure ipsam ad deserunt debitis. Corrupti aut autem voluptatibus maxime voluptas eligendi aliquam.</p><p>Autem esse corrupti quis asperiores sit. Libero sapiente dolorem excepturi omnis magni deserunt rerum nam. Fugiat cumque qui delectus accusamus.</p><p>Deserunt animi rerum quidem quaerat aut eum sapiente. Beatae magnam vero ut nostrum animi laudantium aut ducimus. Earum quia unde dolor est soluta expedita ex. Doloremque et qui enim.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(6, 'Aspernatur aut et voluptatem vel facilis.', 2, 2, 'necessitatibus-reprehenderit-sed-nulla-a-corrupti', NULL, 'Voluptatem nihil ut neque dolorum nobis incidunt. Qui numquam dolorum sint ut nemo deleniti. Est ipsam deserunt odio quasi ut. Quo nostrum dolor hic aperiam cumque alias.', '<p>Nobis quia reprehenderit exercitationem. Ut veritatis alias nihil ut. Officiis ullam velit voluptatibus suscipit est rem consequatur.</p><p>Consequuntur qui odit officiis culpa non temporibus quas placeat. Amet enim repellendus omnis nihil harum debitis delectus.</p><p>Voluptas est adipisci quis aut. Voluptas dicta pariatur sint quam ducimus minus cum. Maxime ut quo dolores saepe hic consequatur incidunt. Aspernatur commodi consequatur consectetur magnam qui molestiae at dolor. Maiores placeat accusamus quod aspernatur animi voluptatum occaecati molestiae.</p><p>Et ratione voluptas sequi consequuntur doloremque et. Qui consequatur illo est id facere ipsum sequi. Ea quis sed sunt sint et. Libero et numquam consequatur labore doloribus ipsa.</p><p>Perspiciatis perferendis et soluta aut autem sint. Molestiae assumenda reiciendis hic qui tempore consequatur. Debitis repudiandae facere optio occaecati iste. Atque eveniet voluptatem iure temporibus eum numquam.</p><p>Est quod et aut maxime. Officiis repudiandae neque sit occaecati et consequatur. Omnis voluptas qui soluta ullam aut.</p><p>Autem tempore voluptatem aut harum ipsam ut. Sint aut aperiam dolorem aut ex quis. Ea suscipit atque aut neque unde ut. Et enim eveniet soluta consectetur ipsum non. Consequatur autem blanditiis reprehenderit atque sit.</p><p>Fuga deserunt dolores vero enim beatae est. Quisquam est quis quis voluptatibus explicabo alias praesentium. Nemo inventore corrupti et et porro. Qui aut et totam blanditiis. Voluptas aperiam incidunt error iure.</p><p>Rerum autem repellat excepturi dolor nihil sunt. Autem ipsa voluptas optio ipsa qui ipsum. Qui consequatur nostrum laboriosam commodi.</p><p>Et eaque est incidunt unde in asperiores. Voluptates voluptate vel sapiente. Aliquid natus et voluptas rerum et sed sed.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(7, 'Cupiditate quisquam dolore ex quisquam perspiciatis sit voluptate amet enim incidunt.', 1, 4, 'magni-est-qui-soluta-velit-dolores-maiores-adipisci', NULL, 'Et eaque atque expedita qui commodi sint. Doloribus totam eos et dolorem. Tempore ad eveniet qui ea. Tenetur ut et maxime distinctio laudantium unde architecto.', '<p>Dolor molestias blanditiis numquam praesentium fugit voluptatem. Ea sapiente et fugiat quae. Nam voluptatem sapiente neque qui.</p><p>Numquam similique impedit quidem molestiae quo sint. Animi voluptatem dolorum ratione dolores quia. Explicabo mollitia et modi est. Quibusdam rerum maiores veritatis qui totam dignissimos.</p><p>Qui et deleniti quas et. Ullam rerum quia reiciendis voluptate consequuntur. Nulla voluptas architecto nesciunt consequuntur vitae rerum.</p><p>Quod recusandae qui reiciendis veritatis sit laboriosam. Quibusdam sunt dignissimos aut culpa soluta explicabo ea omnis. Accusamus ullam et fugiat corporis et. Rerum laborum porro voluptatem soluta asperiores et aut.</p><p>Maxime quasi nisi doloremque nisi perferendis officia doloremque. Quibusdam ipsum maxime ut eum adipisci. Minima neque soluta quo deleniti placeat debitis vitae. Sit tempore et sint corrupti rerum a.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(8, 'A est est vitae repudiandae veritatis.', 2, 5, 'sint-ad-excepturi-culpa-labore-sed-consequatur-esse', NULL, 'Excepturi voluptatum officiis consequatur et tempore. Consequatur architecto occaecati mollitia eaque ad non ratione. Deserunt vel non sequi assumenda. Ea delectus maiores vel sint commodi.', '<p>Iusto velit id laudantium labore aut deserunt. Aperiam repellat dolorum ad pariatur ab qui corporis. Sed accusamus repudiandae unde.</p><p>Officia et aut ducimus ut ad voluptatum. Autem atque doloremque tempora inventore dolor autem. Animi sequi dicta voluptatem rerum fugiat molestiae et.</p><p>Eligendi blanditiis quis praesentium et. Atque repudiandae ut aut assumenda iusto quas qui. Occaecati fuga provident voluptatem et et at asperiores. Nemo sed quam ad nihil.</p><p>Beatae quam rerum in est autem. Ipsum libero assumenda non provident. Quia repudiandae sit quos autem. Sequi nihil totam accusamus qui et.</p><p>Sapiente praesentium vitae illum fuga. Quas sequi voluptatem voluptatem et. Est consectetur asperiores in architecto rerum quis qui. Praesentium neque fugiat deserunt possimus animi qui. Esse culpa quaerat omnis consectetur.</p><p>Exercitationem expedita atque ut impedit. Quia ex eius sint ab. Quia blanditiis laudantium omnis iste magni eligendi. Vel quae et dignissimos tenetur sequi libero.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(9, 'Libero animi aut numquam quia nihil.', 2, 3, 'distinctio-alias-reprehenderit-eius-voluptatibus-commodi', NULL, 'Eos odit mollitia rem necessitatibus earum sit soluta odio. Veritatis quidem totam eum in error est voluptatem. Fugit eligendi voluptatem ea amet dolorem tempore.', '<p>Maiores quisquam et aut nesciunt. Et aut cupiditate qui qui sit. Consequatur voluptatem iusto sunt.</p><p>Sit maxime corporis sit sit. Laboriosam sed dolore facere ut error sequi similique ab. Fugit labore omnis dolor illum laudantium pariatur.</p><p>Sapiente a vel eos velit enim rerum ipsum. Quibusdam adipisci voluptas sunt rerum quidem nemo eius facilis. Cum consectetur modi eos ut consequatur rerum et.</p><p>Est dolores dolor est optio. Nisi sunt ut et nam. Illo nesciunt minima omnis. Ea molestiae aspernatur qui vitae veritatis quae.</p><p>Ullam doloribus omnis consequuntur et dolorem rerum. Consequuntur quam laborum porro. Natus aut unde consequuntur tempore tenetur et. Nesciunt deserunt rem consectetur deleniti.</p><p>Nihil delectus modi accusantium sit molestias. Aperiam labore tempora ut excepturi accusamus quaerat. Minus eum iure incidunt dolores eligendi.</p><p>Maiores laudantium non corrupti. Unde aut inventore repellendus necessitatibus sed nobis. Ut in corporis hic expedita. A minima qui eligendi culpa sit numquam ipsa.</p><p>Aut odit consequuntur corrupti. Vel minima id vel ullam ut.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(10, 'Omnis odit illo quis mollitia sequi rem.', 1, 2, 'autem-maxime-ab-eligendi-odio-repudiandae', NULL, 'Et suscipit eum nam. Laborum molestiae cum architecto sit dolor corporis. Consectetur tenetur occaecati aut laudantium maxime. Placeat non et perferendis eos sit repellat animi. Id ut nam repudiandae et sapiente enim minima qui.', '<p>Voluptatem autem id et tempora modi. Sed quas laborum sed officia. Maxime quos eaque quis at rerum.</p><p>Ut quod omnis ullam est quam. Quibusdam vel fugiat deleniti qui eum nihil eaque provident. Ea nisi laudantium suscipit iste voluptas atque optio. Soluta quam deleniti est molestias et. Ea est dolorem quia ullam.</p><p>Porro eum et quia. Iure est hic vel sunt. Accusantium qui tenetur non voluptates beatae ea.</p><p>Architecto laborum optio consequatur. Possimus similique commodi reprehenderit eaque esse. Omnis omnis minima laudantium laborum rerum accusantium.</p><p>Ut quasi qui veniam fugit neque accusamus exercitationem. Non quam et cupiditate ipsum perspiciatis. Quas atque nemo vel numquam. Commodi earum aperiam non excepturi dolorum.</p><p>Velit quia voluptatem libero. Laboriosam ad perferendis minima repellendus magnam. Non quo sit deleniti ducimus aut.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(11, 'Molestiae officia quis praesentium est.', 1, 2, 'aliquid-vel-dicta-officia-ex', NULL, 'Ut aperiam omnis tempore saepe maiores earum non. Et consectetur aperiam consequatur officia ex ex. Iusto qui dolores vel temporibus ab sed ea.', '<p>Aut enim amet qui. Voluptates possimus est quos maiores impedit et. Consequuntur ullam qui omnis est voluptas cum.</p><p>Eum nam quisquam dolor ipsa. Fuga ipsam quos consequatur amet nobis ut et architecto. Eos ut voluptatem deleniti facere eos.</p><p>Et est ut excepturi optio recusandae distinctio corporis. Est sunt ea autem maxime. Est quia omnis quas in illo ratione enim.</p><p>Impedit sunt ducimus dolores sequi cum explicabo tempora. Quas est ullam saepe minima perferendis. Numquam aut non sed qui beatae nesciunt quia. Rerum aspernatur nihil aut sint.</p><p>Repellat animi rerum ipsam veritatis. Labore omnis animi a autem dolor inventore velit. Temporibus ut dignissimos magni. Ut nihil ipsa molestiae.</p><p>Perferendis animi dolorem doloremque tempore alias officia exercitationem. Voluptas maxime quidem impedit laboriosam repudiandae ut. Consequatur soluta suscipit minus ipsum in sit.</p><p>Dolor dolore ullam labore qui sint quia. Sit et nostrum ducimus iure. Dolorem et velit vitae. Magnam unde laudantium autem eos molestiae a.</p><p>Doloremque repellendus ipsum quisquam numquam corrupti asperiores consequatur. Illum consequatur odit dolor qui. Laboriosam voluptatem officiis eum et et earum illo.</p><p>Labore delectus distinctio natus et cumque nemo provident. Praesentium deleniti omnis illo rerum cumque velit ipsum porro.</p><p>Iusto sunt ex fugiat fugit. Quo et vero odit molestiae facilis quia aut. Quisquam dignissimos veniam provident eos eum dicta voluptatum. Eos vel praesentium nulla odit. Non praesentium commodi ex accusamus.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(12, 'Tempore minima culpa laudantium expedita nihil.', 2, 3, 'aut-cumque-assumenda-quis-aperiam-aut', NULL, 'Perferendis labore vel pariatur magni veniam. Neque minima corrupti veritatis quaerat modi. Et optio ut eius cum voluptatem ut. Dolor rem voluptas voluptatem magnam possimus tempora vitae.', '<p>Autem maxime voluptatem nesciunt aut suscipit deleniti qui. Culpa veritatis et iusto eveniet dolorem facere architecto officiis. Minus sit ut sint nostrum. Voluptas eligendi laboriosam sed accusantium iure.</p><p>Magni autem quia voluptas voluptas rerum aut odio. Distinctio architecto modi aperiam.</p><p>Aut dolorum sequi adipisci nemo consequuntur et mollitia. Voluptas sed nobis minima odio ea placeat. Doloribus dolore sit dolores reiciendis ipsam temporibus placeat.</p><p>Nulla vero rem dicta autem ut fugiat rerum. Qui quod eaque vel unde tempora. Voluptas esse quis rerum reprehenderit vitae modi quos. Temporibus voluptate sint quos consequatur sed similique corporis.</p><p>Itaque eum sint ut voluptas. Voluptatem fugiat sequi nulla et. Ratione incidunt aspernatur eos. Quasi nesciunt in quae dolores et. Quo sapiente atque vel a aliquid iure.</p><p>Necessitatibus perferendis quisquam fugit esse dolor non ut. Aliquam numquam aperiam amet dolorem autem reprehenderit. Magni at quis accusantium omnis.</p><p>Consequatur accusamus provident voluptatem et quibusdam ut beatae. Eos sed corporis tempora distinctio qui. Aut eum sed sed odit omnis ut provident cum.</p><p>Error qui sed tempore dicta. Unde voluptatem voluptatibus sunt minus nihil accusamus consequuntur. Ut eum est rerum. Ea saepe repellendus nostrum.</p><p>Omnis vel repudiandae quaerat dolores libero. Et repellat asperiores aut numquam quisquam et. Eos itaque odit dignissimos placeat vel deleniti quidem.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(13, 'Molestias quam veritatis.', 1, 3, 'natus-sed-modi-est-sapiente', NULL, 'Quis possimus magni quia qui odit. Dolor quod nisi vel quia quas. Nam illo illo aliquid distinctio laborum rerum. In quis tempora adipisci vel tempora porro.', '<p>Non impedit ea officiis tenetur culpa atque labore. Perspiciatis dolores delectus eaque vero numquam. Qui et quibusdam non sequi eaque adipisci qui occaecati.</p><p>Quia cumque sit unde voluptatem itaque. Est sit velit distinctio hic commodi. Debitis ipsum cupiditate amet fugiat quo voluptatem deserunt. Eaque reiciendis quisquam nemo.</p><p>Dolor minus non odio temporibus dignissimos. Tenetur ut ea doloremque nisi exercitationem iste. Odit hic qui molestias id ea tempore velit consectetur.</p><p>Quo vel ea voluptatibus est ipsam. Vero consequuntur eos cum ipsam aut. Corrupti cumque non tenetur praesentium.</p><p>Aliquid qui sint eveniet nihil doloribus iste et. Molestias ipsa est nesciunt voluptas in qui doloremque culpa. Tempora qui ducimus illo est non pariatur voluptatem.</p><p>Blanditiis non ratione atque unde consequuntur consequatur et. Voluptatibus consequatur inventore sunt voluptatem dolorem quis voluptas. Amet eum velit animi. Distinctio debitis amet et qui ipsa.</p><p>Sed non dolores tempora eius. Nobis quaerat reprehenderit et non ut adipisci. Nisi quam quia ut neque hic quas in. Amet nobis labore adipisci totam.</p><p>Sit autem dolor exercitationem necessitatibus nihil. Sit voluptatum saepe numquam aut suscipit. Numquam qui ratione est id. Qui possimus dolor eos ut et rerum.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(14, 'Corrupti repellat reprehenderit.', 2, 2, 'eligendi-rerum-est-amet', NULL, 'Omnis illum nemo tempore quisquam veritatis. Quasi ab praesentium ut doloribus voluptas voluptatem.', '<p>Soluta reprehenderit dolorum sit sit. Consequatur et facilis rem labore id error alias.</p><p>Ratione nobis nam reiciendis minus vel quia nisi. Consequatur dolorem nulla veniam laudantium quae cupiditate et quas. Excepturi eligendi et explicabo quo. Et quia autem maxime odit.</p><p>Sit excepturi consequatur iusto ut ratione aut. Necessitatibus velit tenetur molestiae et aut aut esse. Illo fuga ut non autem sit nihil eius quia.</p><p>Ex aut blanditiis voluptatem ipsa. Explicabo ut ipsum aspernatur quibusdam expedita. Nostrum distinctio et odit qui adipisci. Voluptas voluptas deleniti quod qui temporibus ut.</p><p>Voluptatem deleniti tempora eaque et perspiciatis. Aliquam facilis dolores voluptas consequatur ab ratione. Quos consequatur fugit quibusdam dolorum dolores.</p><p>Ab perspiciatis distinctio enim aut quasi beatae. Rerum in autem odit ipsum iusto.</p><p>Ut cumque nobis corporis. Omnis modi tenetur dolor iste et sit. Veniam doloribus ut qui.</p><p>Ipsam earum ut vel repellendus labore. Perferendis voluptas deleniti quis sunt molestiae ratione. Quia ut consequatur magni pariatur totam fugit. Ut sint est aperiam error ipsa. Et in velit voluptatum qui eligendi aperiam sunt.</p><p>Et nemo aut suscipit eum eos. Quo debitis et veritatis. Molestiae sapiente quis odio distinctio officia architecto quis. Consequatur consequatur et ut deserunt omnis at non.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(15, 'Non eaque sit.', 1, 1, 'veritatis-hic-exercitationem-ut-quos-molestiae-odio-sunt', NULL, 'Quibusdam culpa praesentium saepe enim odio eveniet iste. Totam temporibus vel sit. Praesentium minima aut tempora dolores nihil ad. Omnis aut maiores voluptatem beatae doloribus earum ipsum.', '<p>Cumque sapiente ullam voluptatem sed. Reiciendis fugit saepe ea iusto rerum. Perferendis adipisci eius blanditiis laboriosam eos autem maxime.</p><p>Sit est non sapiente laboriosam incidunt officia odio. Aut distinctio nobis hic perferendis quaerat cum. Explicabo est fugit et eos dolores. Alias facere reiciendis eum magnam qui. Suscipit laborum exercitationem officia corrupti quo in dignissimos.</p><p>Saepe nihil velit similique aut ad earum. Omnis ipsa voluptatem cupiditate iste quia. Dignissimos aut animi officiis error.</p><p>Sunt quo enim molestias autem recusandae commodi. Error architecto doloribus provident dolor sapiente. Nam praesentium vero velit dolor repudiandae voluptatem magnam.</p><p>Voluptas veritatis cupiditate vitae eos. Nihil rerum ut voluptatem illum aperiam corrupti numquam. Omnis accusamus consequatur exercitationem ea maiores.</p><p>Sit numquam fugit vero consectetur consequatur. Reprehenderit ut similique est dolor. Aliquam sed architecto molestiae itaque. Sunt minima est nesciunt libero.</p><p>Enim tempore nam dolorem in dolorum magnam recusandae. Qui qui eligendi ut. Tempora aperiam porro voluptatum qui harum.</p><p>Earum beatae officia assumenda ut qui iusto qui blanditiis. Dolor facilis in non sunt accusantium. Et laudantium illum facere recusandae amet.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(16, 'Aspernatur amet quo labore.', 1, 3, 'nulla-consequatur-unde-sit-exercitationem-perferendis', NULL, 'Aut doloremque aspernatur impedit qui. Omnis officiis accusamus dolorem nisi vitae. Error dignissimos inventore et aliquid repudiandae.', '<p>Necessitatibus nihil rem repudiandae veritatis perspiciatis dolore. Et ducimus sed non nihil voluptatem. Ea veniam delectus aut amet. Reprehenderit ipsam fugit optio sunt nemo beatae.</p><p>Libero voluptatibus deserunt voluptatem et quae labore. Corrupti quas quo ea quam quas. Quam quos ipsum accusantium. Quaerat quasi est corrupti quam quo in officia a. Labore aut error porro mollitia quas quos commodi.</p><p>Fugit aut quia natus modi non autem qui sed. Ut corrupti iure labore repudiandae non vitae. Hic deleniti ut optio facilis modi consequatur. Enim est veniam illo itaque unde alias eius. Molestias et aliquid soluta placeat assumenda.</p><p>Minus dolores numquam est aliquid sunt et ut. Quo sit aut at voluptas nemo. Fuga consequatur ipsa illo sint aut sed. Et magnam temporibus vel doloribus laudantium ipsum vel.</p><p>Dolore enim aut est laudantium earum ipsam. Pariatur dolore voluptas pariatur excepturi ut quia reprehenderit. Nam sed omnis reprehenderit laborum officia blanditiis cumque. Aut assumenda et sint perspiciatis assumenda voluptatem omnis.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(17, 'Minus corporis dolores maxime quia voluptatem est.', 1, 5, 'rerum-nam-sit-hic-dicta-aut-debitis-quam', NULL, 'Beatae optio quae aut totam ea optio veniam. Rerum exercitationem ipsam est consequatur. Quos quis necessitatibus alias voluptatem.', '<p>Voluptate eos at quibusdam. Perspiciatis aliquam quos sit incidunt qui rerum. Ex harum id maxime. Sapiente enim sunt ad quam.</p><p>Non non est reiciendis eum est sint veniam. Dolorem fugiat ipsam eligendi dolores. Officiis officiis et rerum dolores quam aliquid. Voluptates numquam sequi aut iste.</p><p>Incidunt dolorem sit voluptas delectus illum a delectus. Nisi modi velit minus mollitia. Deleniti dolores illo tenetur qui sunt. Eligendi repellat nisi voluptates eaque dolor ad minus.</p><p>Atque et consectetur voluptatem hic sed in laudantium. Iure consequuntur quaerat consequuntur ut. In non molestiae eligendi. Quos expedita laboriosam quas repellat et.</p><p>Eaque nesciunt ab explicabo est laboriosam. Exercitationem molestias cum quae quia et. Mollitia cupiditate consequatur sit pariatur sit amet et. Dolore et dolorem eum.</p><p>Officia id iusto cumque rem optio sint. Molestias quo eum ipsa dolor culpa atque. Facilis est voluptas aut.</p><p>Illo nesciunt debitis porro libero. Molestias non quia dolores et et quis commodi. Exercitationem magni officia dolores perferendis eligendi officiis.</p><p>Rerum blanditiis provident voluptatem eos. Delectus numquam libero sit non. Aut voluptatem aut ex possimus ipsam sed quisquam. Dignissimos beatae enim saepe repellat fuga ratione.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(18, 'Praesentium quidem accusamus.', 2, 5, 'dignissimos-molestiae-illum-ea-saepe-pariatur', NULL, 'Cupiditate impedit quia atque dolore aut. Enim assumenda aperiam repudiandae dolor est quod nostrum. Quis dolor sed nesciunt sit asperiores.', '<p>Et et non et saepe beatae illo. Voluptatem autem doloremque ratione et. Totam sit repellat similique illum.</p><p>Aspernatur voluptatem soluta modi dolorem quam enim. At qui sapiente recusandae consectetur quas voluptatem recusandae. Sequi et reiciendis quam reiciendis qui nostrum fuga. Atque impedit magnam consequatur mollitia.</p><p>Atque sit labore eum dolores dicta eos dolore. Porro molestiae iusto debitis omnis doloremque facilis qui nisi. Enim velit hic id aliquid nihil sequi itaque esse.</p><p>Mollitia enim dolore et perspiciatis. Eveniet nemo aliquid perferendis laboriosam natus aut. Vero excepturi quia eos qui accusamus commodi cumque.</p><p>Dolores mollitia et dicta voluptate. Quasi adipisci alias voluptates quod. Beatae quia non hic tempore voluptatibus illum beatae.</p><p>Voluptas est dolor doloremque recusandae. Unde quia eius ab est inventore. Iure culpa incidunt vel placeat quia nam adipisci. Officia sit deleniti officia et non possimus. Et omnis mollitia amet laborum odio rerum saepe ut.</p><p>Est quisquam nam iusto quia quia quisquam odio. Temporibus earum rem perspiciatis aut. Amet facilis sequi quos aut assumenda.</p><p>Beatae voluptates non quod ullam voluptatum sint. Aperiam eos et cupiditate est consequatur harum. Consequatur adipisci dolor sit qui aut. Culpa impedit tempore eum aut perferendis.</p><p>Mollitia error ipsa enim adipisci temporibus tempore qui harum. Numquam modi nobis aspernatur et maiores voluptates. Delectus eos suscipit voluptatum. Porro sed ut ratione qui aut quas.</p><p>Quasi blanditiis nihil nihil ut. Accusamus velit quo hic rem animi. Nihil non et vero expedita aut autem quo. Neque qui debitis sed id sed reprehenderit.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(19, 'Sint delectus quaerat dolor aliquid.', 2, 5, 'quo-ullam-rerum-consectetur-exercitationem-sed-aut-nostrum', NULL, 'Reprehenderit voluptate non enim velit dolores qui ut. Temporibus omnis deserunt deserunt autem dignissimos quisquam iste. Et sit earum ut quam iure ullam. Ut eum repellendus eligendi cum nulla delectus qui repellat. Ut rerum provident ex error.', '<p>Qui reiciendis libero placeat consequatur quia corporis dignissimos. Autem consequuntur inventore sequi. Non facere et unde et perspiciatis rerum.</p><p>Impedit aut inventore qui nemo et illo. Delectus enim magni voluptas voluptatem autem qui deserunt numquam. Sint ea aliquam deserunt aliquid. Non harum vel expedita quos quia.</p><p>Dolor sint et voluptas. Nostrum sit distinctio doloremque veniam necessitatibus vel eius. Esse nam quia laborum culpa aspernatur itaque ut. Pariatur adipisci officiis quasi numquam at odit.</p><p>Asperiores quia asperiores iusto. Nobis numquam earum dolores deleniti excepturi possimus sequi debitis. Assumenda ullam quae doloribus id.</p><p>Consequatur ex delectus non ut deserunt. Accusamus repellat atque qui non repellat ex. Temporibus inventore esse numquam ea.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(20, 'Consequatur mollitia quos.', 2, 1, 'quod-sunt-velit-necessitatibus-libero-ipsam-repellendus-natus-quod', NULL, 'Suscipit ullam numquam beatae. Maiores delectus ut et minus ea error quisquam.', '<p>Et perspiciatis omnis optio illum neque. Suscipit saepe quis aspernatur praesentium quia dolore illum. Adipisci porro reprehenderit ab eos non.</p><p>Maxime eligendi est maiores. Quis dolor incidunt et voluptas sint. Qui alias quam pariatur excepturi accusamus quod rerum.</p><p>In eum suscipit est aut illo nisi et molestiae. Aut et quibusdam quia non esse. Quam exercitationem deserunt asperiores aut inventore.</p><p>Facilis voluptatum esse consequatur reiciendis. Cumque aliquam ipsam est labore sed sit. Eius molestias non fuga natus debitis voluptatem omnis. Est dolores tenetur unde minus corporis est qui.</p><p>Labore ad cupiditate voluptatem quibusdam voluptatem dolorum vitae. Voluptates minima voluptatem voluptate a officia. Voluptatem molestias officia provident nemo quo deleniti. Ad omnis qui voluptatem recusandae.</p>', NULL, '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(21, 'post satu', 1, 1, 'post-satu', 'post-images/eb6myxbyUaln8KLBjvHRXSFXlXhfZZS6TP7JOkI7.jpg', 'post satu 2 3 4 5 6 7 8', '<div>post satu 2 3 4 5 6 7 8</div>', NULL, '2022-07-03 02:19:14', '2022-07-03 02:19:14'),
(22, 'Happy Family Healing Healing Club', 3, 1, 'happy-family-healing-healing-club', 'post-images/RGUw8fVc2dHm0yoi0z8G8z1ZrnHyrqPgRJpaFMkO.png', 'Yuk kita healing jalan jalan dong hahahahahah!!!!!!!', '<div>Yuk kita healing jalan jalan dong hahahahahah!!!!!!!</div>', NULL, '2022-07-03 02:30:16', '2022-07-03 02:30:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Febri Gilang Pratama', 'febrigilangp', 'febrigilangp@gmail.com', NULL, '$2y$10$mDq6AgY4OOszbJFHBHjNxe5FYJ4eGhgIvEg7xZxwr.6q8oUtIoiJq', NULL, '2022-07-03 02:06:11', '2022-07-03 02:06:11'),
(2, 'Jaswadi Darsirah Nashiruddin', 'manullang.mustika', 'habibi.harto@example.com', '2022-07-03 02:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '95Lhdlkp9mGD1vkTvuE4bcoV3LA3B0vA35zhpy7MZYQcj1pnoPk9PYm0pZym', '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(3, 'Genta Agustina', 'shania.prayoga', 'farida.vicky@example.com', '2022-07-03 02:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9zsJTwYOlh', '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(4, 'Iriana Ellis Halimah', 'pangestu53', 'yuni.wibowo@example.net', '2022-07-03 02:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hGzMZUeK6l', '2022-07-03 02:06:13', '2022-07-03 02:06:13'),
(5, 'Novi Winarsih S.E.', 'bsusanti', 'nugroho.vanesa@example.org', '2022-07-03 02:06:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2A4I9jbGEg', '2022-07-03 02:06:13', '2022-07-03 02:06:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
