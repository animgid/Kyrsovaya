-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 25 2025 г., 12:35
-- Версия сервера: 5.7.33
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `media_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `anime`
--

CREATE TABLE `anime` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `genres` text COLLATE utf8mb4_unicode_ci,
  `rating` float DEFAULT NULL,
  `poster` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `anime`
--

INSERT INTO `anime` (`id`, `title`, `year`, `genres`, `rating`, `poster`) VALUES
(1, 'Провожающая в последний путь Фрирен', 2023, 'Драма,Приключение,Фэнтези', 9.1, 'https://i.ebayimg.com/00/s/MTA4N1g3NzE=/z/b3wAAOSw3fNmPcWe/$_57.JPG?set_id=880000500F'),
(2, 'Атака титанов', 2013, 'Экшен,Драма,Фантастика', 9, 'https://media.kg-portal.ru/anime/a/attack6/production/attack6_2.jpg'),
(3, 'Ван-Пис', 1999, 'Экшен,Приключения,Комедия', 8.7, 'https://comicvine.gamespot.com/a/uploads/scale_medium/4/47703/3010266-1009248733-59648.jpg'),
(4, 'Наруто', 2002, 'Экшен,Приключения,Сёнен', 8.3, 'https://yandex-images.clstorage.net/ne5di1170/416a96b2P/VP5kNrYKvuucewJnPfaTsdG0hMFkq2x0DBb_xsv7xlLMGWwE-6m0NkBEp-5RotnHp8Gib696Lz5IslcXqkDEllHrbD7Wd_-LsGsSMkzy74WAcBxB2DOEqfyKdzNPg9Y76DlNGL7AHY4RNfqbFMpJo4-JbvaSN-aniatGpucZ2QfsNmnnYyIeJ4A7ChdopvsJEGSEBRRvsKEkDuMf86_iszzpJHymIP3PLSneHxTOoTcXpQ6aOu_2pwlnGnp7TbnDvJIJEw8yejt8Hxq36HrH8TSw0FF8C5CRMOanp8Mn9iOkHagoQrAxW9k1pp8gKmUzi5kuRtafGqNl0wqew2FFCzCudU-3puI3KJ9OY3wG__VQwLTxxNPkfXw2V_fnf25TkG20DE4IKU85EdoHuD5hIx8Nxs4uK1JTlf-6cm9ZJVvsppF3J16-D8STEvvUWhclvDj4rWhbWNksfi8zy_Ny57hJvPSW0M27Wd36AxjaRe-ngaYyKp_-Q9Xvpo4vubU7TBpN_-ti-lOcs1qfFGK77YwwKNVwUyCZeEY_Ny_bBhO0tbi4njSht62BQuNMBh0ne22-KuKHEkPB32Jyl-HVQwCeSZu_gir7lHtuZxBGG8mMMHwR5A9YCZSG769How6TKP20gJKYBVe1ZTb7rFqZaxORpsbG-26vlTsO8sedLc-U5hFbQ47qG1x_ZnfYCh95DDDUAQz7yKXcojODz0_mZyypBMAmfEGrvR1WFxjGrftjrSby0jee_wlTHvp_4QVTpDpJt1MmnoN4_4K7vN4XGUQEQAXEh8gxpO6vg_sjcp84ZZQUlnxNs42J4ofoFvVHtzHCQhYf7sfty9pWV8EF9wC6lVtbmiK_tEOaN3x-l-lUEIhZVLPg9eR-R0O_8_rfYInwEFL8Jc_VLTbvGKal098djkrS62ZHTUc6GqO5le_gfo1v12qu19yb7qMw9u9BNEhwUWwXyCHwxku7z18E'),
(5, 'Клинок, рассекающий демонов', 2019, 'Экшен,Фэнтези,Драма', 8.9, 'https://cdnb.artstation.com/p/assets/images/images/062/235/639/large/alexa-patrick-demon-slayer-3-temporada.jpg?1682643991'),
(6, 'Стальной алхимик: Братство', 2009, 'Экшен,Фэнтези,Драма', 9.1, 'https://yandex-images.clstorage.net/ne5di1170/416a96KDj/AOYtD49-94usO0sXFMqfsYjt2P1I6kQwSAr64qKys1aZbSgk4oDtflEd4-JF_uX26nDDH6NnWz8Z-xcODzCoik3vSD7CY46XrC8aOz3694HIuOiIRL9MVFgXntK7Gy6HfKXQnD4wfdepae6HEIqcy_NpeoPyH1pXGbe2Fse1dVdkroWLD37-U4wzQveYRucZdJhEUUSrdC0sRrc_ew-2w7D55JTmtOn7FUXaD8Ra9a_riZrCzgN-0xmzXoJfmRU7zHaVi4-yoo8QZyIzyOKH7RiIIE24j2SNrJqLx1_b4pfYncSk8lytQyXNzp9crnn7DxlWVjofBlMtV5qGw6U15yAGeY_jBrJrqEve-0Te-7GgHLhB7A8wWTjms8M7q4Y3YEWwSL6MXRMBlVbvaN5l3wOhTkLaO3rLtUOellcx3W_YsjF_EyoChwRzvquY1h-JMOTkeQADbMGQulsT11PKa8zNDOzuxCXXLRlKW0D6bSfbeaq2uvdazxWnulrvvb2T3Aadb1M6HntEky7LOGrDAfzYoCVYIySlUIL32-dbGhPUxXSsuvw108kxPq9MBmlr053Guk6r4i9Be-KSM1GlixQecW9HCtqH_MtOs3Tux2WoOHCNUOsQXVSmV__nW07XQJkMPFY85UuhSTYv0E5lU98xYlpWT5Y3oSdm3lutvWcwYg2DE-62B6y3tj_glp-lVDSwbZjvGE2c6lNPZ1vmx6htnJAeGDlnKaXe29Qa1RNr1SamXjf22xW7Uk4rkT1TJK7904-Gpg8Uy56j0ErHSUScxPW8b_yB-D5bLy9vcsNgEZwEZlSlZx3JSiPA1kXH29Uqvm6jQkvlawry_w3Z4-CGjetrHmKjPOueB3TKG6VMIHjJcNPkDTie298_e7qf8CW0wCbETadZGcJjmDohwx9VQsI2B5YjFdtaZpchleskcgVry5KC78iTDh-UDgORwND0oRgLkJl0FqN3XyNA'),
(7, 'Магическая битва', 2020, 'Экшен,Фэнтези,Драма', 8.7, 'https://avatars.mds.yandex.net/get-kinopoisk-image/10592371/352719fb-90a9-483b-96e8-3d1167ce5d0b/1920x'),
(8, 'Ван-Панч Мэн', 2019, 'Боевик,Комедия,Фантастика', 8.5, 'https://avatars.dzeninfra.ru/get-zen_doc/1708203/pub_5d8bd54a3f548700ad8be837_5d8bdafb97b5d400b2841558/scale_1200'),
(9, 'Подземелье вкусностей', 2024, 'Фэнтези,Комедия', 8.2, 'https://i.pinimg.com/474x/04/75/c5/0475c53451dfbe49b3f100c7d62c8851.jpg?nii=t');

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `genres` text COLLATE utf8mb4_unicode_ci,
  `rating` float DEFAULT NULL,
  `poster` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`id`, `title`, `year`, `genres`, `rating`, `poster`) VALUES
(1, 'Начало', 2010, 'Фантастика,Триллер', 8.7, 'https://st.kp.yandex.net/images/film_iphone/iphone360_447301.jpg'),
(2, 'Интерстеллар', 2014, 'Фантастика,Драма', 8.6, 'https://st.kp.yandex.net/images/film_iphone/iphone360_258687.jpg'),
(3, 'Зелёная книга', 2018, 'Биография,Комедия', 8.4, 'https://st.kp.yandex.net/images/film_iphone/iphone360_1108577.jpg'),
(4, 'Паразиты', 2019, 'Триллер,Драма', 8.6, 'https://papik.pro/grafic/uploads/posts/2023-03/1680266562_papik-pro-p-paraziti-poster-5.png'),
(5, 'Довод', 2020, 'Боевик,Фантастика', 7.5, 'https://yandex-images.clstorage.net/ne5di1170/416a96b2P/VP5kNrYKvuucewJnPfaTsdG0hMFkq2x0DBb_xsv7xlLMGWwE-6m0NkBUu_ZVo7X2-nzHP7NiLzpMuwpftwWQimSrZBeeaqPq1X5Hf3zavuTYgdz5FJ9k6ciqbx8LWxqnZImURPKs8WdwNaLr_GP9y6sZkipGd37H5WtiVl_VGZdAXj1Hz-5SO9iT7jvUWr-xkLT4rQAT9P1Q7qNDP1PCI_ClKGjGJCW3GVG6CxwiwdePnZIuruPm64UHyo5P1ZlbHIKhE68qAp-4Z4IrsEZDlYAUeHE869ApBLrLJx9j1su0HRjg0rS9Q5UFXpvQtjXL9x2mymrnetel2yb-o9H17wxmGT9T4o6jxDs6vyhKFxXUwOwNBO-0WWAac_9rj5obRE08uErEiTOJIVIjyKLV74uFPt5u9-5DTVPeSushBcO8irUHM7JSqyADqkd0cvsZiFhEUew_WKEsRt931yvKUzyJEDRWcKEXgdmK-yxWtSOrgZ46SjtWzy2v2v5HMUXToHb156PS8hf8i2Z7MC6jOcA8hGlA92ip_D7Hf69rnmssjfQcIoSt64WVgh9AWkF_E2HK5hLziiM1txLmqzFR42SKTb_Dqr6T-O8ym-CGq_H0xIBN4NNoqaj6UyPX-3Kr_BWcZCoEMaOJrY6z5LpZm2d5KrqWv-LfLVs2mtfdBQcICh3DOyYq66AvzpcgZmP1_NRIAeRj6KkA6rvXR1c6jyA5FIjC8DX3Oe06V6BGUeMHlZ4moi-S461vIlYnjZlvGAKlvxO6Gjf4w94_VP5HdRgYLNXsA6CdlO5zq0fDQsO8OSDkVgghO6k5ilesXmF3swVu9vqTRn9J3-Z-V7V999yujZ8THr63JC_Wg-jCi8kAlOx1bPOwiVyy459vBwJTVPlkNN5IedfNPU7XxCI502dtnkaqBy5TBdciit813Xs84nnngwZeczwbWnNkquMRdACg_RRb0NGkuts7R9MU'),
(6, 'Джентльмены', 2019, 'Криминал,Боевик', 8.5, 'https://st.kp.yandex.net/images/film_iphone/iphone360_1143242.jpg'),
(7, 'Дюнкерк', 2017, 'Военный,История', 7.8, 'https://i.pinimg.com/736x/a2/3e/17/a23e17bedfd9ac7fa6dc0c4a49aad3ec.jpg'),
(8, 'Бегущий по лезвию 2049', 2017, 'Фантастика,Драма', 7.7, 'https://avatars.mds.yandex.net/get-mpic/12418417/2a00000192ea66d4804baebbc906a7b29c4d/orig'),
(9, 'Джокер', 2019, 'Триллер,Драма', 8.4, 'https://st.kp.yandex.net/images/film_iphone/iphone360_1048334.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `serials`
--

CREATE TABLE `serials` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `genres` text COLLATE utf8mb4_unicode_ci,
  `rating` float DEFAULT NULL,
  `poster` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `serials`
--

INSERT INTO `serials` (`id`, `title`, `year`, `genres`, `rating`, `poster`) VALUES
(1, 'Игра престолов', 2011, 'Фэнтези,Драма', 9.3, 'https://st.kp.yandex.net/images/film_iphone/iphone360_464963.jpg'),
(2, 'Во все тяжкие', 2008, 'Криминал,Драма', 9.2, 'https://avatars.mds.yandex.net/i?id=497a5ac8619a40fde0d39fb46211354b_l-6392895-images-thumbs&n=13'),
(3, 'Чернобыль', 2019, 'Драма,История', 9.2, 'https://i.pinimg.com/736x/11/59/1a/11591a992325442ffd6ddc1f37d833c4.jpg'),
(4, 'Бумажный дом', 2017, 'Криминал,Драма', 8.7, 'https://images-s.kinorium.com/movie/poster/1623199/1080_51556426.jpg'),
(5, 'Очень странные дела', 2016, 'Фантастика,Ужасы', 8.4, 'https://upload.wikimedia.org/wikipedia/ru/b/b1/Stranger_Things_season_1.jpg'),
(6, 'Мандалорец', 2019, 'Фантастика,Боевик', 8.5, 'https://cdn1.ozone.ru/s3/multimedia-1-y/7223054938.jpg'),
(7, 'Доктор Хаус', 2004, 'Драма,Детектив', 8.9, 'https://sun9-55.userapi.com/impf/c627718/v627718259/2b057/l-rWMO5KEEo.jpg?size=580x856&quality=96&sign=4d003ef5ac667055958ba8473955beb2&c_uniq_tag=ApW-Pts9GyCFjsybTAV0KGO7iomyRU3AGUOV5iav374&type=album'),
(8, 'Шерлок', 2010, 'Детектив,Драма', 9.1, 'https://static.kinoafisha.info/k/series_posters/1920x1080/upload/series/posters/5/5/2/255/796438421595441635.jpg'),
(9, 'Друзья', 1994, 'Комедия,Мелодрама', 9.1, 'https://st.kp.yandex.net/images/film_iphone/iphone360_77044.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `serials`
--
ALTER TABLE `serials`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
