-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2020 at 04:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `index`
--

CREATE TABLE `url` (
  `id` int(11) NOT NULL,
  `url` text DEFAULT NULL,
  `descriptors` text DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `indices`
--

INSERT INTO `url` (`id`, `url`, `descriptors`, `date`) VALUES
(1, 'https://en.wikipedia.org/wiki/Software', 'software', '1905-10-04'),
(2, 'https://en.wikipedia.org/wiki/History_of_software', 'software', '1809-03-13'),
(3, 'https://en.wikipedia.org/wiki/Application_software', 'software', '1912-06-05'),
(4, 'https://en.wikipedia.org/wiki/System_software', 'software', '2000-01-01'),
(5, 'https://en.wikipedia.org/wiki/Category:Software', 'software', '1895-10-29'),
(6, 'https://searchapparchitecture.techtarget.com/definition/software', 'software', '1831-11-11'),
(7, 'https://www.britannica.com/technology/software', 'software', '1995-03-12'),
(8, 'https://www.fsf.org/', 'software', '1833-12-03'),
(9, 'https://www.software.com/', 'software', '2002-11-03'),
(10, 'https://www.arduino.cc/en/Main/Software', 'software', '1893-11-03'),
(11, 'https://www.softwareadvice.com/', 'software', '1986-04-28'),
(12, 'https://www.computerhope.com/jargon/s/software.htm', 'software', '1845-08-17'),
(13, 'https://www.merriam-webster.com/dictionary/software', 'software', '1910-11-06'),
(14, 'https://www.gnu.org/philosophy/free-sw.en.html', 'software', '1818-09-22'),
(15, 'https://www.yourdictionary.com/software', 'software', '2000-01-01'),
(16, 'https://www.techopedia.com/definition/4356/software', 'software', '2008-07-13'),
(17, 'https://www.webopedia.com/TERM/S/software.html', 'software', '1802-12-21'),
(18, 'https://software-carpentry.org/', 'software', '2010-07-02'),
(19, 'https://en.wiktionary.org/wiki/software', 'software', '1923-04-03'),
(20, 'https://www.gnu.org/software/software.en.html', 'software', '1972-05-31'),
(21, 'https://en.wikipedia.org/wiki/Architecture', 'architecture', '1802-11-17'),
(22, 'https://www.britannica.com/topic/architecture', 'architecture', '1843-06-18'),
(23, 'https://www.architecturaldigest.com/architecture-design', 'architecture', '1974-10-11'),
(24, 'https://medium.com/@AAA_Publication/what-is-architecture-1b52f5339c2a', 'architecture', '1908-11-27'),
(25, 'https://www.dezeen.com/architecture/', 'architecture', '1948-07-11'),
(26, 'https://www.archdaily.com/951252/bus-house-ooiio-architecture', 'architecture', '2003-04-27'),
(27, 'https://www.archpaper.com/2020/11/op-ed-masterplanet-bjarke-ingels-architecture-has-become-universal-and-incapable-difference/', 'architecture', '1882-05-17'),
(28, 'https://www.archdaily.com/950757/multi-traffic-point-hoorn-wrk-architecten', 'architecture', '1924-06-17'),
(29, 'https://www.merriam-webster.com/dictionary/architecture', 'architecture', '1838-04-25'),
(30, 'https://www.archdaily.com/tag/dallas', 'architecture', '1955-01-30'),
(31, 'https://www.archdaily.com/architecture-news', 'architecture', '1889-06-24'),
(32, 'https://www.dictionary.com/browse/architecture', 'architecture', '1842-11-08'),
(33, 'https://www.thoughtco.com/architecture-in-dallas-texas-178460', 'architecture', '1998-12-22'),
(34, 'https://www.visitdallas.com/things-to-do/trip-ideas/dallas-architecture-tour.html', 'architecture', '1892-11-17'),
(35, 'https://www.designboom.com/architecture/', 'architecture', '1947-06-01'),
(36, 'https://www.architecturalrecord.com/', 'architecture', '2005-11-10'),
(37, 'https://www.aia.org/', 'architecture', '1882-02-14'),
(38, 'https://inhabitat.com/design/architecture/', 'architecture', '1834-09-28'),
(39, 'https://archive.curbed.com/2017/12/12/16666080/best-building-architecture-texas', 'architecture', '1950-09-12'),
(40, 'https://www.ted.com/topics/architecture', 'architecture', '1867-04-06'),
(41, 'https://en.wikipedia.org/wiki/Engineer', 'engineer', '1905-03-16'),
(42, 'https://en.wikipedia.org/wiki/List_of_engineering_branches', 'engineer', '1895-11-03'),
(43, 'https://en.wikipedia.org/wiki/Lists_of_engineers', 'engineer', '1829-06-03'),
(44, 'https://en.wikipedia.org/wiki/Regulation_and_licensure_in_engineering', 'engineer', '1896-08-13'),
(45, 'https://en.wikipedia.org/wiki/Engineering', 'engineer', '2015-03-31'),
(46, 'https://www.dictionary.com/browse/engineer', 'engineer', '1844-10-27'),
(47, 'https://www.careerexplorer.com/careers/engineer/', 'engineer', '1967-09-23'),
(48, 'https://www.careerexplorer.com/careers/engineer/#what-does-an-engineer-do', 'engineer', '1977-04-27'),
(49, 'https://www.careerexplorer.com/careers/engineer/#what-are-the-top-50-dream-employers-of-engineers', 'engineer', '1880-01-18'),
(50, 'https://www.careerexplorer.com/careers/engineer/#what-are-10-major-engineering-challenges-of-the-next-decade', 'engineer', '2018-08-12'),
(51, 'https://www.livescience.com/47499-what-is-engineering.html', 'engineer', '2013-01-17'),
(52, 'https://www.merriam-webster.com/dictionary/engineer', 'engineer', '1887-03-29'),
(53, 'https://typesofengineeringdegrees.org/', 'engineer', '1822-09-01'),
(54, 'https://www.britannica.com/technology/engineering', 'engineer', '1835-05-02'),
(55, 'https://studentscholarships.org/salary/679/engineers.php', 'engineer', '1842-09-02'),
(56, 'https://www.refinery29.com/en-gb/software-engineer-singer-band', 'engineer', '1821-08-17'),
(57, 'https://interestingengineering.com/engineers-create-self-watering-soil-that-may-revolutionize-farming', 'engineer', '1999-05-17'),
(58, 'https://www.pcgamer.com/au/meet-the-civil-engineer-building-his-own-country-inside-minecraft/', 'engineer', '1816-02-07'),
(59, 'https://www.thebalancecareers.com/engineering-careers-526011', 'engineer', '1859-11-16'),
(60, 'https://www.engineering.com/', 'engineer', '1927-06-18'),
(61, 'https://en.wikipedia.org/wiki/Engineering?sa=X&ved=2ahUKEwiH0pe-zoPtAhUEQKwKHV0zDWUQ9QF6BAgFEAI', 'engineering', '1856-08-08'),
(62, 'https://en.wikipedia.org/wiki/Engineering', 'engineering', '1945-02-12'),
(63, 'https://www.engineering.com/', 'engineering', '1975-10-09'),
(64, 'https://www.engineering.com/GamesPuzzles/tabid/82/Default.aspx', 'engineering', '1841-01-09'),
(65, 'http://www.engineering.com/GamesPuzzles/tabid/82/Default.aspx', 'engineering', '1983-12-11'),
(66, 'https://new.engineering.com/', 'engineering', '1869-05-30'),
(67, 'https://www.engineering.com/tv/thisweekinengineering', 'engineering', '1923-05-31'),
(68, 'https://www.livescience.com/47499-what-is-engineering.html', 'engineering', '1914-01-08'),
(69, 'https://www.britannica.com/technology/engineering', 'engineering', '1972-11-17'),
(70, 'https://www.topuniversities.com/courses/engineering/which-type-engineering-should-you-study', 'engineering', '1977-05-01'),
(71, 'https://typesofengineeringdegrees.org/', 'engineering', '1893-11-20'),
(72, 'https://www.merriam-webster.com/dictionary/engineering', 'engineering', '1812-07-11'),
(73, 'https://www.edx.org/course/subject/engineering', 'engineering', '2002-01-11'),
(74, 'https://www.dictionary.com/browse/engineering', 'engineering', '1903-11-13'),
(75, 'https://www.ieee.org/', 'engineering', '1974-12-25'),
(76, 'https://www.abet.org/', 'engineering', '1938-06-02'),
(77, 'https://viterbischool.usc.edu/', 'engineering', '1813-01-11'),
(78, 'https://www.youtube.com/watch?v=btGYcizV0iI', 'engineering', '1802-09-28'),
(79, 'https://www.youtube.com/watch?v=bipTWWHya8A', 'engineering', '1905-12-23'),
(80, 'https://www.springer.com/gp/engineering', 'engineering', '1867-09-17'),
(81, 'https://en.wikipedia.org/wiki/Design', 'design', '1875-08-31'),
(82, 'https://www.merriam-webster.com/dictionary/design', 'design', '1904-02-29'),
(83, 'https://www.merriam-webster.com/dictionary/have%20designs%20on', 'design', '1805-11-09'),
(84, 'https://www.merriam-webster.com/dictionary/designable', 'design', '1929-08-18'),
(85, 'https://www.merriam-webster.com/dictionary/designado', 'design', '1844-08-05'),
(86, 'https://www.merriam-webster.com/dictionary/designata', 'design', '1928-08-03'),
(87, 'https://www.dezeen.com/design/', 'design', '1956-06-15'),
(88, 'https://www.creativebloq.com/features/graphic-design-history', 'design', '1916-10-25'),
(89, 'https://www.dictionary.com/browse/design', 'design', '1915-04-13'),
(90, 'https://design-milk.com/', 'design', '1976-10-03'),
(91, 'https://design-milk.com/category/interior-design', 'design', '1944-05-30'),
(92, 'https://design-milk.com/category/architecture', 'design', '1871-07-11'),
(93, 'https://design-milk.com/category/travel', 'design', '1817-09-10'),
(94, 'https://design-milk.com/#link', 'design', '1854-01-01'),
(95, 'https://www.strate.education/gallery/news/design-definition', 'design', '1862-06-21'),
(96, 'https://www.lexico.com/definition/design', 'design', '1813-09-07'),
(97, 'https://en.wiktionary.org/wiki/design', 'design', '2019-03-04'),
(98, 'https://dictionary.cambridge.org/us/dictionary/english/design', 'design', '1864-08-02'),
(99, 'https://www.designboom.com/design/', 'design', '1962-02-10'),
(100, 'https://www.designboom.com/', 'design', '1984-04-19'),
(101, 'https://www.merriam-webster.com/dictionary/pattern', 'pattern', '1907-07-04'),
(102, 'https://patternbeauty.com/', 'pattern', '1937-09-27'),
(103, 'https://patternbeauty.com/collections/shop-all', 'pattern', '1938-09-02'),
(104, 'https://patternbeauty.com/collections/bundles-kits', 'pattern', '2015-04-19'),
(105, 'https://patternbeauty.com/collections/stylers', 'pattern', '1864-09-24'),
(106, 'https://patternbeauty.com/collections/shower', 'pattern', '1885-04-26'),
(107, 'https://www.dictionary.com/browse/pattern', 'pattern', '2005-05-14'),
(108, 'https://www.dictionary.com/browse/pattern-bombing', 'pattern', '1847-06-01'),
(109, 'https://www.dictionary.com/browse/patterning', 'pattern', '1872-01-25'),
(110, 'https://www.dictionary.com/browse/patternmaker', 'pattern', '1863-11-07'),
(111, 'https://pattern.com/', 'pattern', '2002-07-07'),
(112, 'https://en.wikipedia.org/wiki/Pattern', 'pattern', '1873-06-26'),
(113, 'https://dictionary.cambridge.org/us/dictionary/english/pattern', 'pattern', '1982-04-02'),
(114, 'https://www.lexico.com/en/definition/pattern', 'pattern', '1806-01-05'),
(115, 'https://en.wiktionary.org/wiki/pattern', 'pattern', '2012-04-11'),
(116, 'https://www.ulta.com/brand/pattern', 'pattern', '1938-11-30'),
(117, 'https://www.instagram.com/patternbeauty/?hl=en', 'pattern', '1937-07-12'),
(118, 'https://www.vocabulary.com/dictionary/pattern', 'pattern', '1831-04-04'),
(119, 'https://www.thesaurus.com/browse/pattern', 'pattern', '1956-12-05'),
(120, 'https://www.collinsdictionary.com/dictionary/english/pattern', 'pattern', '1877-04-08'),
(121, 'https://spaceplace.nasa.gov/supernova/en/', 'supernova', '2001-02-08'),
(122, 'https://www.nasa.gov/audience/forstudents/5-8/features/nasa-knows/what-is-a-supernova.html', 'supernova', '2008-02-07'),
(123, 'https://en.wikipedia.org/wiki/Supernova', 'supernova', '1982-06-05'),
(124, 'https://en.wikipedia.org/wiki/History_of_supernova_observation', 'supernova', '1829-05-17'),
(125, 'https://en.wikipedia.org/wiki/List_of_supernovae', 'supernova', '1902-12-30'),
(126, 'https://en.wikipedia.org/wiki/Type_Ia_supernova', 'supernova', '1825-10-11'),
(127, 'https://en.wikipedia.org/wiki/Failed_supernova', 'supernova', '2020-01-01'),
(128, 'https://www.space.com/6638-supernova.html', 'supernova', '1840-12-11'),
(129, 'https://earthsky.org/astronomy-essentials/definition-what-is-a-supernova', 'supernova', '1859-08-06'),
(130, 'https://spacecenter.org/what-is-a-supernova/', 'supernova', '1802-06-19'),
(131, 'https://www.britannica.com/science/supernova', 'supernova', '1982-09-07'),
(132, 'https://www.nationalgeographic.com/science/space/universe/supernovae/', 'supernova', '1840-01-23'),
(133, 'https://www.syfy.com/syfywire/supernovas-have-left-bizarre-evidence-on-earth', 'supernova', '1816-04-17'),
(134, 'https://www.space.com/supernova-explosions-affect-earth-atmosphere', 'supernova', '1952-03-31'),
(135, 'https://www.sciencealert.com/traces-of-supernovae-could-be-locked-in-the-rings-of-ancient-trees', 'supernova', '1862-10-15'),
(136, 'https://www.pnas.org/content/117/3/1240', 'supernova', '1898-11-25'),
(137, 'https://www.youtube.com/watch?v=B94yHU-e5_c', 'supernova', '1989-04-15'),
(138, 'http://hyperphysics.phy-astr.gsu.edu/hbase/Astro/snovcn.html', 'supernova', '1870-02-15'),
(139, 'https://www.dictionary.com/browse/supernova', 'supernova', '1960-02-16'),
(140, 'https://www.merriam-webster.com/dictionary/supernova', 'supernova', '1801-09-07');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
