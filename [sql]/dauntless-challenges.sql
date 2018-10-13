-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- PC: 127.0.0.1
-- Created: Čtv 11. říj 2018, 15:49
-- Server Version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dauntless-challenges`
--

-- --------------------------------------------------------

--
-- Structure of table `badges`
--

CREATE TABLE `badges` (
  `id_badge` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `exp` int(11) NOT NULL,
  `note` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Filling table `badges`
--

INSERT INTO `badges` (`id_badge`, `name`, `image`, `exp`, `note`) VALUES
(1, 'Recruit', 'badges/chevron-1.png', 100, 'A fresh soon-to-be slayer. Just arrived in Ramsgate by airship. Accepted with a recommendation letter.\r\n\r\nThey are awaiting their training.'),
(2, 'Slayer', 'badges/chevron-2.png', 500, 'Recently completed his training and eager to take on new challenges.\r\n\r\nThey are taken on Low Grade hunts.'),
(3, 'Assistant', 'badges/chevron-3.png', 750, 'Slayers make up the bulk of the force on Ramsgate.\r\n\r\nThere is a constant need for new Assistants, so they are taken on many hunts.'),
(4, 'Adventurer', 'badges/chevron-4.png', 1500, 'Adventurers are allowed more freedom than the average Slayer.\r\n\r\nOften the first to arrive at Islands.'),
(5, 'Fighter', 'badges/chevron-5.png', 3000, 'Most slayers find themselves getting a job closer to Ramsgate.\r\n\r\nThey get into more experienced hunts.'),
(6, 'Defender', 'badges/chevron-6.png', 4500, 'Defenders are those who stay at Ramsgate and protect it at all cost.\r\n\r\nThey stand guard at night to overseer the city.'),
(7, 'Guardian', 'badges/chevron-7.png', 7000, 'Guardians protect the civilians in a crisis situation.\r\n\r\nThey can take orders only from Protector Badge and above.'),
(8, 'Protector', 'badges/chevron-8.png', 10000, 'Protectors make sure order is established around Ramsgate.\r\n\r\nThey command the Slayers up to Guardians to make sure they make their daily order.'),
(9, 'Captain', 'badges/chevron-9.png', 15000, 'Captains are allowed to take command of a ship when they need it.\r\n\r\nOften they command a small crew of Slayers in hunts.'),
(10, 'Warrior', 'badges/chevron-10.png', 22000, 'The warrior handles the more dangerous scenarios on the field.\r\n\r\nThey think about tactics and command others what to do.'),
(11, 'Hero', 'badges/chevron-11.png', 32000, 'Heroes have countless lists of tactics for battlefield and take care of rules behaving in Ramsgate.\r\n\r\nThey are usually accompanied by Captains.');

-- --------------------------------------------------------

--
-- Structure of table `difficulties`
--

CREATE TABLE `difficulties` (
  `id_difficulty` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure of table `guilds`
--

CREATE TABLE `guilds` (
  `id_guild` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `shortcut` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Filling table `guilds`
--

INSERT INTO `guilds` (`id_guild`, `name`, `shortcut`, `note`) VALUES
(1, 'Genesis', 'GEN', 'Erii\'s First ever joined Guild!!'),
(2, 'Administrators', 'ADMIN', 'Challenges Administrators'),
(3, 'Fearless', 'FEAR', ''),
(4, 'Apex Hunters', 'APEX', ''),
(5, 'Amnesia', 'AMN', ''),
(6, 'Insanus', '???', ''),
(7, 'Evolve', 'EVO', ''),
(8, '??????', 'DZA', ''),
(9, 'GodCarryCrew', 'CARRY', ''),
(10, 'Empty', '-', ''),
(11, 'Empty', '-', ''),
(12, 'Emtpy', '-', ''),
(13, 'Empty', '-', ''),
(14, 'Emtpy', '-', '');

-- --------------------------------------------------------

--
-- Structure of table `parties`
--

CREATE TABLE `parties` (
  `id_party` int(10) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure of table `profiles`
--

CREATE TABLE `profiles` (
  `id_profile` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_guild` int(11) NOT NULL,
  `id_title` int(11) NOT NULL,
  `id_challenge` int(11) NOT NULL,
  `id_weapon` int(11) NOT NULL,
  `id_badge` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `ch_done` int(11) NOT NULL,
  `sp_board` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Filling table `profiles`
--

