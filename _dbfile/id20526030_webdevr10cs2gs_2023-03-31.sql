-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2023 at 09:50 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20526030_webdevr10cs2gs`
--

-- --------------------------------------------------------

--
-- Table structure for table `health_declaration`
--

CREATE TABLE `health_declaration` (
  `hd_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mi` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `temp` decimal(4,2) NOT NULL,
  `diagnosed` varchar(5) NOT NULL,
  `encounter` varchar(5) NOT NULL,
  `vaxxed` varchar(5) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health_declaration`
--

INSERT INTO `health_declaration` (`hd_id`, `fname`, `mi`, `lname`, `age`, `gender`, `mobile`, `temp`, `diagnosed`, `encounter`, `vaxxed`, `nationality`, `timestamp`) VALUES
(1, 'Adelaida', 'Daluma', 'Yarot', 6, 'Male', '9157680529', 39.99, 'no', 'no', 'yes', 'filipino', 1680234034),
(2, 'Angela', 'Ali', 'Terrado', 3, 'Male', '9169843560', 34.40, 'no', 'no', 'no', 'bosnian', 1680219756),
(3, 'Anna-lyn', 'Cabanlit', 'Tanghian', 3, 'Male', '9171507984', 9.99, 'no', 'no', 'no', 'laotian', 0),
(5, 'Carolyn', 'Cuesta', 'Sarino', 3, 'Female', '9194863215', 9.99, 'no', 'no', 'no', 'frenchman', 0),
(6, 'Ceazar Lan', 'Ebabiosa', 'Santiniaman', 3, 'Male', '9203987265', 9.99, 'no', 'no', 'no', 'kenyan', 0),
(7, 'Corazon', 'Pedro', 'Romero', 3, 'Male', '9219576810', 9.99, 'no', 'no', 'no', 'chadian', 0),
(8, 'Dishna', 'Ytang', 'Quimbo', 3, 'Female', '9222183706', 9.99, 'no', 'no', 'no', 'nigerien', 0),
(9, 'Ebrahim', 'Mariquit', 'Pueblas', 3, 'Male', '9559245730', 9.99, 'no', 'no', 'no', 'gabonese', 0),
(10, 'Elmer Patrick Jr.', 'Cahindo', 'Peje', 3, 'Female', '9563679508', 9.99, 'no', 'no', 'no', 'iraqi', 0),
(11, 'Jamirah', 'Agbay', 'Martizano', 3, 'Female', '9153168902', 9.99, 'no', 'no', 'no', 'indonesian', 0),
(12, 'Janie', 'Abo', 'Mar', 10, 'Female', '9168261340', 9.99, 'no', 'no', 'yes', 'syrian', 0),
(13, 'Janiza', 'Casipe', 'Manza', 10, 'Male', '9174592076', 9.99, 'no', 'no', 'yes', 'finn', 0),
(14, 'Jeena rhea', 'Elorde', 'Malolot', 10, 'Female', '9182019487', 9.99, 'no', 'no', 'yes', 'latvian', 0),
(15, 'Jesina', 'Canillo', 'Macatanong', 10, 'Female', '9192067385', 9.99, 'no', 'no', 'yes', 'canadian', 0),
(16, 'Jessa Mae', 'Sapio', 'Macarandan', 61, 'Female', '9204976082', 36.90, 'no', 'no', 'yes', 'filipino', 1680183725),
(17, 'Jessel', 'Radaza', 'Macapiil', 10, 'Female', '9216209715', 9.99, 'no', 'no', 'yes', 'sudanese', 0),
(18, 'Jessel', 'Radaza', 'Macapepe', 10, 'Male', '9222710546', 9.99, 'no', 'no', 'yes', 'norwegian', 0),
(19, 'Jessel Ann', 'Radaza', 'Macapepe', 10, 'Female', '9550831594', 9.99, 'no', 'no', 'yes', 'israeli', 0),
(20, 'Jessica', 'Gallarde', 'Macapaar', 10, 'Female', '9569104326', 9.99, 'no', 'no', 'yes', 'kazakh', 0),
(21, 'Jessica', 'Quizon', 'Macanto', 10, 'Female', '9155371264', 36.50, 'no', 'no', 'yes', 'vietnamese', 1680219739),
(22, 'Jhelley Albea', 'Lomoljo', 'Mabiya', 10, 'Female', '9163975260', 9.99, 'no', 'no', 'yes', 'tanzanian', 0),
(23, 'John Carl', 'None', 'Limbo', 10, 'Female', '9179605317', 9.99, 'no', 'no', 'yes', 'grenadian', 0),
(24, 'John Derek', 'Serano', 'Lila', 10, 'Male', '9182568170', 9.99, 'no', 'no', 'yes', 'haitian', 0),
(25, 'Jomrex', 'Avilo', 'Larigo', 10, 'Male', '9190524719', 9.99, 'no', 'no', 'yes', 'venezuelan', 0),
(26, 'Jonny', 'Puyla', 'Lanoy', 10, 'Male', '9200648293', 9.99, 'no', 'no', 'yes', 'scot', 0),
(27, 'Jose', 'Pasco', 'Lamban', 10, 'Female', '9218941062', 9.99, 'no', 'no', 'yes', 'moroccan', 0),
(28, 'Junaid', 'Pamanay', 'Jarales', 10, 'Male', '9228460235', 9.99, 'no', 'no', 'yes', 'maltese', 0),
(29, 'June Mark', 'Saparo', 'Jamito', 10, 'Male', '9559341068', 9.99, 'no', 'no', 'yes', 'namibian', 0),
(30, 'Junerel', 'Lihayang', 'Jalover', 10, 'Female', '9568412503', 9.99, 'no', 'no', 'yes', 'guyanese', 0),
(31, 'Lorenzo', 'Labaog', 'Galorio', 55, 'Male', '9150812457', 9.99, 'yes', 'no', 'yes', 'panamanian', 0),
(32, 'Maria Rebecca', 'Carbado', 'Esconde', 55, 'Female', '9164509761', 9.99, 'yes', 'no', 'yes', 'estonian', 0),
(33, 'Maribel', 'Diawalan', 'Ermac', 55, 'Male', '9174783016', 9.99, 'yes', 'no', 'yes', 'tunisian', 0),
(34, 'Marites', 'Anding', 'Embate', 55, 'Male', '9180468157', 9.99, 'yes', 'no', 'yes', 'malawian', 0),
(35, 'Marlene', 'Comahig', 'Ebalang', 55, 'Female', '9193971240', 9.99, 'yes', 'no', 'yes', 'indian', 0),
(36, 'Mary Jane', 'Galon', 'Don', 67, 'Female', '9208645109', 9.99, 'yes', 'no', 'yes', 'gambian', 0),
(37, 'Mela marie', 'Quicoy', 'Dicalan', 67, 'Male', '9216049125', 9.99, 'yes', 'no', 'yes', 'korean', 0),
(38, 'Mikko Angelo', 'Ampaso', 'Daulong', 67, 'Male', '9220917825', 9.99, 'yes', 'no', 'yes', 'beninese', 0),
(39, 'Mira', 'Tabigne', 'Daruca', 67, 'Female', '9555042376', 9.99, 'yes', 'no', 'yes', 'zimbabwean', 0),
(40, 'Modista', 'Salvador', 'Daniel', 0, 'Male', '9563415609', 9.99, 'no', 'no', 'no', 'mongolian', 0),
(41, 'Prince John', 'Milan', 'Canoy', 15, 'Female', '9150395714', 9.99, 'yes', 'no', 'yes', 'briton', 0),
(42, 'Reiss Ivory', 'Gapol', 'Cabisada', 15, 'Male', '9164970362', 9.99, 'yes', 'no', 'yes', 'uzbek', 0),
(43, 'Renato', 'Alimorin', 'CabataÃƒÂ±a', 15, 'Male', '9172734806', 9.99, 'yes', 'no', 'yes', 'bahamian', 0),
(44, 'Renato', 'Madrid', 'Cabase', 13, 'Male', '9180347215', 9.99, 'yes', 'no', 'yes', 'angolan', 0),
(45, 'Reniel', 'Sumalpong', 'Cabarce', 14, 'Female', '9192317480', 9.99, 'yes', 'no', 'yes', 'icelander', 0),
(46, 'Rexan', 'Aclao', 'Caballes', 15, 'Female', '9209401837', 9.99, 'no', 'no', 'yes', 'malaysian', 0),
(47, 'Rey', 'Artiaga', 'Caballero', 16, 'Female', '9211496287', 9.99, 'no', 'no', 'yes', 'swazi', 0),
(48, 'Rey Micheal', 'G.', 'Cabahug', 17, 'Female', '9222965814', 9.99, 'no', 'no', 'yes', 'ugandan', 0),
(49, 'Rheinabelle', 'A', 'Buscano', 18, 'Female', '9554153087', 9.99, 'no', 'no', 'yes', 'malian', 0),
(50, 'Richard', 'Obed', 'Bughaw', 19, 'Female', '9560895374', 9.99, 'no', 'no', 'yes', 'pole', 0),
(51, 'Roger', 'Abordonado', 'Binag', 35, 'Female', '9154528019', 9.99, 'no', 'no', 'yes', 'brazilian', 0),
(52, 'Rolando', 'Rebuta', 'Beto', 15, 'Female', '9162804569', 9.99, 'yes', 'no', 'yes', 'thai', 0),
(53, 'Romy', 'Culibar', 'Beldad', 48, 'Female', '9177654138', 9.99, 'yes', 'no', 'yes', 'chinese', 0),
(54, 'Ronnie Jr.', 'Alano', 'Baton', 35, 'Female', '9185734298', 9.99, 'yes', 'no', 'yes', 'liechtensteiner', 0),
(55, 'Sanra', 'Carbonell', 'Balanay', 16, 'Female', '9195602134', 9.99, 'yes', 'no', 'yes', 'nepalese', 0),
(56, 'Vincent Mark', 'Abellana', 'Andog', 25, 'Female', '9209780234', 9.99, 'yes', 'no', 'yes', 'tadzhik', 0),
(57, 'Voltaire', 'Orillo', 'Anarig', 34, 'Male', '9210497852', 9.99, 'yes', 'no', 'yes', 'azerbaijani', 0),
(58, 'Wenefredo', 'Madelo', 'Amomonpon', 77, 'Male', '9229231807', 9.99, 'yes', 'no', 'yes', 'dominican', 0),
(59, 'Caspian', 'Amansio', 'aban', 44, 'Female', '9559173682', 9.99, 'no', 'no', 'yes', 'ecuadorean', 0),
(60, 'Glenn Mark', 'Seno', 'Alfaro', 68, 'Female', '9560271539', 9.99, 'no', 'no', 'yes', 'guinean', 0),
(61, 'Yazae', 'VILLARUEL', 'Alicabo', 25, 'Male', '9155372486', 9.99, 'no', 'no', 'yes', 'austrian', 0),
(62, 'Bombet', 'Malinao', 'SereÃƒÂ±o', 39, 'Male', '9165302897', 9.99, 'no', 'no', 'yes', 'honduran', 0),
(63, 'Corry', 'Mohammadali', 'Romeric', 39, 'Male', '9179153082', 9.99, 'no', 'no', 'yes', 'montenegrin', 0),
(64, 'Reneboy Jr.', 'Caballes', 'Cabarrubias,', 39, 'Male', '9188549736', 9.99, 'no', 'no', 'yes', 'trinidadian', 0),
(65, 'Rob Athan', 'Datumanong', 'Borata', 39, 'Female', '9196724031', 9.99, 'no', 'no', 'yes', 'liberian', 0),
(66, 'Vanessa', 'Macana', 'Aparecio', 39, 'Male', '9207058913', 9.99, 'yes', 'no', 'yes', 'turk', 0),
(67, 'Yvetle Melissa', 'Caburnay', 'Alolod', 39, 'Female', '9213802769', 9.99, 'yes', 'no', 'yes', 'cambodian', 0),
(68, 'Karl', 'Estacoja', 'Iglopas', 39, 'Female', '9227638105', 9.99, 'no', 'no', 'yes', 'slovak', 0),
(69, 'Emerenciano', 'Macarolay', 'Pastidio', 39, 'Male', '9555360281', 9.99, 'no', 'no', 'yes', 'mauritanian', 0),
(70, 'Gina', 'Villanueva', 'Obedencio', 39, 'Male', '9564358219', 9.99, 'no', 'no', 'yes', 'libyan', 0),
(71, 'Jan Karl', 'Botigan', 'Marquez', 39, 'Male', '9158965203', 9.99, 'no', 'no', 'yes', 'cypriot', 0),
(72, 'Lady farah', 'None', 'Gorospe', 39, 'Female', '9162513708', 9.99, 'no', 'no', 'yes', 'taiwanese', 0),
(73, 'Maria Mae', 'Panoy', 'Eshor', 9, 'Female', '9179758162', 9.99, 'no', 'no', 'yes', 'singaporean', 0),
(74, 'Rhozmely', 'Diala', 'Buot', 10, 'Male', '9180692817', 9.99, 'no', 'no', 'yes', 'surinamese', 0),
(75, 'Verlie', 'Guro', 'Antipuesto', 11, 'Female', '9196019724', 9.99, 'no', 'no', 'yes', 'yemeni', 0),
(76, 'Danny', 'Batabor', 'Recla', 19, 'Female', '9207582460', 9.99, 'no', 'no', 'yes', 'lithuanian', 0),
(77, 'Hezekiah', 'Talingting', 'Montes', 13, 'Female', '9211796348', 9.99, 'no', 'no', 'yes', 'ukrainian', 0),
(78, 'Miamie', 'Paalisbo', 'Delamance', 14, 'Female', '9220563479', 9.99, 'no', 'no', 'yes', 'hungarian', 0),
(79, 'Saadodim', 'Sombilon', 'Bamir', 15, 'Male', '9556321985', 9.99, 'no', 'no', 'yes', 'madagascan', 0),
(80, 'Alberta', 'None', 'Villanueva', 16, 'Male', '9568529647', 9.99, 'no', 'no', 'yes', 'saudi', 0),
(81, 'Carlos', 'Gauraki', 'Saro', 17, 'Male', '9159738064', 9.99, 'no', 'no', 'yes', 'cuban', 0),
(82, 'Cerilo', 'Rebleza', 'Sandoy', 18, 'Female', '9162409563', 9.99, 'no', 'no', 'yes', 'peruvian', 0),
(83, 'Demie', 'Cuaresma', 'Ramirez', 19, 'Female', '9170345827', 9.99, 'no', 'no', 'yes', 'burmese', 0),
(84, 'Lheryn', 'Fernandez', 'Gelbero', 36, 'Male', '9188142760', 9.99, 'no', 'no', 'yes', 'colombian', 0),
(85, 'Marc Adrian', 'Batawi', 'Eyana', 37, 'Female', '9191582736', 9.99, 'yes', 'no', 'yes', 'pakistani', 0),
(86, 'Mark Vincent', 'NONE', 'Ebarat', 11, 'Male', '9208320594', 9.99, 'yes', 'no', 'yes', 'swiss', 0),
(87, 'Mildred', 'Sevilla', 'Datumaas', 24, 'Female', '9212958317', 9.99, 'yes', 'no', 'yes', 'nicaraguan', 0),
(88, 'Val Joseph', 'Dalig', 'Apique', 41, 'Female', '9226209135', 9.99, 'yes', 'no', 'yes', 'armenian', 0),
(89, 'Abes', 'Bonggo', 'Yordan', 42, 'Female', '9559452013', 9.99, 'yes', 'no', 'yes', 'kuwaiti', 0),
(90, 'Angelito', 'None', 'TeÃƒÂ±ajora', 43, 'Male', '9565389264', 9.99, 'no', 'no', 'yes', 'belorussian', 0),
(91, 'Kevin', 'Palma', 'Herbeto', 58, 'Female', '9156489071', 9.99, 'no', 'no', 'yes', 'yugoslav', 0),
(92, 'Larry', 'Sangco-an', 'Gongob', 59, 'Male', '9169680521', 9.99, 'no', 'no', 'yes', 'eritrean', 0),
(93, 'Manuel', 'Daligdig', 'Fajardo', 60, 'Male', '9177639421', 9.99, 'no', 'no', 'yes', 'andorran', 0),
(94, 'Nabela', 'Taher', 'Dagondon', 61, 'Female', '9184517938', 9.99, 'yes', 'no', 'yes', 'guatemalan', 0),
(95, 'Carl Fruin', 'Labe', 'Sator', 6, 'Female', '9190615437', 9.99, 'yes', 'no', 'yes', 'fijian', 0),
(96, 'Christ Jacob', 'Odarve', 'Sahay', 63, 'Male', '9202061357', 9.99, 'yes', 'no', 'yes', 'moldovan', 0),
(97, 'Freymarita', 'Lucero', 'Opena', 64, 'Female', '9211698037', 9.99, 'no', 'no', 'yes', 'srilankan', 0),
(98, 'Kevin', 'Azucenas', 'Herbito', 65, 'Male', '9220395816', 9.99, 'no', 'no', 'yes', 'belgian', 0),
(99, 'Loreta', 'Ranario', 'Galope', 66, 'Male', '9551937265', 9.99, 'yes', 'no', 'yes', 'lebanese', 0),
(100, 'May', 'Gabot', 'Dimasimpun', 67, 'Female', '9566521749', 9.99, 'yes', 'no', 'yes', 'american', 0),
(101, 'Remarc', 'Nadayag', 'Cabiling', 68, 'Female', '9158605134', 9.99, 'yes', 'no', 'yes', '', 0),
(102, 'Renje Jacob', 'Epanto', 'Cabante', 69, 'Male', '9167548312', 9.99, 'yes', 'no', 'yes', '', 0),
(103, 'Roxanne', 'Enecuela', 'Baricuatro', 70, 'Female', '9170246185', 9.99, 'yes', 'no', 'yes', '', 0),
(104, 'Valerie', 'Quiap', 'Apiag', 71, 'Female', '9183971260', 9.99, 'yes', 'no', 'yes', '', 0),
(105, 'Al Christian', 'Dimaampao', 'Villarta', 45, 'Male', '9195836407', 9.99, 'no', 'no', 'yes', '', 0),
(106, 'Alexis', 'Pumbaya', 'Verano', 73, 'Male', '9206945831', 9.99, 'no', 'no', 'yes', '', 0),
(107, 'Alyssa Gwen', 'Alindog', 'Tubal', 74, 'Male', '9211437529', 9.99, 'no', 'no', 'yes', '', 0),
(108, 'Edwina', 'Dagalangit', 'Piodos', 75, 'Female', '9228490765', 9.99, 'no', 'no', 'yes', '', 0),
(109, 'Jayrol', 'Narvaez', 'Manatad', 76, 'Male', '9555143796', 9.99, 'yes', 'no', 'yes', '', 0),
(110, 'Kris kyle', 'Clarite', 'Gumatay', 77, 'Female', '9561526784', 9.99, 'yes', 'no', 'yes', '', 0),
(111, 'Marjorie', 'Anadon', 'Elevera', 78, 'Female', '9151230948', 9.99, 'yes', 'no', 'yes', '', 0),
(112, 'Ranolfo Jr.', 'Paradero', 'Cajes', 79, 'Male', '9168263471', 9.99, 'yes', 'no', 'yes', '', 0),
(113, 'Rea Jean', 'Daymiel', 'Cadampog', 80, 'Female', '9177412985', 9.99, 'yes', 'no', 'yes', '', 0),
(114, 'Ronnie', 'Timosa', 'Batoon', 81, 'Male', '9187328694', 9.99, 'yes', 'no', 'yes', '', 0),
(115, 'Charles Rose', 'Bacus', 'Samporna', 44, 'Male', '9199142873', 9.99, 'yes', 'no', 'yes', '', 0),
(116, 'Jeffory Zach', 'Chavez', 'Malig-on', 83, 'Female', '9204851976', 9.99, 'yes', 'no', 'yes', '', 0),
(117, 'Marivel', 'Espiritu', 'Elumir', 84, 'Female', '9217592364', 9.99, 'no', 'no', 'yes', '', 0),
(118, 'RB', 'Cabarilles', 'Cadampog', 85, 'Female', '9223419256', 9.99, 'no', 'no', 'yes', '', 0),
(119, 'Ruby Joy', 'Taylaran', 'Baranggan', 45, 'Male', '9554981326', 9.99, 'no', 'no', 'yes', '', 0),
(120, 'Susimo', 'Limbona', 'Arquilita', 46, 'Female', '91581017394', 9.99, 'no', 'no', 'yes', '', 0),
(121, 'Dauwa', 'PiÃƒÂ±aranda', 'Rasonable', 47, 'Male', '9164263958', 9.99, 'yes', 'no', 'yes', '', 0),
(122, 'Ma. Delia', 'Dio', 'Fontanilla', 48, 'Male', '91798106125', 9.99, 'yes', 'no', 'yes', '', 0),
(123, 'Noraima', 'Gandamato', 'Cipriano', 49, 'Female', '91829510478', 9.99, 'yes', 'no', 'yes', '', 0),
(124, 'Romeo', 'Meot', 'Benida', 50, 'Male', '9194165379', 9.99, 'yes', 'no', 'yes', '', 0),
(125, 'Marilyn', 'Chavez', 'Enecuela', 51, 'Male', '92063101452', 9.99, 'yes', 'no', 'yes', '', 0),
(126, 'Moana Belle', 'Pariho', 'Daniela', 33, 'Female', '9211327658', 9.99, 'yes', 'no', 'yes', '', 0),
(127, 'Nenita', 'Balt', 'Cortel', 53, 'Female', '92210859132', 9.99, 'yes', 'no', 'yes', '', 0),
(128, 'Norjanah', 'Mohammad', 'Cedullo', 54, 'Male', '95572104931', 9.99, 'no', 'no', 'yes', '', 0),
(129, 'Rene', 'Aloyodan', 'Cabasal', 55, 'Male', '9561346892', 9.99, 'no', 'no', 'yes', '', 0),
(130, 'Bebie', 'Quitos', 'Sobido', 56, 'Male', '91586411079', 9.99, 'no', 'no', 'yes', '', 0),
(131, 'Judith', 'Dandamun', 'Jundos', 57, 'Female', '91632415710', 9.99, 'no', 'no', 'yes', '', 0),
(132, 'Librado Jr.', 'Gandawali', 'Gawisao', 58, 'Male', '91759134102', 9.99, 'no', 'no', 'yes', '', 0),
(133, 'Marilyn', 'Daki', 'Endrina', 59, 'Female', '91862491810', 9.99, 'yes', 'no', 'yes', '', 0),
(134, 'Myrna', 'Bacas', 'Dagpin', 60, 'Female', '9195148673', 9.99, 'yes', 'no', 'yes', '', 0),
(135, 'Nathan', 'None', 'Cumahig', 61, 'Female', '9206391278', 9.99, 'yes', 'no', 'yes', '', 0),
(136, 'Navel', 'Pelen', 'Cueribo', 44, 'Female', '92110167432', 9.99, 'yes', 'no', 'yes', '', 0),
(137, 'Roxan', 'Uso', 'Bariga', 63, 'Male', '92229108741', 9.99, 'yes', 'no', 'yes', '', 0),
(138, 'Sarah', 'Andrade', 'Balacuit', 64, 'Female', '95511082675', 9.99, 'no', 'no', 'yes', '', 0),
(139, 'Al Gyrald', 'Pepito', 'Villarose', 65, 'Female', '95611057269', 9.99, 'no', 'no', 'yes', '', 0),
(140, 'Albeth', 'Suizor', 'Villamor', 66, 'Female', '9154721653', 9.99, 'yes', 'no', 'yes', '', 0),
(143, 'Beth', 'E', 'Patag', 32, 'Female', '09191231234', 36.80, 'no', 'no', 'yes', 'filipino', 1680183874),
(142, 'Norvs', 'N', 'Nortian', 45, 'Male', '234324', 36.30, 'no', 'yes', 'no', 'filipino', 1680183916),
(144, 'Djq', 'L', 'Lagaps', 47, 'Male', '09891235432', 36.10, 'no', 'yes', 'no', 'filipino', 1680183970),
(145, 'Ians', 'S', 'Sivil', 40, 'Male', '09892348769', 37.10, 'no', 'no', 'yes', 'filipino', 1680184028),
(146, 'Jose', 'P', 'Rizal', 21, 'Male', '', 36.50, 'no', 'no', 'yes', 'filipino', 1680239634),
(147, 'Jhon', 'M', 'Wick', 49, 'Female', '123458090', 39.50, 'yes', 'no', 'yes', 'danish', 1680227545),
(149, 'Jose', 'P', 'Rizal', 78, 'Male', '090934335', 38.00, 'yes', 'no', 'yes', 'filipino', 1680247055);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_dashboarddata`
-- (See below for the actual view)
--
CREATE TABLE `v_dashboarddata` (
`totalencounter` bigint(21)
,`totalvaxxed` bigint(21)
,`totalfever` bigint(21)
,`totalforeigner` bigint(21)
,`totalfilipino` bigint(21)
,`totaladult` bigint(21)
,`totalminor` bigint(21)
,`totalrecords` bigint(21)
,`totalmale` bigint(21)
,`totalfemale` bigint(21)
,`totaldiagnosed` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `v_dashboarddata`
--
DROP TABLE IF EXISTS `v_dashboarddata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id20526030_norvin`@`%` SQL SECURITY DEFINER VIEW `v_dashboarddata`  AS  select (select count(0) from `health_declaration` where `health_declaration`.`encounter` = 'yes') AS `totalencounter`,(select count(0) from `health_declaration` where `health_declaration`.`vaxxed` = 'yes') AS `totalvaxxed`,(select count(0) from `health_declaration` where `health_declaration`.`temp` > '38') AS `totalfever`,(select count(0) from `health_declaration` where `health_declaration`.`nationality` <> 'filipino') AS `totalforeigner`,(select count(0) from `health_declaration` where `health_declaration`.`nationality` = 'filipino') AS `totalfilipino`,(select count(0) from `health_declaration` where `health_declaration`.`age` >= 18) AS `totaladult`,(select count(0) from `health_declaration` where `health_declaration`.`age` < 18) AS `totalminor`,(select count(0) from `health_declaration`) AS `totalrecords`,(select count(0) from `health_declaration` where `health_declaration`.`gender` = 'male') AS `totalmale`,(select count(0) from `health_declaration` where `health_declaration`.`gender` = 'female') AS `totalfemale`,(select count(0) from `health_declaration` where `health_declaration`.`diagnosed` = 'yes') AS `totaldiagnosed` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `health_declaration`
--
ALTER TABLE `health_declaration`
  ADD PRIMARY KEY (`hd_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `health_declaration`
--
ALTER TABLE `health_declaration`
  MODIFY `hd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
