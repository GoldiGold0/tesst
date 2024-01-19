-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 15 2022 г., 21:56
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `solar`
--

-- --------------------------------------------------------

--
-- Структура таблицы `name`
--

CREATE TABLE `name` (
  `name__id` int(11) NOT NULL,
  `name__name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le COLLATE=utf16le_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `telephone`
--

CREATE TABLE `telephone` (
  `tel__id` int(11) NOT NULL,
  `tel__tel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le COLLATE=utf16le_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tn`
--

CREATE TABLE `tn` (
  `id` int(11) NOT NULL,
  `tn__name` varchar(255) NOT NULL,
  `tn__tel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le COLLATE=utf16le_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`name__id`),
  ADD KEY `name__name` (`name__name`);

--
-- Индексы таблицы `telephone`
--
ALTER TABLE `telephone`
  ADD PRIMARY KEY (`tel__id`),
  ADD KEY `tel__tel` (`tel__tel`);

--
-- Индексы таблицы `tn`
--
ALTER TABLE `tn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tn__name` (`tn__name`),
  ADD KEY `tn__tel` (`tn__tel`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `name`
--
ALTER TABLE `name`
  MODIFY `name__id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `telephone`
--
ALTER TABLE `telephone`
  MODIFY `tel__id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tn`
--
ALTER TABLE `tn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tn`
--
ALTER TABLE `tn`
  ADD CONSTRAINT `tn_ibfk_1` FOREIGN KEY (`tn__name`) REFERENCES `name` (`name__name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tn_ibfk_2` FOREIGN KEY (`tn__tel`) REFERENCES `telephone` (`tel__tel`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
