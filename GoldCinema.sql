-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.0
-- Время создания: Июл 07 2024 г., 09:03
-- Версия сервера: 8.0.35
-- Версия PHP: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `GoldCinema`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Comments`
--

CREATE TABLE `Comments` (
  `ID_Comment` int NOT NULL,
  `ID_Movie` int NOT NULL,
  `User` varchar(20) NOT NULL,
  `Rating_User` float NOT NULL,
  `Comment_Text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Comments`
--

INSERT INTO `Comments` (`ID_Comment`, `ID_Movie`, `User`, `Rating_User`, `Comment_Text`) VALUES
(1, 361, 'Кирилл', 4.7, 'Очень понравилось'),
(2, 361, 'Герман', 3.5, 'На один раз'),
(3, 9691, 'Банан', 3.2, 'Не особо'),
(4, 9691, 'Купер', 5, 'Очень понравилось');

-- --------------------------------------------------------

--
-- Структура таблицы `Movies`
--

CREATE TABLE `Movies` (
  `ID_Movie` int NOT NULL,
  `Movie_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Genre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Movie_Time` int DEFAULT NULL,
  `RARS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `Description` text,
  `Picture` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Movies`
--

INSERT INTO `Movies` (`ID_Movie`, `Movie_Name`, `Country`, `Genre`, `Movie_Time`, `RARS`, `Rating`, `Description`, `Picture`) VALUES
(361, 'Бойцовский клуб', ' США, Германия', ' триллер, драма, криминал', 139, '18', 8.7, 'Страховой работник разрушает рутину своей благополучной жизни. Культовая драма по книге Чака Паланика', 'https://kinopoiskapiunofficial.tech/images/posters/kp/361.jpg'),
(9691, 'Бесславные ублюдки', ' США, Германия', ' драма, боевик, комедия, военный', 153, '18', 8, 'Американский спецотряд жестоко расправляется с нацистами. Пародия на военные фильмы от Квентина Тарантино', 'https://kinopoiskapiunofficial.tech/images/posters/kp/9691.jpg'),
(397667, 'Остров проклятых', ' США', ' триллер, драма, детектив', 138, '18', 8.5, 'Двое приставов расследуют побег пациентки из мрачной психбольницы. Параноидальный триллер с Леонардо ДиКаприо', 'https://kinopoiskapiunofficial.tech/images/posters/kp/397667.jpg'),
(447301, 'Начало', ' США, Великобритания', ' триллер, драма, детектив, фантастика, боевик', 148, '12', 8.7, 'Профессиональные воры внедряются в сон наследника огромной империи. Фантастический боевик Кристофера Нолана', 'https://kinopoiskapiunofficial.tech/images/posters/kp/447301.jpg'),
(453406, 'Безумный Макс: Дорога ярости', ' Австралия', ' фантастика, боевик', 120, '18', 7.8, 'Макс уходит от погони неистовой армии. Том Харди и Шарлиз Терон в грандиозной перезагрузке экшен-франшизы', 'https://kinopoiskapiunofficial.tech/images/posters/kp/453406.jpg'),
(462682, 'Волк с Уолл-стрит', ' США', ' драма, криминал, биография, комедия', 180, '18', 8, 'Восхождение циника-гедониста на бизнес-олимп 1980-х. Блистательный тандем Леонардо ДиКаприо и Мартина Скорсезе', 'https://kinopoiskapiunofficial.tech/images/posters/kp/462682.jpg'),
(535243, 'Каскадёры', ' США, Австралия, Канада', ' мелодрама, боевик, комедия', 126, 'l', 7.2, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/535243.jpg'),
(683766, 'Последний рубеж', ' США', ' криминал, боевик', 96, '18', 6.4, 'Бывший коп выбирает неправильное место для тихой жизни. Сентиментальный боевик по сценарию Сильвестра Сталлоне', 'https://kinopoiskapiunofficial.tech/images/posters/kp/683766.jpg'),
(725190, 'Одержимость', ' США', ' драма, музыка', 106, '18', 8.4, 'Юный барабанщик на тернистом пути к величию. Остросюжетная драма Дэмьена Шазелла, отмеченная тремя «Оскарами»', 'https://kinopoiskapiunofficial.tech/images/posters/kp/725190.jpg'),
(817167, 'Дом у дороги', ' США', ' драма, криминал, боевик', 121, 'l', 6.4, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/817167.jpg'),
(927494, 'Плохие парни до конца', ' США', ' криминал, боевик, комедия', 115, 'l', NULL, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/927494.jpg'),
(1005008, 'Майор Гром', ' Россия', ' криминал, боевик, комедия, короткометражка', 29, '12', 7, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/1005008.jpg'),
(1109271, 'Майор Гром: Чумной Доктор', ' Россия', ' криминал, детектив, боевик, комедия', 136, '12', 7.2, 'Самый брутальный коп Петербурга против мстителя в маске. Фееричный экшен, покоривший топ Кинопоиска и Netflix', 'https://kinopoiskapiunofficial.tech/images/posters/kp/1109271.jpg'),
(1140005, '10 жизней', ' Великобритания, Канада', ' фэнтези, комедия, мультфильм, семейный', 88, 'l', 6.8, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/1140005.jpg'),
(1183599, 'Огонь', ' Россия', ' драма, боевик', 131, '6', 7.9, 'Отряд пожарных спасает леса Карелии от пожара. Иван Янковский и Константин Хабенский в фильме-катастрофе', 'https://kinopoiskapiunofficial.tech/images/posters/kp/1183599.jpg'),
(1188529, 'Достать ножи', ' США', ' драма, криминал, детектив, комедия', 130, '18', 8.1, 'Частный детектив ведет запутанное дело о смерти известного писателя. Криминальная комедия с Дэниэлом Крэйгом', 'https://kinopoiskapiunofficial.tech/images/posters/kp/1188529.jpg'),
(1318972, 'Гнев человеческий', ' США, Великобритания', ' триллер, боевик', 119, '18', 7.6, 'Хладнокровный Эйч идет по следу грабителей, убивших его сына. Джейсон Стэйтем в брутальном боевике Гая Ричи', 'https://kinopoiskapiunofficial.tech/images/posters/kp/1318972.jpg'),
(1331441, 'Последний дракон', ' Испания, Китай', ' приключения, фэнтези, мультфильм', 98, '6', NULL, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/1331441.jpg'),
(1334852, 'Сто лет тому вперёд', ' Россия', ' фантастика, приключения', 142, '6', 7.7, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/1334852.jpg'),
(1338024, 'Планета обезьян: Новое царство', ' США, Австралия', ' фантастика, приключения, боевик', 145, 'l', 7, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/1338024.jpg'),
(1346358, 'Летучий корабль', ' Россия', ' мелодрама, приключения, фэнтези, комедия', 100, '6', 5.5, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/1346358.jpg'),
(1388409, 'Фуриоса: Хроники Безумного Макса', ' США, Австралия', ' фантастика, боевик', 148, 'l', 7.5, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/1388409.jpg'),
(1402937, 'Артур, ты король', ' США, Канада', ' драма, приключения', 107, '12', 8.4, 'Во время экстремальной гонки Майкл находит друга — бездомного пса. Приключенческий фильм с Марком Уолбергом', 'https://kinopoiskapiunofficial.tech/images/posters/kp/1402937.jpg'),
(4396438, 'Бедные-несчастные', ' США, Великобритания, Ирландия, Венгрия', ' драма, фантастика, комедия', 141, '18', 7.7, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/4396438.jpg'),
(4414587, 'Министерство неджентльменских дел', ' США, Великобритания, Турция', ' драма, боевик, военный, история', 120, '18', 7.1, 'Отряду авантюристов поручают невыполнимую миссию. Новый фильм Гая Ричи и продюсера «Пиратов Карибского моря»', 'https://kinopoiskapiunofficial.tech/images/posters/kp/4414587.jpg'),
(4477073, 'Атлас', ' США', ' драма, фантастика, боевик', 118, 'l', 5.9, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/4477073.jpg'),
(4664634, 'Оппенгеймер', ' США, Великобритания', ' драма, биография, история', 180, 'l', 8.2, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/4664634.jpg'),
(4902648, 'Годзилла и Конг: Новая империя', ' США, Австралия', ' фантастика, боевик', 115, 'l', 6.4, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/4902648.jpg'),
(4964806, 'Игра королевы', ' США, Великобритания', ' триллер, драма, история', 120, '18', NULL, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/4964806.jpg'),
(4967684, 'Материнский инстинкт', ' США', ' триллер, драма', 94, '18', 7, 'Две домохозяйки начинают вражду после трагедии. Энн Хэтэуэй и Джессика Честейн в триллере с атмосферой 1960-х', 'https://kinopoiskapiunofficial.tech/images/posters/kp/4967684.jpg'),
(4968810, 'Падение империи', ' США, Великобритания', ' драма, боевик', 109, '18', 7.2, 'Журналисты пробиваются в Белый дом в разгар гражданской войны. Грандиозная антиутопия Алекса Гарленда', 'https://kinopoiskapiunofficial.tech/images/posters/kp/4968810.jpg'),
(4991138, 'Меч короля', ' Швеция, Германия, Дания, Норвегия', ' драма, биография, история', 127, 'l', 7.3, 'Честолюбивый офицер покоряет пустоши в обмен на дворянский титул. Историческая драма с Мадсом Миккельсеном', 'https://kinopoiskapiunofficial.tech/images/posters/kp/4991138.jpg'),
(4991199, 'Мысль о тебе', ' США', ' драма, мелодрама, комедия', 115, '18', 6.8, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/4991199.jpg'),
(4992369, 'Неожиданные связи ', ' Франция', ' комедия', 92, '18', 7.3, 'Две семьи из разных слоев общества узнают правду о своем происхождении. Комедия нравов с Кристианом Клавье', 'https://kinopoiskapiunofficial.tech/images/posters/kp/4992369.jpg'),
(5024418, 'Полночь с дьяволом', ' США, Австралия, ОАЭ', ' ужасы', 93, '18', 6.6, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/5024418.jpg'),
(5047464, 'Бременские музыканты', ' Россия', ' приключения, фэнтези, комедия, семейный', 116, '6', 6.7, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/5047464.jpg'),
(5047468, 'Холоп 2', ' Россия', ' комедия', 119, '12', 7.1, 'Гриша решает перевоспитать заносчивую мажорку и отправляет ее в 1812 год. В роли Наполеона — Павел Деревянко', 'https://kinopoiskapiunofficial.tech/images/posters/kp/5047468.jpg'),
(5051126, 'Я не киллер', ' США', ' криминал, мелодрама, боевик, комедия', 115, '18', 7.2, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/5051126.jpg'),
(5094888, 'Хитмен. Последнее дело', ' США', ' триллер', 114, '18', 7.7, 'Киллер с прогрессирующей деменцией пытается искупить вину перед сыном. Причудливый нуар Майкла Китона', 'https://kinopoiskapiunofficial.tech/images/posters/kp/5094888.jpg'),
(5102255, 'Головоломка 2', ' США', ' фэнтези, комедия, мультфильм, семейный', 100, 'l', NULL, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/5102255.jpg'),
(5105855, 'Одна жизнь', ' Великобритания', ' драма, биография, история', 109, '18', 8.6, 'Молодой филантроп придумывает, как спасти сотни детей от концлагеря. Проникновенная драма с Энтони Хопкинсом', 'https://kinopoiskapiunofficial.tech/images/posters/kp/5105855.jpg'),
(5235968, 'Кентавр', ' Россия', ' триллер, драма, криминал', 101, '18', 7.5, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/5235968.jpg'),
(5248894, 'Заклятье. Шепот ведьм', ' Россия', ' триллер, ужасы', 90, '16', NULL, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/5248894.jpg'),
(5249455, 'Майор Гром: Игра', ' Россия', ' приключения, боевик', 168, '16', NULL, 'У бесстрашного защитника Петербурга — новый враг. Приключенческий экшен c Тихоном Жизневским в кино с 23 мая', 'https://kinopoiskapiunofficial.tech/images/posters/kp/5249455.jpg'),
(5275429, 'Лёд 3', ' Россия', ' мелодрама', 134, '6', 8.2, 'Надя идет наперекор отцу ради любви и большого спорта. Продолжение любимой истории с Александром Петровым', 'https://kinopoiskapiunofficial.tech/images/posters/kp/5275429.jpg'),
(5304408, 'Марс Экспресс', ' Франция', ' триллер, детектив, фантастика, боевик, мультфильм', 88, '18', 7.7, 'Сыщица Алин и андроид-клон ее мужа исследуют подполье Марса. Сай-фай для фанатов «Бегущего по лезвию»', 'https://kinopoiskapiunofficial.tech/images/posters/kp/5304408.jpg'),
(5304526, 'Почему ты?', ' Россия', ' драма, мелодрама', 103, '18', 6.6, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/5304526.jpg'),
(5325609, 'Неприличные гости', ' Россия', ' комедия', 83, '18', 5.9, 'Чувственные соседи предлагают супругам-снобам раскрепоститься. Пикантная камерная комедия с Павлом Прилучным', 'https://kinopoiskapiunofficial.tech/images/posters/kp/5325609.jpg'),
(5394675, 'Непослушники', ' Россия', ' комедия', NULL, '12', NULL, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/5394675.jpg'),
(5405057, 'Анора', ' США', ' драма', NULL, 'l', NULL, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/5405057.jpg'),
(5424610, 'Бывший в помощь', ' Россия', ' мелодрама, комедия', NULL, '16', NULL, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/5424610.jpg'),
(5437600, 'Эбигейл', ' США, Канада, Ирландия', ' триллер, ужасы', 109, 'l', 6.5, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/5437600.jpg'),
(5582020, 'Три богатыря. Ни дня без подвига', ' Россия', ' приключения, фэнтези, мультфильм', NULL, 'l', NULL, NULL, 'https://kinopoiskapiunofficial.tech/images/posters/kp/5582020.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`ID_Comment`),
  ADD KEY `ID_Movie` (`ID_Movie`);

--
-- Индексы таблицы `Movies`
--
ALTER TABLE `Movies`
  ADD PRIMARY KEY (`ID_Movie`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Comments`
--
ALTER TABLE `Comments`
  MODIFY `ID_Comment` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `Movies`
--
ALTER TABLE `Movies`
  MODIFY `ID_Movie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5582021;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Comments`
--
ALTER TABLE `Comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`ID_Movie`) REFERENCES `Movies` (`ID_Movie`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