INSERT INTO `profiles` (`id_profile`, `id_user`, `id_guild`, `id_title`, `id_challenge`, `id_weapon`, `id_badge`, `exp`, `ch_done`, `sp_board`, `date`, `public`, `note`) VALUES
(1, 1, 1, 8, 0, 89, 11, 26450, 0, 0, '2018-09-19 09:47:52', 1, 'Greetings Travellers,\r\nI\'m EriiYenn and I\'m Chief Programmer of Challenges Project.\r\nAlso please call me shortly Erii!! ^^\r\n\r\nI hope you enjoy this website as much as I do. I\'m trying to work on it every day to keep it with the Brand :3'),
(2, 2, 2, 2, 0, 0, 0, 0, 0, 0, '2018-09-19 10:20:13', 0, 'ADMIN?');

-- --------------------------------------------------------

--
-- Structure of table `runs`
--

CREATE TABLE `runs` (
  `id_run` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure of table `titles`
--

CREATE TABLE `titles` (
  `id_title` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Filling table `titles`
--

INSERT INTO `titles` (`id_title`, `name`, `note`) VALUES
(1, 'Rookie Slayer', 'Freshly arrived in Ramsgate'),
(2, '~ Administrator', 'Official Administrator'),
(3, 'Slayer', 'A perfectly average slayer'),
(4, 'Farslayer', 'An experienced slayer'),
(5, 'Tutor', 'A slayer who teaches others'),
(6, 'Commander', 'A slayer who overseers Ramsgate'),
(7, 'General', 'A Slayer who orders Commanders'),
(8, 'Chosen Ram', 'A slayer chosen to be The Ram');

-- --------------------------------------------------------

--
-- Structure of table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permission` tinyint(1) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Filling table `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `password`, `permission`, `note`) VALUES
(1, 'Charlie', 'adminuser@gmail.com', '8710d48396a52b73c5f8d692ad3ddce8e7b8927ae047e696858cb0f6a678226606bc4a22dea822b8f2d238676314a73ff9705a467fef55b994b5a0eaed2898f2', 1, 'First User!! \r\nWoohoooo'),
(2, 'Admin', 'admin@dauntless-challenges.com', '348815b00715c3db517c13b7ef0933dbeb9586b4c4b9c7bb755ec69dbc2accba6b690d002d6bf62660911244c9207df27ff66d4377ed3b66bac019bd41bf88ae', 1, 'Official Admin account!\r\nPlease do NOT abuse :>'),
(3, 'Test', 'test@gmail.com', '521b9ccefbcd14d179e7a1bb877752870a6d620938b28a66a107eac6e6805b9d0989f45b5730508041aa5e710847d439ea74cd312c9355f1f2dae08d40e41d50', 0, 'Test purposes');

-- --------------------------------------------------------

--
-- Structure of table `weapons`
--

CREATE TABLE `weapons` (
  `id_weapon` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Filling table `weapons`
--

INSERT INTO `weapons` (`id_weapon`, `name`, `img`, `note`) VALUES
(1, 'Bloodfire Axe', '', 'Obtained from Bloodfire Embermane'),
(2, 'Charrcutter', '', 'Obtained from Charrogg'),
(3, 'Deadeye Axe', '', 'Obtained from Deadeye'),
(4, 'Drask Axe', '', 'Obtained from Drask'),
(5, 'Emberscythe', '', 'Obtained from Embermane'),
(6, 'Firecutter', '', 'Obtained from Firebrand Charrogg'),
(7, 'Frostaxe', '', 'Obtained from Frostback pangar'),
(8, 'Gnashaxe', '', 'Obtained from Gnasher'),
(9, 'Hellcutter', '', 'Obtained from Hellion'),
(10, 'Kharabaxe', '', 'Obtained from Kharabak'),
(11, 'Koshai\'s Wrath', '', 'Obtained from Koshai'),
(12, 'Mooncleaver', '', 'Obtained from Moonreaver Shrike'),
(13, 'Zagachopper', '', 'Obtained from Nayzaga'),
(14, 'Pangax', '', 'Obtained from Pangar'),
(15, 'Recruit\'s Axe', '', 'An axe given to new players.'),
(16, 'Shrowd Reaper', '', 'Obtained from Shrowd'),
(17, 'Rezacutter', '', 'Obtained from Rezakiri'),
(18, 'Shockjaw Scythe', '', 'Obtained from Shockjaw'),
(19, 'Ragecleaver', '', 'Obtained from Ragetail'),
(20, 'Stormcutter', '', 'Obtained from Stormclaw'),
(21, 'Skarnchopper', '', 'Obtained from Skarn'),
(22, 'Skraev Axe', '', 'Obtained from Skraev'),
(23, 'Quillcutter', '', 'Obtained from Quillshot'),
(24, 'Shrike Axe', '', 'Obtained from Shrike'),
(25, 'Training Sword', '', 'An sword given to new players.'),
(26, 'Recruit\'s Sword', '', 'An weapon given to new slayers.'),
(27, 'Gnashsaber', '', 'Obtained from Gnasher'),
(28, 'Shrikesaber', '', 'Obtained from Shrike'),
(29, 'Quillripper', '', 'Obtained from Quillshot'),
(30, 'Skarnsaber', '', 'Obtained from Skarn'),
(31, 'CharrSword', '', 'Obtained from Charrogg'),
(32, 'Ember Cutlass', '', 'Obtained from Embermane'),
(33, 'Skraevsaber', '', 'Obtained from Skraev'),
(34, 'Draskrazor', '', 'Obtained from Drask'),
(35, 'Zega Sword', '', 'Obtained from Nayzaga'),
(36, 'Pangsaber', '', 'Obtained from Pangar'),
(37, 'Hellsaber', '', 'Obtained from Hellion'),
(38, 'Storm Katana', '', 'Obtained from Stormclaw'),
(39, 'Kharabak Cleaver', '', 'Obtained from Kharabak'),
(40, 'Ragesaber', '', 'Obtained from Ragetail'),
(41, 'Firesaber', '', 'Obtained from Firebrand'),
(42, 'Shockjaw Sword', '', 'Obtained from Shockjaw'),
(43, 'Razorwing Sword', '', 'Obtained from Rezorwing'),
(44, 'Frostsaber', '', 'Obtained from Frostback Pangar'),
(45, 'Deadeye Ripper', '', 'Obtained from Deadeye'),
(46, 'Bloodfire Saber', '', 'Obtained from Bloodfire'),
(47, 'Moonsaber', '', 'Obtained from Moonreaver'),
(48, 'Rezakatana', '', 'Obtained from Rezakiri'),
(49, 'Shrowd Slicer', '', 'Obtained from Shrowd'),
(50, 'Koshai\'s Tooth', '', 'Obtained from Koshai'),
(76, 'Recruit\'s Hammer', '', 'A hammer given to new players.'),
(77, 'Gnashmasher', '', 'Obtained from Gnasher'),
(78, 'Shrikemasher', '', 'Obtained from Shrike'),
(79, 'Quillhammer', '', 'Obtained from Quillshot'),
(80, 'Skarnmaul', '', 'Obtained from Skarn'),
(81, 'Charrhammer', '', 'Obtained from Charrogg'),
(82, 'Embermaul', '', 'Obtained from Embermane'),
(83, 'Skraevmaul', '', 'Obtained from Skraev'),
(84, 'Draskmasher', '', 'Obtained from Drask'),
(85, 'Zaga Maul', '', 'Obtained from Nayzaga'),
(86, 'Pangar\'s Roar', '', 'Obtained from Pangar'),
(87, 'Hellcrusher', '', 'Obtained from Hellion'),
(88, 'Stormhammer', '', 'Obtained from Stormclaw'),
(89, 'Kharabasher', '', 'Obtained from Kharabasher'),
(90, 'Ragehammer', '', 'Obtained from Ragehammer'),
(91, 'Firemace', '', 'Obtained from Firebrand'),
(92, 'Shockjaw Smasher', '', 'Obtained from Shockjaw'),
(93, 'Razorwing Hammer', '', 'Obtained from Razorwing'),
(94, 'Frostmaul', '', 'Obtained from Frostback'),
(95, 'Deadeye Hammer', '', 'Obtained from Deadeye'),
(96, 'Bloodfire Hammer', '', 'Obtained from Bloodfire'),
(97, 'Mooncrusher', '', 'Obtained from Moonreaver'),
(98, 'Rezacrusher', '', 'Obtained from Rezakiri'),
(99, 'Shrowdmaul', '', 'Obtained from Shrowd'),
(100, 'Koshai\'s Fist', '', 'Obtained from Koshai'),
(101, 'Recruit\'s Chain Blades', '', 'A chain blade given to new players.'),
(102, 'Gnashblades', '', 'Obtained from Gnasher'),
(103, 'Shrikeblades', '', 'Obtained from Shrike'),
(104, 'Quillblades', '', 'Obtained from Quillshot'),
(105, 'Skarnblades', '', 'Obtained from Skarn'),
(106, 'Charrblades', '', 'Obtained from Charrogg'),
(107, 'Emberblades', '', 'Obtained from Embermane'),
(108, 'Skraevblades', '', 'Obtained from Skraev'),
(109, 'Draskblades', '', 'Obtained from Drask'),
(110, 'Zagablades', '', 'Obtained from Nayzaga'),
(111, 'Pangblades', '', 'Obtained from Pangar'),
(112, 'Hellblades', '', 'Obtained from Hellion'),
(113, 'Stormteeth', '', 'Obtained from Stormclaw'),
(114, 'Kharablades', '', 'Obtained from Kharabak'),
(115, 'Rageblades', '', 'Obtained from Ragetail'),
(156, 'Fireblades', '', 'Obtained from Firebrand'),
(157, 'Shockjaw Blades', '', 'Obtained from Shockjaw'),
(158, 'Razorwing Blades', '', 'Obtained from Razorwing'),
(159, 'Frostblades', '', 'Obtained from Frostback'),
(160, 'Deadblades', '', 'Obtained from Deadeye'),
(161, 'Bloodfire Blades', '', 'Obtained from Firebrand'),
(162, 'Moonblades', '', 'Obtained from Moonreaver'),
(163, 'Rezakiri\'s Fangs', '', 'Obtained from Rezakiri'),
(164, 'Shrowd Blades', '', 'Obtained from Shrowd'),
(165, 'Koshai\'s Lash', '', 'Obtained from Koshai'),
(166, 'Recruit\'s War Pike', '', 'A war pike given to new players.'),
(167, 'Gnashpike', '', 'Obtained from Gnasher'),
(168, 'Shrike\'s Talon', '', 'Obtained from Shrike'),
(169, 'Quillpike', '', 'Obtained from Quillshot'),
(170, 'Skarnpike', '', 'Obtained from Skarn'),
(171, 'Charrpike', '', 'Obtained from Charrogg'),
(172, 'Emberpike', '', 'Obtained from Embermane'),
(173, 'Skraevpike', '', 'Obtained from Skraev'),
(174, 'Drask Spine', '', 'Obtained from Drask'),
(175, 'Nayzaga\'s Claw', '', 'Obtained from Nayzaga'),
(176, 'Pangar\'s Tooth', '', 'Obtained from Pangar'),
(177, 'Hellpike', '', 'Obtained from Hellion'),
(178, 'Stormpike', '', 'Obtained from Stormclaw'),
(179, 'Kharabak\'s Sting', '', 'Obtained from Kharabak'),
(180, 'Ragepike', '', 'Obtained from Ragetail'),
(181, 'Firepike', '', 'Obtained from Charrogg'),
(182, 'Shockjaw Pike', '', 'Obtained from Shockjaw'),
(183, 'Razorwing Pike', '', 'Obtained from Razorwing'),
(184, 'Frostpike', '', 'Obtained from Frostback'),
(185, 'Deadeye Pike', '', 'Obtained from Deadeye'),
(186, 'Bloodfire Pike', '', 'Obtained from Bloodfire'),
(187, 'Moonpike', '', 'Obtained from Moonreaver'),
(188, 'Rezakiller', '', 'Obtained from Rezakiri'),
(189, 'Shrowdpike', '', 'Obtained from Shrowd'),
(190, 'Koshai\'s Spine', '', 'Obtained from Koshai'),
(229, 'The Hunger', '', 'Obtained from shrowd hunts or patrols on Maelstrom.'),
(230, 'The Godhand', '', 'Obtained from Rezakiri hunts or patrols on Maelstrom'),
(231, 'Molten Edict', '', 'Obtained from Firebrand hunts or patrols on Maelstrom');

--
-- Keys for exported tables
--

--
-- Keys for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id_badge`);

--
-- Keys for table `difficulties`
--
ALTER TABLE `difficulties`
  ADD PRIMARY KEY (`id_difficulty`);

--
-- Keys for table `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`id_guild`);

--
-- Keys for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id_party`);

--
-- Keys for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id_profile`);

--
-- Keys for table `runs`
--
ALTER TABLE `runs`
  ADD PRIMARY KEY (`id_run`);

--
-- Keys for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id_title`);

--
-- Keys for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Keys for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id_weapon`);

--
-- AUTO_INCREMENT for tables
--

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id_badge` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `difficulties`
--
ALTER TABLE `difficulties`
  MODIFY `id_difficulty` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id_guild` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id_party` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id_profile` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `runs`
--
ALTER TABLE `runs`
  MODIFY `id_run` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id_title` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id_weapon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
