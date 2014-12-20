-- phpMyAdmin SQL Dump
-- version 4.2.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2014 at 06:10 PM
-- Server version: 5.5.35-0ubuntu0.13.10.2
-- PHP Version: 5.5.3-1ubuntu2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `residents_association_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ra_activities`
--

CREATE TABLE IF NOT EXISTS `ra_activities` (
`activity_id` bigint(20) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `activity` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `deleted` tinyint(12) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ra_activities`
--

INSERT INTO `ra_activities` (`activity_id`, `user_id`, `activity`, `module`, `created_on`, `deleted`) VALUES
(1, 1, 'logged in from: 127.0.0.1', 'users', '2014-11-01 17:10:57', 0),
(2, 1, 'Created Module: Groups : 127.0.0.1', 'modulebuilder', '2014-11-01 17:35:55', 0),
(3, 1, 'logged in from: 127.0.0.1', 'users', '2014-11-03 16:19:16', 0),
(4, 1, 'App settings saved from: 127.0.0.1', 'core', '2014-11-03 16:20:45', 0),
(5, 1, 'App settings saved from: 127.0.0.1', 'core', '2014-11-03 16:21:21', 0),
(6, 1, 'logged in from: 127.0.0.1', 'users', '2014-11-03 18:13:41', 0),
(7, 1, 'Created Module: Group Types : 127.0.0.1', 'modulebuilder', '2014-11-03 18:16:54', 0),
(8, 1, 'Created Module: Group Types : 127.0.0.1', 'modulebuilder', '2014-11-03 18:17:26', 0),
(9, 1, 'Created record with ID: 1 : 127.0.0.1', 'group_types', '2014-11-03 18:21:02', 0),
(10, 1, 'logged in from: 127.0.0.1', 'users', '2014-11-04 14:34:33', 0),
(11, 1, 'logged in from: 127.0.0.1', 'users', '2014-11-05 16:57:32', 0),
(12, 1, 'logged in from: 127.0.0.1', 'users', '2014-11-07 17:36:00', 0),
(13, 1, 'logged in from: 127.0.0.1', 'users', '2014-11-07 17:37:03', 0),
(14, 1, 'logged in from: 127.0.0.1', 'users', '2014-11-07 17:46:03', 0),
(15, 1, 'logged in from: 127.0.0.1', 'users', '2014-11-07 17:50:20', 0),
(16, 1, 'logged in from: 127.0.0.1', 'users', '2014-11-07 17:57:16', 0),
(17, 1, 'logged in from: 127.0.0.1', 'users', '2014-11-07 18:01:20', 0),
(18, 1, 'logged in from: 127.0.0.1', 'users', '2014-11-08 18:35:32', 0),
(19, 1, 'logged in from: 127.0.0.1', 'users', '2014-12-06 18:01:25', 0),
(20, 1, 'logged out from: 127.0.0.1', 'users', '2014-12-06 18:01:48', 0),
(21, 1, 'logged in from: 127.0.0.1', 'users', '2014-12-06 18:03:08', 0),
(22, 1, 'logged out from: 127.0.0.1', 'users', '2014-12-06 18:19:36', 0),
(23, 1, 'logged in from: 127.0.0.1', 'users', '2014-12-06 18:35:21', 0),
(24, 1, 'logged in from: 127.0.0.1', 'users', '2014-12-10 18:10:20', 0),
(25, 1, 'FIXME ("us_log_status_change"): pvibish@gmail.com : Activateed', 'users', '2014-12-10 18:10:44', 0),
(26, 1, 'logged out from: 127.0.0.1', 'users', '2014-12-10 18:11:00', 0),
(27, 3, 'logged in from: 127.0.0.1', 'users', '2014-12-10 18:11:26', 0),
(28, 3, 'logged out from: 127.0.0.1', 'users', '2014-12-10 18:16:35', 0),
(29, 1, 'logged in from: 127.0.0.1', 'users', '2014-12-10 18:16:52', 0),
(30, 1, 'logged out from: 127.0.0.1', 'users', '2014-12-10 18:21:31', 0),
(31, 1, 'logged in from: 127.0.0.1', 'users', '2014-12-15 19:16:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ra_countries`
--

CREATE TABLE IF NOT EXISTS `ra_countries` (
  `iso` char(2) NOT NULL DEFAULT 'US',
  `name` varchar(80) NOT NULL,
  `printable_name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ra_countries`
--

INSERT INTO `ra_countries` (`iso`, `name`, `printable_name`, `iso3`, `numcode`) VALUES
('AD', 'ANDORRA', 'Andorra', 'AND', 20),
('AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784),
('AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4),
('AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28),
('AI', 'ANGUILLA', 'Anguilla', 'AIA', 660),
('AL', 'ALBANIA', 'Albania', 'ALB', 8),
('AM', 'ARMENIA', 'Armenia', 'ARM', 51),
('AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530),
('AO', 'ANGOLA', 'Angola', 'AGO', 24),
('AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL),
('AR', 'ARGENTINA', 'Argentina', 'ARG', 32),
('AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16),
('AT', 'AUSTRIA', 'Austria', 'AUT', 40),
('AU', 'AUSTRALIA', 'Australia', 'AUS', 36),
('AW', 'ARUBA', 'Aruba', 'ABW', 533),
('AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31),
('BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70),
('BB', 'BARBADOS', 'Barbados', 'BRB', 52),
('BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50),
('BE', 'BELGIUM', 'Belgium', 'BEL', 56),
('BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854),
('BG', 'BULGARIA', 'Bulgaria', 'BGR', 100),
('BH', 'BAHRAIN', 'Bahrain', 'BHR', 48),
('BI', 'BURUNDI', 'Burundi', 'BDI', 108),
('BJ', 'BENIN', 'Benin', 'BEN', 204),
('BM', 'BERMUDA', 'Bermuda', 'BMU', 60),
('BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96),
('BO', 'BOLIVIA', 'Bolivia', 'BOL', 68),
('BR', 'BRAZIL', 'Brazil', 'BRA', 76),
('BS', 'BAHAMAS', 'Bahamas', 'BHS', 44),
('BT', 'BHUTAN', 'Bhutan', 'BTN', 64),
('BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL),
('BW', 'BOTSWANA', 'Botswana', 'BWA', 72),
('BY', 'BELARUS', 'Belarus', 'BLR', 112),
('BZ', 'BELIZE', 'Belize', 'BLZ', 84),
('CA', 'CANADA', 'Canada', 'CAN', 124),
('CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL),
('CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180),
('CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140),
('CG', 'CONGO', 'Congo', 'COG', 178),
('CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756),
('CI', 'COTE D''IVOIRE', 'Cote D''Ivoire', 'CIV', 384),
('CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184),
('CL', 'CHILE', 'Chile', 'CHL', 152),
('CM', 'CAMEROON', 'Cameroon', 'CMR', 120),
('CN', 'CHINA', 'China', 'CHN', 156),
('CO', 'COLOMBIA', 'Colombia', 'COL', 170),
('CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188),
('CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL),
('CU', 'CUBA', 'Cuba', 'CUB', 192),
('CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132),
('CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL),
('CY', 'CYPRUS', 'Cyprus', 'CYP', 196),
('CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203),
('DE', 'GERMANY', 'Germany', 'DEU', 276),
('DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262),
('DK', 'DENMARK', 'Denmark', 'DNK', 208),
('DM', 'DOMINICA', 'Dominica', 'DMA', 212),
('DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214),
('DZ', 'ALGERIA', 'Algeria', 'DZA', 12),
('EC', 'ECUADOR', 'Ecuador', 'ECU', 218),
('EE', 'ESTONIA', 'Estonia', 'EST', 233),
('EG', 'EGYPT', 'Egypt', 'EGY', 818),
('EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732),
('ER', 'ERITREA', 'Eritrea', 'ERI', 232),
('ES', 'SPAIN', 'Spain', 'ESP', 724),
('ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231),
('FI', 'FINLAND', 'Finland', 'FIN', 246),
('FJ', 'FIJI', 'Fiji', 'FJI', 242),
('FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238),
('FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583),
('FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234),
('FR', 'FRANCE', 'France', 'FRA', 250),
('GA', 'GABON', 'Gabon', 'GAB', 266),
('GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826),
('GD', 'GRENADA', 'Grenada', 'GRD', 308),
('GE', 'GEORGIA', 'Georgia', 'GEO', 268),
('GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254),
('GH', 'GHANA', 'Ghana', 'GHA', 288),
('GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292),
('GL', 'GREENLAND', 'Greenland', 'GRL', 304),
('GM', 'GAMBIA', 'Gambia', 'GMB', 270),
('GN', 'GUINEA', 'Guinea', 'GIN', 324),
('GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312),
('GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226),
('GR', 'GREECE', 'Greece', 'GRC', 300),
('GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
('GT', 'GUATEMALA', 'Guatemala', 'GTM', 320),
('GU', 'GUAM', 'Guam', 'GUM', 316),
('GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624),
('GY', 'GUYANA', 'Guyana', 'GUY', 328),
('HK', 'HONG KONG', 'Hong Kong', 'HKG', 344),
('HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL),
('HN', 'HONDURAS', 'Honduras', 'HND', 340),
('HR', 'CROATIA', 'Croatia', 'HRV', 191),
('HT', 'HAITI', 'Haiti', 'HTI', 332),
('HU', 'HUNGARY', 'Hungary', 'HUN', 348),
('ID', 'INDONESIA', 'Indonesia', 'IDN', 360),
('IE', 'IRELAND', 'Ireland', 'IRL', 372),
('IL', 'ISRAEL', 'Israel', 'ISR', 376),
('IN', 'INDIA', 'India', 'IND', 356),
('IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL),
('IQ', 'IRAQ', 'Iraq', 'IRQ', 368),
('IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364),
('IS', 'ICELAND', 'Iceland', 'ISL', 352),
('IT', 'ITALY', 'Italy', 'ITA', 380),
('JM', 'JAMAICA', 'Jamaica', 'JAM', 388),
('JO', 'JORDAN', 'Jordan', 'JOR', 400),
('JP', 'JAPAN', 'Japan', 'JPN', 392),
('KE', 'KENYA', 'Kenya', 'KEN', 404),
('KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417),
('KH', 'CAMBODIA', 'Cambodia', 'KHM', 116),
('KI', 'KIRIBATI', 'Kiribati', 'KIR', 296),
('KM', 'COMOROS', 'Comoros', 'COM', 174),
('KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659),
('KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', 'PRK', 408),
('KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410),
('KW', 'KUWAIT', 'Kuwait', 'KWT', 414),
('KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136),
('KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398),
('LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', 'LAO', 418),
('LB', 'LEBANON', 'Lebanon', 'LBN', 422),
('LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662),
('LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438),
('LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144),
('LR', 'LIBERIA', 'Liberia', 'LBR', 430),
('LS', 'LESOTHO', 'Lesotho', 'LSO', 426),
('LT', 'LITHUANIA', 'Lithuania', 'LTU', 440),
('LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442),
('LV', 'LATVIA', 'Latvia', 'LVA', 428),
('LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434),
('MA', 'MOROCCO', 'Morocco', 'MAR', 504),
('MC', 'MONACO', 'Monaco', 'MCO', 492),
('MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498),
('MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450),
('MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584),
('MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807),
('ML', 'MALI', 'Mali', 'MLI', 466),
('MM', 'MYANMAR', 'Myanmar', 'MMR', 104),
('MN', 'MONGOLIA', 'Mongolia', 'MNG', 496),
('MO', 'MACAO', 'Macao', 'MAC', 446),
('MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580),
('MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474),
('MR', 'MAURITANIA', 'Mauritania', 'MRT', 478),
('MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500),
('MT', 'MALTA', 'Malta', 'MLT', 470),
('MU', 'MAURITIUS', 'Mauritius', 'MUS', 480),
('MV', 'MALDIVES', 'Maldives', 'MDV', 462),
('MW', 'MALAWI', 'Malawi', 'MWI', 454),
('MX', 'MEXICO', 'Mexico', 'MEX', 484),
('MY', 'MALAYSIA', 'Malaysia', 'MYS', 458),
('MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508),
('NA', 'NAMIBIA', 'Namibia', 'NAM', 516),
('NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540),
('NE', 'NIGER', 'Niger', 'NER', 562),
('NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574),
('NG', 'NIGERIA', 'Nigeria', 'NGA', 566),
('NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558),
('NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528),
('NO', 'NORWAY', 'Norway', 'NOR', 578),
('NP', 'NEPAL', 'Nepal', 'NPL', 524),
('NR', 'NAURU', 'Nauru', 'NRU', 520),
('NU', 'NIUE', 'Niue', 'NIU', 570),
('NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554),
('OM', 'OMAN', 'Oman', 'OMN', 512),
('PA', 'PANAMA', 'Panama', 'PAN', 591),
('PE', 'PERU', 'Peru', 'PER', 604),
('PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258),
('PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598),
('PH', 'PHILIPPINES', 'Philippines', 'PHL', 608),
('PK', 'PAKISTAN', 'Pakistan', 'PAK', 586),
('PL', 'POLAND', 'Poland', 'POL', 616),
('PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666),
('PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612),
('PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630),
('PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL),
('PT', 'PORTUGAL', 'Portugal', 'PRT', 620),
('PW', 'PALAU', 'Palau', 'PLW', 585),
('PY', 'PARAGUAY', 'Paraguay', 'PRY', 600),
('QA', 'QATAR', 'Qatar', 'QAT', 634),
('RE', 'REUNION', 'Reunion', 'REU', 638),
('RO', 'ROMANIA', 'Romania', 'ROM', 642),
('RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643),
('RW', 'RWANDA', 'Rwanda', 'RWA', 646),
('SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682),
('SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90),
('SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690),
('SD', 'SUDAN', 'Sudan', 'SDN', 736),
('SE', 'SWEDEN', 'Sweden', 'SWE', 752),
('SG', 'SINGAPORE', 'Singapore', 'SGP', 702),
('SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654),
('SI', 'SLOVENIA', 'Slovenia', 'SVN', 705),
('SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744),
('SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703),
('SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694),
('SM', 'SAN MARINO', 'San Marino', 'SMR', 674),
('SN', 'SENEGAL', 'Senegal', 'SEN', 686),
('SO', 'SOMALIA', 'Somalia', 'SOM', 706),
('SR', 'SURINAME', 'Suriname', 'SUR', 740),
('ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678),
('SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222),
('SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760),
('SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748),
('TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796),
('TD', 'CHAD', 'Chad', 'TCD', 148),
('TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL),
('TG', 'TOGO', 'Togo', 'TGO', 768),
('TH', 'THAILAND', 'Thailand', 'THA', 764),
('TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762),
('TK', 'TOKELAU', 'Tokelau', 'TKL', 772),
('TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL),
('TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795),
('TN', 'TUNISIA', 'Tunisia', 'TUN', 788),
('TO', 'TONGA', 'Tonga', 'TON', 776),
('TR', 'TURKEY', 'Turkey', 'TUR', 792),
('TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780),
('TV', 'TUVALU', 'Tuvalu', 'TUV', 798),
('TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158),
('TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834),
('UA', 'UKRAINE', 'Ukraine', 'UKR', 804),
('UG', 'UGANDA', 'Uganda', 'UGA', 800),
('UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL),
('US', 'UNITED STATES', 'United States', 'USA', 840),
('UY', 'URUGUAY', 'Uruguay', 'URY', 858),
('UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860),
('VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336),
('VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670),
('VE', 'VENEZUELA', 'Venezuela', 'VEN', 862),
('VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92),
('VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850),
('VN', 'VIET NAM', 'Viet Nam', 'VNM', 704),
('VU', 'VANUATU', 'Vanuatu', 'VUT', 548),
('WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876),
('WS', 'SAMOA', 'Samoa', 'WSM', 882),
('YE', 'YEMEN', 'Yemen', 'YEM', 887),
('YT', 'MAYOTTE', 'Mayotte', NULL, NULL),
('ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710),
('ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894),
('ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Table structure for table `ra_email_queue`
--

CREATE TABLE IF NOT EXISTS `ra_email_queue` (
`id` int(11) NOT NULL,
  `to_email` varchar(254) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `alt_message` text,
  `max_attempts` int(11) NOT NULL DEFAULT '3',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `success` tinyint(1) NOT NULL DEFAULT '0',
  `date_published` datetime DEFAULT NULL,
  `last_attempt` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `csv_attachment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ra_events`
--

CREATE TABLE IF NOT EXISTS `ra_events` (
`id` int(10) unsigned NOT NULL,
  `event_type` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `event_title` varchar(250) NOT NULL,
  `event_description` longtext NOT NULL,
  `event_mode` tinyint(4) NOT NULL COMMENT '1-public\n2-private',
  `event_agenda` text,
  `agenda_type` tinyint(4) DEFAULT NULL COMMENT '0-open\n1-closed',
  `start_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned NOT NULL,
  `created_on` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_event_invitations`
--

CREATE TABLE IF NOT EXISTS `ra_event_invitations` (
`id` int(10) unsigned NOT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL COMMENT 'group wise invitation',
  `status` tinyint(3) unsigned NOT NULL COMMENT '0-pending\n1-accepted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_event_participants`
--

CREATE TABLE IF NOT EXISTS `ra_event_participants` (
  `id` int(11) NOT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_event_schedule`
--

CREATE TABLE IF NOT EXISTS `ra_event_schedule` (
`id` int(10) unsigned NOT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `start_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `program` mediumtext NOT NULL COMMENT 'program_scheduled',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-active\n',
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_event_types`
--

CREATE TABLE IF NOT EXISTS `ra_event_types` (
`id` tinyint(3) unsigned NOT NULL,
  `type_title` varchar(100) NOT NULL COMMENT 'meeting/festival etc'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_gallery`
--

CREATE TABLE IF NOT EXISTS `ra_gallery` (
`id` int(10) unsigned NOT NULL,
  `related_entity_id` int(10) unsigned NOT NULL,
  `related_entity_type` tinyint(3) unsigned NOT NULL COMMENT '1-group\n2-event',
  `gallery_title` varchar(100) NOT NULL,
  `gallery_description` text,
  `status` tinyint(4) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_gallery_resource_type`
--

CREATE TABLE IF NOT EXISTS `ra_gallery_resource_type` (
`id` tinyint(3) unsigned NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_groups`
--

CREATE TABLE IF NOT EXISTS `ra_groups` (
`id` int(11) unsigned NOT NULL,
  `group_name` varchar(45) NOT NULL,
  `group_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'residents association/clubs etc.',
  `group_mode` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1-public\n2-private',
  `email` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `land_line` varchar(20) DEFAULT NULL,
  `mission` text,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `started_on` date NOT NULL COMMENT 'group started date',
  `address` varchar(250) NOT NULL,
  `city` varchar(100) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `group_code` varchar(50) DEFAULT NULL COMMENT 'eg: tc number for residents association',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(4) DEFAULT '0',
  `deleted_by` bigint(20) unsigned DEFAULT NULL,
  `banned` tinyint(1) DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) unsigned NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_group_requests`
--

CREATE TABLE IF NOT EXISTS `ra_group_requests` (
`id` int(10) unsigned NOT NULL,
  `group_type` tinyint(3) unsigned NOT NULL,
  `land_line` varchar(20) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `group_code` varchar(25) DEFAULT NULL COMMENT 'eg: tc number for residents association',
  `country` int(10) unsigned NOT NULL,
  `state` int(10) unsigned NOT NULL,
  `district` int(10) unsigned NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `comments` varchar(250) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-pending\n1-approved',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_group_types`
--

CREATE TABLE IF NOT EXISTS `ra_group_types` (
`id` tinyint(3) unsigned NOT NULL,
  `type_title` varchar(45) DEFAULT NULL,
  `descriiption` varchar(45) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_by` int(10) unsigned DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ra_group_types`
--

INSERT INTO `ra_group_types` (`id`, `type_title`, `descriiption`, `deleted`, `deleted_by`, `created_on`, `created_by`, `updated_on`, `updated_by`) VALUES
(1, 'Residents Association', 'Resdents Association', 0, NULL, '2014-11-03 12:51:02', NULL, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ra_login_attempts`
--

CREATE TABLE IF NOT EXISTS `ra_login_attempts` (
`id` bigint(20) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ra_membership_requests`
--

CREATE TABLE IF NOT EXISTS `ra_membership_requests` (
  `id` int(11) NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL COMMENT 'if the member ship request is public then this field will be blank',
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `land_line` varchar(20) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `gender` char(1) NOT NULL COMMENT 'M-Male\nF-Femail',
  `present_address` varchar(250) DEFAULT NULL,
  `permenant_address` varchar(250) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-pending\n1-approved',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_membership_types`
--

CREATE TABLE IF NOT EXISTS `ra_membership_types` (
`id` tinyint(3) unsigned NOT NULL,
  `member_ship_title` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_member_relations`
--

CREATE TABLE IF NOT EXISTS `ra_member_relations` (
`id` int(10) unsigned NOT NULL,
  `from_member_id` int(10) unsigned NOT NULL,
  `relationship_type` tinyint(3) unsigned NOT NULL,
  `to_member_id` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_memebers`
--

CREATE TABLE IF NOT EXISTS `ra_memebers` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `present_address` varchar(250) NOT NULL,
  `permenant_address` varchar(250) NOT NULL,
  `job_nature` varchar(100) DEFAULT NULL COMMENT 'govt/private/bussiness',
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `district` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `country` int(11) NOT NULL COMMENT 'default india',
  `house_tc_number` varchar(50) DEFAULT NULL COMMENT 'tc number',
  `house_ra_number` varchar(50) DEFAULT NULL COMMENT 'residents association number',
  `land_line` varchar(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_permissions`
--

CREATE TABLE IF NOT EXISTS `ra_permissions` (
`permission_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ra_permissions`
--

INSERT INTO `ra_permissions` (`permission_id`, `name`, `description`, `status`) VALUES
(2, 'Site.Content.View', 'Allow users to view the Content Context', 'active'),
(3, 'Site.Reports.View', 'Allow users to view the Reports Context', 'active'),
(4, 'Site.Settings.View', 'Allow users to view the Settings Context', 'active'),
(5, 'Site.Developer.View', 'Allow users to view the Developer Context', 'active'),
(6, 'Bonfire.Roles.Manage', 'Allow users to manage the user Roles', 'active'),
(7, 'Bonfire.Users.Manage', 'Allow users to manage the site Users', 'active'),
(8, 'Bonfire.Users.View', 'Allow users access to the User Settings', 'active'),
(9, 'Bonfire.Users.Add', 'Allow users to add new Users', 'active'),
(10, 'Bonfire.Database.Manage', 'Allow users to manage the Database settings', 'active'),
(11, 'Bonfire.Emailer.Manage', 'Allow users to manage the Emailer settings', 'active'),
(12, 'Bonfire.Logs.View', 'Allow users access to the Log details', 'active'),
(13, 'Bonfire.Logs.Manage', 'Allow users to manage the Log files', 'active'),
(14, 'Bonfire.Emailer.View', 'Allow users access to the Emailer settings', 'active'),
(15, 'Site.Signin.Offline', 'Allow users to login to the site when the site is offline', 'active'),
(16, 'Bonfire.Permissions.View', 'Allow access to view the Permissions menu unders Settings Context', 'active'),
(17, 'Bonfire.Permissions.Manage', 'Allow access to manage the Permissions in the system', 'active'),
(18, 'Bonfire.Roles.Delete', 'Allow users to delete user Roles', 'active'),
(19, 'Bonfire.Modules.Add', 'Allow creation of modules with the builder.', 'active'),
(20, 'Bonfire.Modules.Delete', 'Allow deletion of modules.', 'active'),
(21, 'Permissions.Administrator.Manage', 'To manage the access control permissions for the Administrator role.', 'active'),
(22, 'Permissions.Editor.Manage', 'To manage the access control permissions for the Editor role.', 'active'),
(24, 'Permissions.User.Manage', 'To manage the access control permissions for the User role.', 'active'),
(25, 'Permissions.Developer.Manage', 'To manage the access control permissions for the Developer role.', 'active'),
(27, 'Activities.Own.View', 'To view the users own activity logs', 'active'),
(28, 'Activities.Own.Delete', 'To delete the users own activity logs', 'active'),
(29, 'Activities.User.View', 'To view the user activity logs', 'active'),
(30, 'Activities.User.Delete', 'To delete the user activity logs, except own', 'active'),
(31, 'Activities.Module.View', 'To view the module activity logs', 'active'),
(32, 'Activities.Module.Delete', 'To delete the module activity logs', 'active'),
(33, 'Activities.Date.View', 'To view the users own activity logs', 'active'),
(34, 'Activities.Date.Delete', 'To delete the dated activity logs', 'active'),
(35, 'Bonfire.UI.Manage', 'Manage the Bonfire UI settings', 'active'),
(36, 'Bonfire.Settings.View', 'To view the site settings page.', 'active'),
(37, 'Bonfire.Settings.Manage', 'To manage the site settings.', 'active'),
(38, 'Bonfire.Activities.View', 'To view the Activities menu.', 'active'),
(39, 'Bonfire.Database.View', 'To view the Database menu.', 'active'),
(40, 'Bonfire.Migrations.View', 'To view the Migrations menu.', 'active'),
(41, 'Bonfire.Builder.View', 'To view the Modulebuilder menu.', 'active'),
(42, 'Bonfire.Roles.View', 'To view the Roles menu.', 'active'),
(43, 'Bonfire.Sysinfo.View', 'To view the System Information page.', 'active'),
(44, 'Bonfire.Translate.Manage', 'To manage the Language Translation.', 'active'),
(45, 'Bonfire.Translate.View', 'To view the Language Translate menu.', 'active'),
(46, 'Bonfire.UI.View', 'To view the UI/Keyboard Shortcut menu.', 'active'),
(49, 'Bonfire.Profiler.View', 'To view the Console Profiler Bar.', 'active'),
(50, 'Bonfire.Roles.Add', 'To add New Roles', 'active'),
(51, 'Groups.Content.View', 'View Groups Content', 'active'),
(52, 'Groups.Content.Create', 'Create Groups Content', 'active'),
(53, 'Groups.Content.Edit', 'Edit Groups Content', 'active'),
(54, 'Groups.Content.Delete', 'Delete Groups Content', 'active'),
(55, 'Groups.Reports.View', 'View Groups Reports', 'active'),
(56, 'Groups.Reports.Create', 'Create Groups Reports', 'active'),
(57, 'Groups.Reports.Edit', 'Edit Groups Reports', 'active'),
(58, 'Groups.Reports.Delete', 'Delete Groups Reports', 'active'),
(59, 'Groups.Settings.View', 'View Groups Settings', 'active'),
(60, 'Groups.Settings.Create', 'Create Groups Settings', 'active'),
(61, 'Groups.Settings.Edit', 'Edit Groups Settings', 'active'),
(62, 'Groups.Settings.Delete', 'Delete Groups Settings', 'active'),
(63, 'Group_types.Content.View', 'View Group_types Content', 'active'),
(64, 'Group_types.Content.Create', 'Create Group_types Content', 'active'),
(65, 'Group_types.Content.Edit', 'Edit Group_types Content', 'active'),
(66, 'Group_types.Content.Delete', 'Delete Group_types Content', 'active'),
(67, 'Permissions.Residents Association Admin.Manage', 'To manage the access control permissions for the Residents Association Admin role.', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `ra_relationship_types`
--

CREATE TABLE IF NOT EXISTS `ra_relationship_types` (
`id` tinyint(3) unsigned NOT NULL,
  `relationship_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_resources`
--

CREATE TABLE IF NOT EXISTS `ra_resources` (
`id` int(10) unsigned NOT NULL,
  `gallery_id` int(10) unsigned NOT NULL,
  `resource_type` tinyint(3) unsigned NOT NULL,
  `resource_title` varchar(200) NOT NULL,
  `resource_path` varchar(100) DEFAULT NULL,
  `resource_author` varchar(100) DEFAULT NULL,
  `resource_avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_roles`
--

CREATE TABLE IF NOT EXISTS `ra_roles` (
`role_id` int(11) NOT NULL,
  `role_name` varchar(60) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  `login_destination` varchar(255) NOT NULL DEFAULT '/',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `default_context` varchar(255) NOT NULL DEFAULT 'content'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ra_roles`
--

INSERT INTO `ra_roles` (`role_id`, `role_name`, `description`, `default`, `can_delete`, `login_destination`, `deleted`, `default_context`) VALUES
(1, 'Administrator', 'Has full control over every aspect of the site.', 0, 0, 'admin/content', 0, 'content'),
(2, 'Editor', 'Can handle day-to-day management, but does not have full power.', 0, 1, '', 0, 'content'),
(4, 'User', 'This is the default user with access to login.', 1, 0, '', 0, 'content'),
(6, 'Developer', 'Developers typically are the only ones that can access the developer tools. Otherwise identical to Administrators, at least until the site is handed off.', 0, 1, '', 0, 'content'),
(7, 'Residents Association Admin', '', 0, 1, '', 0, 'content');

-- --------------------------------------------------------

--
-- Table structure for table `ra_role_permissions`
--

CREATE TABLE IF NOT EXISTS `ra_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ra_role_permissions`
--

INSERT INTO `ra_role_permissions` (`role_id`, `permission_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 24),
(1, 25),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(2, 2),
(2, 3),
(4, 52),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 49),
(7, 52);

-- --------------------------------------------------------

--
-- Table structure for table `ra_schema_version`
--

CREATE TABLE IF NOT EXISTS `ra_schema_version` (
  `type` varchar(40) NOT NULL,
  `version` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ra_schema_version`
--

INSERT INTO `ra_schema_version` (`type`, `version`) VALUES
('core', 41),
('groups_', 1),
('group_types_', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ra_sessions`
--

CREATE TABLE IF NOT EXISTS `ra_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ra_settings`
--

CREATE TABLE IF NOT EXISTS `ra_settings` (
  `name` varchar(30) NOT NULL,
  `module` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ra_settings`
--

INSERT INTO `ra_settings` (`name`, `module`, `value`) VALUES
('auth.allow_name_change', 'core', '1'),
('auth.allow_register', 'core', '1'),
('auth.allow_remember', 'core', '1'),
('auth.do_login_redirect', 'core', '1'),
('auth.login_type', 'core', 'email'),
('auth.name_change_frequency', 'core', '1'),
('auth.name_change_limit', 'core', '1'),
('auth.password_force_mixed_case', 'core', '0'),
('auth.password_force_numbers', 'core', '0'),
('auth.password_force_symbols', 'core', '0'),
('auth.password_min_length', 'core', '8'),
('auth.password_show_labels', 'core', '0'),
('auth.remember_length', 'core', '1209600'),
('auth.user_activation_method', 'core', '1'),
('auth.use_extended_profile', 'core', '0'),
('auth.use_usernames', 'core', '1'),
('ext.country', 'core', 'US'),
('ext.state', 'core', 'CA'),
('ext.street_name', 'core', ''),
('form_save', 'core.ui', 'ctrl+s/⌘+s'),
('goto_content', 'core.ui', 'alt+c'),
('mailpath', 'email', '/usr/sbin/sendmail'),
('mailtype', 'email', 'text'),
('password_iterations', 'users', '8'),
('protocol', 'email', 'mail'),
('sender_email', 'email', ''),
('site.languages', 'core', 'a:3:{i:0;s:7:"english";i:1;s:7:"persian";i:2;s:10:"portuguese";}'),
('site.list_limit', 'core', '25'),
('site.show_front_profiler', 'core', '1'),
('site.show_profiler', 'core', '1'),
('site.status', 'core', '1'),
('site.system_email', 'core', 'admin@ras.com'),
('site.title', 'core', 'Residents Association Portal'),
('smtp_host', 'email', ''),
('smtp_pass', 'email', ''),
('smtp_port', 'email', ''),
('smtp_timeout', 'email', ''),
('smtp_user', 'email', ''),
('updates.bleeding_edge', 'core', '1'),
('updates.do_check', 'core', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ra_states`
--

CREATE TABLE IF NOT EXISTS `ra_states` (
`id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `abbrev` char(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ra_states`
--

INSERT INTO `ra_states` (`id`, `name`, `abbrev`) VALUES
(1, 'Alaska', 'AK'),
(2, 'Alabama', 'AL'),
(3, 'American Samoa', 'AS'),
(4, 'Arizona', 'AZ'),
(5, 'Arkansas', 'AR'),
(6, 'California', 'CA'),
(7, 'Colorado', 'CO'),
(8, 'Connecticut', 'CT'),
(9, 'Delaware', 'DE'),
(10, 'District of Columbia', 'DC'),
(11, 'Florida', 'FL'),
(12, 'Georgia', 'GA'),
(13, 'Guam', 'GU'),
(14, 'Hawaii', 'HI'),
(15, 'Idaho', 'ID'),
(16, 'Illinois', 'IL'),
(17, 'Indiana', 'IN'),
(18, 'Iowa', 'IA'),
(19, 'Kansas', 'KS'),
(20, 'Kentucky', 'KY'),
(21, 'Louisiana', 'LA'),
(22, 'Maine', 'ME'),
(23, 'Marshall Islands', 'MH'),
(24, 'Maryland', 'MD'),
(25, 'Massachusetts', 'MA'),
(26, 'Michigan', 'MI'),
(27, 'Minnesota', 'MN'),
(28, 'Mississippi', 'MS'),
(29, 'Missouri', 'MO'),
(30, 'Montana', 'MT'),
(31, 'Nebraska', 'NE'),
(32, 'Nevada', 'NV'),
(33, 'New Hampshire', 'NH'),
(34, 'New Jersey', 'NJ'),
(35, 'New Mexico', 'NM'),
(36, 'New York', 'NY'),
(37, 'North Carolina', 'NC'),
(38, 'North Dakota', 'ND'),
(39, 'Northern Mariana Islands', 'MP'),
(40, 'Ohio', 'OH'),
(41, 'Oklahoma', 'OK'),
(42, 'Oregon', 'OR'),
(43, 'Palau', 'PW'),
(44, 'Pennsylvania', 'PA'),
(45, 'Puerto Rico', 'PR'),
(46, 'Rhode Island', 'RI'),
(47, 'South Carolina', 'SC'),
(48, 'South Dakota', 'SD'),
(49, 'Tennessee', 'TN'),
(50, 'Texas', 'TX'),
(51, 'Utah', 'UT'),
(52, 'Vermont', 'VT'),
(53, 'Virgin Islands', 'VI'),
(54, 'Virginia', 'VA'),
(55, 'Washington', 'WA'),
(56, 'West Virginia', 'WV'),
(57, 'Wisconsin', 'WI'),
(58, 'Wyoming', 'WY'),
(59, 'Armed Forces Africa', 'AE'),
(60, 'Armed Forces Canada', 'AE'),
(61, 'Armed Forces Europe', 'AE'),
(62, 'Armed Forces Middle East', 'AE'),
(63, 'Armed Forces Pacific', 'AP');

-- --------------------------------------------------------

--
-- Table structure for table `ra_users`
--

CREATE TABLE IF NOT EXISTS `ra_users` (
`id` bigint(20) unsigned NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '4',
  `email` varchar(254) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password_hash` char(60) NOT NULL,
  `reset_hash` varchar(40) DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(45) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `reset_by` int(10) DEFAULT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_message` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT '',
  `display_name_changed` date DEFAULT NULL,
  `timezone` varchar(40) NOT NULL DEFAULT 'UM6',
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activate_hash` varchar(40) NOT NULL DEFAULT '',
  `force_password_reset` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ra_users`
--

INSERT INTO `ra_users` (`id`, `role_id`, `email`, `username`, `password_hash`, `reset_hash`, `last_login`, `last_ip`, `created_on`, `deleted`, `reset_by`, `banned`, `ban_message`, `display_name`, `display_name_changed`, `timezone`, `language`, `active`, `activate_hash`, `force_password_reset`) VALUES
(1, 1, 'admin@mybonfire.com', 'admin', '$2a$08$LWrqdOZQrLM8d8ewb0cWWOzwLq7fr1iikigNfxH/Z0AdxYFukA7hC', NULL, '2014-12-15 19:16:00', '127.0.0.1', '2014-10-31 18:32:29', 0, NULL, 0, NULL, 'admin', NULL, 'UM6', 'english', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ra_user_cookies`
--

CREATE TABLE IF NOT EXISTS `ra_user_cookies` (
  `user_id` bigint(20) unsigned NOT NULL,
  `token` varchar(128) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ra_user_groups`
--

CREATE TABLE IF NOT EXISTS `ra_user_groups` (
`id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ra_user_meta`
--

CREATE TABLE IF NOT EXISTS `ra_user_meta` (
`meta_id` int(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ra_activities`
--
ALTER TABLE `ra_activities`
 ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `ra_countries`
--
ALTER TABLE `ra_countries`
 ADD PRIMARY KEY (`iso`);

--
-- Indexes for table `ra_email_queue`
--
ALTER TABLE `ra_email_queue`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ra_events`
--
ALTER TABLE `ra_events`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ra_events_1_idx` (`event_type`), ADD KEY `fk_ra_events_2_idx` (`group_id`);

--
-- Indexes for table `ra_event_invitations`
--
ALTER TABLE `ra_event_invitations`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ra_event_invitations_1_idx` (`event_id`), ADD KEY `fk_ra_event_invitations_2_idx` (`member_id`), ADD KEY `fk_ra_event_invitations_3_idx` (`group_id`);

--
-- Indexes for table `ra_event_participants`
--
ALTER TABLE `ra_event_participants`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ra_event_participants_1_idx` (`event_id`), ADD KEY `fk_ra_event_participants_2_idx` (`member_id`);

--
-- Indexes for table `ra_event_schedule`
--
ALTER TABLE `ra_event_schedule`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ra_event_schedule_1_idx` (`event_id`);

--
-- Indexes for table `ra_event_types`
--
ALTER TABLE `ra_event_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ra_gallery`
--
ALTER TABLE `ra_gallery`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ra_group_gallery_1_idx` (`related_entity_id`);

--
-- Indexes for table `ra_gallery_resource_type`
--
ALTER TABLE `ra_gallery_resource_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ra_groups`
--
ALTER TABLE `ra_groups`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ra_groups_1_idx` (`group_type`);

--
-- Indexes for table `ra_group_requests`
--
ALTER TABLE `ra_group_requests`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ra_group_requests_1_idx` (`group_type`);

--
-- Indexes for table `ra_group_types`
--
ALTER TABLE `ra_group_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ra_login_attempts`
--
ALTER TABLE `ra_login_attempts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ra_membership_requests`
--
ALTER TABLE `ra_membership_requests`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ra_membership_types`
--
ALTER TABLE `ra_membership_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ra_member_relations`
--
ALTER TABLE `ra_member_relations`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ra_member_relations_1_idx` (`relationship_type`), ADD KEY `fk_ra_member_relations_2_idx` (`from_member_id`), ADD KEY `fk_ra_member_relations_3_idx` (`to_member_id`);

--
-- Indexes for table `ra_memebers`
--
ALTER TABLE `ra_memebers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ra_permissions`
--
ALTER TABLE `ra_permissions`
 ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `ra_relationship_types`
--
ALTER TABLE `ra_relationship_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ra_resources`
--
ALTER TABLE `ra_resources`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ra_gallery_resources_1_idx` (`gallery_id`), ADD KEY `fk_ra_gallery_resources_2_idx` (`resource_type`);

--
-- Indexes for table `ra_roles`
--
ALTER TABLE `ra_roles`
 ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `ra_role_permissions`
--
ALTER TABLE `ra_role_permissions`
 ADD PRIMARY KEY (`role_id`,`permission_id`);

--
-- Indexes for table `ra_schema_version`
--
ALTER TABLE `ra_schema_version`
 ADD PRIMARY KEY (`type`);

--
-- Indexes for table `ra_sessions`
--
ALTER TABLE `ra_sessions`
 ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `ra_settings`
--
ALTER TABLE `ra_settings`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `ra_states`
--
ALTER TABLE `ra_states`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ra_users`
--
ALTER TABLE `ra_users`
 ADD PRIMARY KEY (`id`), ADD KEY `email` (`email`);

--
-- Indexes for table `ra_user_cookies`
--
ALTER TABLE `ra_user_cookies`
 ADD KEY `token` (`token`);

--
-- Indexes for table `ra_user_groups`
--
ALTER TABLE `ra_user_groups`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ra_member_groups_2_idx` (`group_id`);

--
-- Indexes for table `ra_user_meta`
--
ALTER TABLE `ra_user_meta`
 ADD PRIMARY KEY (`meta_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ra_activities`
--
ALTER TABLE `ra_activities`
MODIFY `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `ra_email_queue`
--
ALTER TABLE `ra_email_queue`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_events`
--
ALTER TABLE `ra_events`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_event_invitations`
--
ALTER TABLE `ra_event_invitations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_event_schedule`
--
ALTER TABLE `ra_event_schedule`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_event_types`
--
ALTER TABLE `ra_event_types`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_gallery`
--
ALTER TABLE `ra_gallery`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_gallery_resource_type`
--
ALTER TABLE `ra_gallery_resource_type`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_groups`
--
ALTER TABLE `ra_groups`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ra_group_requests`
--
ALTER TABLE `ra_group_requests`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_group_types`
--
ALTER TABLE `ra_group_types`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ra_login_attempts`
--
ALTER TABLE `ra_login_attempts`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_membership_types`
--
ALTER TABLE `ra_membership_types`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_member_relations`
--
ALTER TABLE `ra_member_relations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_memebers`
--
ALTER TABLE `ra_memebers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_permissions`
--
ALTER TABLE `ra_permissions`
MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `ra_relationship_types`
--
ALTER TABLE `ra_relationship_types`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_resources`
--
ALTER TABLE `ra_resources`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ra_roles`
--
ALTER TABLE `ra_roles`
MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ra_states`
--
ALTER TABLE `ra_states`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `ra_users`
--
ALTER TABLE `ra_users`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ra_user_groups`
--
ALTER TABLE `ra_user_groups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ra_user_meta`
--
ALTER TABLE `ra_user_meta`
MODIFY `meta_id` int(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ra_events`
--
ALTER TABLE `ra_events`
ADD CONSTRAINT `fk_ra_events_1` FOREIGN KEY (`event_type`) REFERENCES `ra_event_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_ra_events_2` FOREIGN KEY (`group_id`) REFERENCES `ra_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ra_event_invitations`
--
ALTER TABLE `ra_event_invitations`
ADD CONSTRAINT `fk_ra_event_invitations_1` FOREIGN KEY (`event_id`) REFERENCES `ra_events` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_ra_event_invitations_2` FOREIGN KEY (`member_id`) REFERENCES `ra_memebers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_ra_event_invitations_3` FOREIGN KEY (`group_id`) REFERENCES `ra_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ra_event_participants`
--
ALTER TABLE `ra_event_participants`
ADD CONSTRAINT `fk_ra_event_participants_1` FOREIGN KEY (`event_id`) REFERENCES `ra_events` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_ra_event_participants_2` FOREIGN KEY (`member_id`) REFERENCES `ra_memebers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ra_event_schedule`
--
ALTER TABLE `ra_event_schedule`
ADD CONSTRAINT `fk_ra_event_schedule_1` FOREIGN KEY (`event_id`) REFERENCES `ra_events` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ra_gallery`
--
ALTER TABLE `ra_gallery`
ADD CONSTRAINT `fk_ra_group_gallery_1` FOREIGN KEY (`related_entity_id`) REFERENCES `ra_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ra_groups`
--
ALTER TABLE `ra_groups`
ADD CONSTRAINT `fk_ra_groups_1` FOREIGN KEY (`group_type`) REFERENCES `ra_group_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ra_group_requests`
--
ALTER TABLE `ra_group_requests`
ADD CONSTRAINT `fk_ra_group_requests_1` FOREIGN KEY (`group_type`) REFERENCES `ra_groups` (`group_type`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ra_member_relations`
--
ALTER TABLE `ra_member_relations`
ADD CONSTRAINT `fk_ra_member_relations_1` FOREIGN KEY (`relationship_type`) REFERENCES `ra_relationship_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_ra_member_relations_2` FOREIGN KEY (`from_member_id`) REFERENCES `ra_memebers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_ra_member_relations_3` FOREIGN KEY (`to_member_id`) REFERENCES `ra_memebers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ra_resources`
--
ALTER TABLE `ra_resources`
ADD CONSTRAINT `fk_ra_gallery_resources_1` FOREIGN KEY (`gallery_id`) REFERENCES `ra_gallery` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_ra_gallery_resources_2` FOREIGN KEY (`resource_type`) REFERENCES `ra_gallery_resource_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ra_user_groups`
--
ALTER TABLE `ra_user_groups`
ADD CONSTRAINT `fk_ra_member_groups_2` FOREIGN KEY (`group_id`) REFERENCES `ra_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
