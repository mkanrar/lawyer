-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 19, 2021 at 05:10 AM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawyer_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int NOT NULL,
  `city` varchar(255) NOT NULL,
  `state_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `state_id`) VALUES
(1, 'North and Middle Andaman', 32),
(2, 'South Andaman', 32),
(3, 'Nicobar', 32),
(4, 'Adilabad', 1),
(5, 'Anantapur', 1),
(6, 'Chittoor', 1),
(7, 'East Godavari', 1),
(8, 'Guntur', 1),
(9, 'Hyderabad', 1),
(10, 'Kadapa', 1),
(11, 'Karimnagar', 1),
(12, 'Khammam', 1),
(13, 'Krishna', 1),
(14, 'Kurnool', 1),
(15, 'Mahbubnagar', 1),
(16, 'Medak', 1),
(17, 'Nalgonda', 1),
(18, 'Nellore', 1),
(19, 'Nizamabad', 1),
(20, 'Prakasam', 1),
(21, 'Rangareddi', 1),
(22, 'Srikakulam', 1),
(23, 'Vishakhapatnam', 1),
(24, 'Vizianagaram', 1),
(25, 'Warangal', 1),
(26, 'West Godavari', 1),
(27, 'Anjaw', 3),
(28, 'Changlang', 3),
(29, 'East Kameng', 3),
(30, 'Lohit', 3),
(31, 'Lower Subansiri', 3),
(32, 'Papum Pare', 3),
(33, 'Tirap', 3),
(34, 'Dibang Valley', 3),
(35, 'Upper Subansiri', 3),
(36, 'West Kameng', 3),
(37, 'Barpeta', 2),
(38, 'Bongaigaon', 2),
(39, 'Cachar', 2),
(40, 'Darrang', 2),
(41, 'Dhemaji', 2),
(42, 'Dhubri', 2),
(43, 'Dibrugarh', 2),
(44, 'Goalpara', 2),
(45, 'Golaghat', 2),
(46, 'Hailakandi', 2),
(47, 'Jorhat', 2),
(48, 'Karbi Anglong', 2),
(49, 'Karimganj', 2),
(50, 'Kokrajhar', 2),
(51, 'Lakhimpur', 2),
(52, 'Marigaon', 2),
(53, 'Nagaon', 2),
(54, 'Nalbari', 2),
(55, 'North Cachar Hills', 2),
(56, 'Sibsagar', 2),
(57, 'Sonitpur', 2),
(58, 'Tinsukia', 2),
(59, 'Araria', 4),
(60, 'Aurangabad', 4),
(61, 'Banka', 4),
(62, 'Begusarai', 4),
(63, 'Bhagalpur', 4),
(64, 'Bhojpur', 4),
(65, 'Buxar', 4),
(66, 'Darbhanga', 4),
(67, 'Purba Champaran', 4),
(68, 'Gaya', 4),
(69, 'Gopalganj', 4),
(70, 'Jamui', 4),
(71, 'Jehanabad', 4),
(72, 'Khagaria', 4),
(73, 'Kishanganj', 4),
(74, 'Kaimur', 4),
(75, 'Katihar', 4),
(76, 'Lakhisarai', 4),
(77, 'Madhubani', 4),
(78, 'Munger', 4),
(79, 'Madhepura', 4),
(80, 'Muzaffarpur', 4),
(81, 'Nalanda', 4),
(82, 'Nawada', 4),
(83, 'Patna', 4),
(84, 'Purnia', 4),
(85, 'Rohtas', 4),
(86, 'Saharsa', 4),
(87, 'Samastipur', 4),
(88, 'Sheohar', 4),
(89, 'Sheikhpura', 4),
(90, 'Saran', 4),
(91, 'Sitamarhi', 4),
(92, 'Supaul', 4),
(93, 'Siwan', 4),
(94, 'Vaishali', 4),
(95, 'Pashchim Champaran', 4),
(96, 'Bastar', 36),
(97, 'Bilaspur', 36),
(98, 'Dantewada', 36),
(99, 'Dhamtari', 36),
(100, 'Durg', 36),
(101, 'Jashpur', 36),
(102, 'Janjgir-Champa', 36),
(103, 'Korba', 36),
(104, 'Koriya', 36),
(105, 'Kanker', 36),
(106, 'Kawardha', 36),
(107, 'Mahasamund', 36),
(108, 'Raigarh', 36),
(109, 'Rajnandgaon', 36),
(110, 'Raipur', 36),
(111, 'Surguja', 36),
(112, 'Diu', 29),
(113, 'Daman', 29),
(114, 'Central Delhi', 25),
(115, 'East Delhi', 25),
(116, 'New Delhi', 25),
(117, 'North Delhi', 25),
(118, 'North East Delhi', 25),
(119, 'North West Delhi', 25),
(120, 'South Delhi', 25),
(121, 'South West Delhi', 25),
(122, 'West Delhi', 25),
(123, 'North Goa', 26),
(124, 'South Goa', 26),
(125, 'Ahmedabad', 5),
(126, 'Amreli District', 5),
(127, 'Anand', 5),
(128, 'Banaskantha', 5),
(129, 'Bharuch', 5),
(130, 'Bhavnagar', 5),
(131, 'Dahod', 5),
(132, 'The Dangs', 5),
(133, 'Gandhinagar', 5),
(134, 'Jamnagar', 5),
(135, 'Junagadh', 5),
(136, 'Kutch', 5),
(137, 'Kheda', 5),
(138, 'Mehsana', 5),
(139, 'Narmada', 5),
(140, 'Navsari', 5),
(141, 'Patan', 5),
(142, 'Panchmahal', 5),
(143, 'Porbandar', 5),
(144, 'Rajkot', 5),
(145, 'Sabarkantha', 5),
(146, 'Surendranagar', 5),
(147, 'Surat', 5),
(148, 'Vadodara', 5),
(149, 'Valsad', 5),
(150, 'Ambala', 6),
(151, 'Bhiwani', 6),
(152, 'Faridabad', 6),
(153, 'Fatehabad', 6),
(154, 'Gurgaon', 6),
(155, 'Hissar', 6),
(156, 'Jhajjar', 6),
(157, 'Jind', 6),
(158, 'Karnal', 6),
(159, 'Kaithal', 6),
(160, 'Kurukshetra', 6),
(161, 'Mahendragarh', 6),
(162, 'Mewat', 6),
(163, 'Panchkula', 6),
(164, 'Panipat', 6),
(165, 'Rewari', 6),
(166, 'Rohtak', 6),
(167, 'Sirsa', 6),
(168, 'Sonepat', 6),
(169, 'Yamuna Nagar', 6),
(170, 'Palwal', 6),
(171, 'Bilaspur', 7),
(172, 'Chamba', 7),
(173, 'Hamirpur', 7),
(174, 'Kangra', 7),
(175, 'Kinnaur', 7),
(176, 'Kulu', 7),
(177, 'Lahaul and Spiti', 7),
(178, 'Mandi', 7),
(179, 'Shimla', 7),
(180, 'Sirmaur', 7),
(181, 'Solan', 7),
(182, 'Una', 7),
(183, 'Anantnag', 8),
(184, 'Badgam', 8),
(185, 'Bandipore', 8),
(186, 'Baramula', 8),
(187, 'Doda', 8),
(188, 'Jammu', 8),
(189, 'Kargil', 8),
(190, 'Kathua', 8),
(191, 'Kupwara', 8),
(192, 'Leh', 8),
(193, 'Poonch', 8),
(194, 'Pulwama', 8),
(195, 'Rajauri', 8),
(196, 'Srinagar', 8),
(197, 'Samba', 8),
(198, 'Udhampur', 8),
(199, 'Bokaro', 34),
(200, 'Chatra', 34),
(201, 'Deoghar', 34),
(202, 'Dhanbad', 34),
(203, 'Dumka', 34),
(204, 'Purba Singhbhum', 34),
(205, 'Garhwa', 34),
(206, 'Giridih', 34),
(207, 'Godda', 34),
(208, 'Gumla', 34),
(209, 'Hazaribagh', 34),
(210, 'Koderma', 34),
(211, 'Lohardaga', 34),
(212, 'Pakur', 34),
(213, 'Palamu', 34),
(214, 'Ranchi', 34),
(215, 'Sahibganj', 34),
(216, 'Seraikela and Kharsawan', 34),
(217, 'Pashchim Singhbhum', 34),
(218, 'Ramgarh', 34),
(219, 'Bidar', 9),
(220, 'Belgaum', 9),
(221, 'Bijapur', 9),
(222, 'Bagalkot', 9),
(223, 'Bellary', 9),
(224, 'Bangalore Rural District', 9),
(225, 'Bangalore Urban District', 9),
(226, 'Chamarajnagar', 9),
(227, 'Chikmagalur', 9),
(228, 'Chitradurga', 9),
(229, 'Davanagere', 9),
(230, 'Dharwad', 9),
(231, 'Dakshina Kannada', 9),
(232, 'Gadag', 9),
(233, 'Gulbarga', 9),
(234, 'Hassan', 9),
(235, 'Haveri District', 9),
(236, 'Kodagu', 9),
(237, 'Kolar', 9),
(238, 'Koppal', 9),
(239, 'Mandya', 9),
(240, 'Mysore', 9),
(241, 'Raichur', 9),
(242, 'Shimoga', 9),
(243, 'Tumkur', 9),
(244, 'Udupi', 9),
(245, 'Uttara Kannada', 9),
(246, 'Ramanagara', 9),
(247, 'Chikballapur', 9),
(248, 'Yadagiri', 9),
(249, 'Alappuzha', 10),
(250, 'Ernakulam', 10),
(251, 'Idukki', 10),
(252, 'Kollam', 10),
(253, 'Kannur', 10),
(254, 'Kasaragod', 10),
(255, 'Kottayam', 10),
(256, 'Kozhikode', 10),
(257, 'Malappuram', 10),
(258, 'Palakkad', 10),
(259, 'Pathanamthitta', 10),
(260, 'Thrissur', 10),
(261, 'Thiruvananthapuram', 10),
(262, 'Wayanad', 10),
(263, 'Alirajpur', 11),
(264, 'Anuppur', 11),
(265, 'Ashok Nagar', 11),
(266, 'Balaghat', 11),
(267, 'Barwani', 11),
(268, 'Betul', 11),
(269, 'Bhind', 11),
(270, 'Bhopal', 11),
(271, 'Burhanpur', 11),
(272, 'Chhatarpur', 11),
(273, 'Chhindwara', 11),
(274, 'Damoh', 11),
(275, 'Datia', 11),
(276, 'Dewas', 11),
(277, 'Dhar', 11),
(278, 'Dindori', 11),
(279, 'Guna', 11),
(280, 'Gwalior', 11),
(281, 'Harda', 11),
(282, 'Hoshangabad', 11),
(283, 'Indore', 11),
(284, 'Jabalpur', 11),
(285, 'Jhabua', 11),
(286, 'Katni', 11),
(287, 'Khandwa', 11),
(288, 'Khargone', 11),
(289, 'Mandla', 11),
(290, 'Mandsaur', 11),
(291, 'Morena', 11),
(292, 'Narsinghpur', 11),
(293, 'Neemuch', 11),
(294, 'Panna', 11),
(295, 'Rewa', 11),
(296, 'Rajgarh', 11),
(297, 'Ratlam', 11),
(298, 'Raisen', 11),
(299, 'Sagar', 11),
(300, 'Satna', 11),
(301, 'Sehore', 11),
(302, 'Seoni', 11),
(303, 'Shahdol', 11),
(304, 'Shajapur', 11),
(305, 'Sheopur', 11),
(306, 'Shivpuri', 11),
(307, 'Sidhi', 11),
(308, 'Singrauli', 11),
(309, 'Tikamgarh', 11),
(310, 'Ujjain', 11),
(311, 'Umaria', 11),
(312, 'Vidisha', 11),
(313, 'Ahmednagar', 12),
(314, 'Akola', 12),
(315, 'Amrawati', 12),
(316, 'Aurangabad', 12),
(317, 'Bhandara', 12),
(318, 'Beed', 12),
(319, 'Buldhana', 12),
(320, 'Chandrapur', 12),
(321, 'Dhule', 12),
(322, 'Gadchiroli', 12),
(323, 'Gondiya', 12),
(324, 'Hingoli', 12),
(325, 'Jalgaon', 12),
(326, 'Jalna', 12),
(327, 'Kolhapur', 12),
(328, 'Latur', 12),
(329, 'Mumbai City', 12),
(330, 'Mumbai suburban', 12),
(331, 'Nandurbar', 12),
(332, 'Nanded', 12),
(333, 'Nagpur', 12),
(334, 'Nashik', 12),
(335, 'Osmanabad', 12),
(336, 'Parbhani', 12),
(337, 'Pune', 12),
(338, 'Raigad', 12),
(339, 'Ratnagiri', 12),
(340, 'Sindhudurg', 12),
(341, 'Sangli', 12),
(342, 'Solapur', 12),
(343, 'Satara', 12),
(344, 'Thane', 12),
(345, 'Wardha', 12),
(346, 'Washim', 12),
(347, 'Yavatmal', 12),
(348, 'Bishnupur', 13),
(349, 'Churachandpur', 13),
(350, 'Chandel', 13),
(351, 'Imphal East', 13),
(352, 'Senapati', 13),
(353, 'Tamenglong', 13),
(354, 'Thoubal', 13),
(355, 'Ukhrul', 13),
(356, 'Imphal West', 13),
(357, 'East Garo Hills', 14),
(358, 'East Khasi Hills', 14),
(359, 'Jaintia Hills', 14),
(360, 'Ri-Bhoi', 14),
(361, 'South Garo Hills', 14),
(362, 'West Garo Hills', 14),
(363, 'West Khasi Hills', 14),
(364, 'Aizawl', 15),
(365, 'Champhai', 15),
(366, 'Kolasib', 15),
(367, 'Lawngtlai', 15),
(368, 'Lunglei', 15),
(369, 'Mamit', 15),
(370, 'Saiha', 15),
(371, 'Serchhip', 15),
(372, 'Dimapur', 16),
(373, 'Kohima', 16),
(374, 'Mokokchung', 16),
(375, 'Mon', 16),
(376, 'Phek', 16),
(377, 'Tuensang', 16),
(378, 'Wokha', 16),
(379, 'Zunheboto', 16),
(380, 'Angul', 17),
(381, 'Boudh', 17),
(382, 'Bhadrak', 17),
(383, 'Bolangir', 17),
(384, 'Bargarh', 17),
(385, 'Baleswar', 17),
(386, 'Cuttack', 17),
(387, 'Debagarh', 17),
(388, 'Dhenkanal', 17),
(389, 'Ganjam', 17),
(390, 'Gajapati', 17),
(391, 'Jharsuguda', 17),
(392, 'Jajapur', 17),
(393, 'Jagatsinghpur', 17),
(394, 'Khordha', 17),
(395, 'Kendujhar', 17),
(396, 'Kalahandi', 17),
(397, 'Kandhamal', 17),
(398, 'Koraput', 17),
(399, 'Kendrapara', 17),
(400, 'Malkangiri', 17),
(401, 'Mayurbhanj', 17),
(402, 'Nabarangpur', 17),
(403, 'Nuapada', 17),
(404, 'Nayagarh', 17),
(405, 'Puri', 17),
(406, 'Rayagada', 17),
(407, 'Sambalpur', 17),
(408, 'Subarnapur', 17),
(409, 'Sundargarh', 17),
(410, 'Karaikal', 27),
(411, 'Mahe', 27),
(412, 'Puducherry', 27),
(413, 'Yanam', 27),
(414, 'Amritsar', 18),
(415, 'Bathinda', 18),
(416, 'Firozpur', 18),
(417, 'Faridkot', 18),
(418, 'Fatehgarh Sahib', 18),
(419, 'Gurdaspur', 18),
(420, 'Hoshiarpur', 18),
(421, 'Jalandhar', 18),
(422, 'Kapurthala', 18),
(423, 'Ludhiana', 18),
(424, 'Mansa', 18),
(425, 'Moga', 18),
(426, 'Mukatsar', 18),
(427, 'Nawan Shehar', 18),
(428, 'Patiala', 18),
(429, 'Rupnagar', 18),
(430, 'Sangrur', 18),
(431, 'Ajmer', 19),
(432, 'Alwar', 19),
(433, 'Bikaner', 19),
(434, 'Barmer', 19),
(435, 'Banswara', 19),
(436, 'Bharatpur', 19),
(437, 'Baran', 19),
(438, 'Bundi', 19),
(439, 'Bhilwara', 19),
(440, 'Churu', 19),
(441, 'Chittorgarh', 19),
(442, 'Dausa', 19),
(443, 'Dholpur', 19),
(444, 'Dungapur', 19),
(445, 'Ganganagar', 19),
(446, 'Hanumangarh', 19),
(447, 'Juhnjhunun', 19),
(448, 'Jalore', 19),
(449, 'Jodhpur', 19),
(450, 'Jaipur', 19),
(451, 'Jaisalmer', 19),
(452, 'Jhalawar', 19),
(453, 'Karauli', 19),
(454, 'Kota', 19),
(455, 'Nagaur', 19),
(456, 'Pali', 19),
(457, 'Pratapgarh', 19),
(458, 'Rajsamand', 19),
(459, 'Sikar', 19),
(460, 'Sawai Madhopur', 19),
(461, 'Sirohi', 19),
(462, 'Tonk', 19),
(463, 'Udaipur', 19),
(464, 'East Sikkim', 20),
(465, 'North Sikkim', 20),
(466, 'South Sikkim', 20),
(467, 'West Sikkim', 20),
(468, 'Ariyalur', 21),
(469, 'Chennai', 21),
(470, 'Coimbatore', 21),
(471, 'Cuddalore', 21),
(472, 'Dharmapuri', 21),
(473, 'Dindigul', 21),
(474, 'Erode', 21),
(475, 'Kanchipuram', 21),
(476, 'Kanyakumari', 21),
(477, 'Karur', 21),
(478, 'Madurai', 21),
(479, 'Nagapattinam', 21),
(480, 'The Nilgiris', 21),
(481, 'Namakkal', 21),
(482, 'Perambalur', 21),
(483, 'Pudukkottai', 21),
(484, 'Ramanathapuram', 21),
(485, 'Salem', 21),
(486, 'Sivagangai', 21),
(487, 'Tiruppur', 21),
(488, 'Tiruchirappalli', 21),
(489, 'Theni', 21),
(490, 'Tirunelveli', 21),
(491, 'Thanjavur', 21),
(492, 'Thoothukudi', 21),
(493, 'Thiruvallur', 21),
(494, 'Thiruvarur', 21),
(495, 'Tiruvannamalai', 21),
(496, 'Vellore', 21),
(497, 'Villupuram', 21),
(498, 'Dhalai', 22),
(499, 'North Tripura', 22),
(500, 'South Tripura', 22),
(501, 'West Tripura', 22),
(502, 'Almora', 33),
(503, 'Bageshwar', 33),
(504, 'Chamoli', 33),
(505, 'Champawat', 33),
(506, 'Dehradun', 33),
(507, 'Haridwar', 33),
(508, 'Nainital', 33),
(509, 'Pauri Garhwal', 33),
(510, 'Pithoragharh', 33),
(511, 'Rudraprayag', 33),
(512, 'Tehri Garhwal', 33),
(513, 'Udham Singh Nagar', 33),
(514, 'Uttarkashi', 33),
(515, 'Agra', 23),
(516, 'Allahabad', 23),
(517, 'Aligarh', 23),
(518, 'Ambedkar Nagar', 23),
(519, 'Auraiya', 23),
(520, 'Azamgarh', 23),
(521, 'Barabanki', 23),
(522, 'Badaun', 23),
(523, 'Bagpat', 23),
(524, 'Bahraich', 23),
(525, 'Bijnor', 23),
(526, 'Ballia', 23),
(527, 'Banda', 23),
(528, 'Balrampur', 23),
(529, 'Bareilly', 23),
(530, 'Basti', 23),
(531, 'Bulandshahr', 23),
(532, 'Chandauli', 23),
(533, 'Chitrakoot', 23),
(534, 'Deoria', 23),
(535, 'Etah', 23),
(536, 'Kanshiram Nagar', 23),
(537, 'Etawah', 23),
(538, 'Firozabad', 23),
(539, 'Farrukhabad', 23),
(540, 'Fatehpur', 23),
(541, 'Faizabad', 23),
(542, 'Gautam Buddha Nagar', 23),
(543, 'Gonda', 23),
(544, 'Ghazipur', 23),
(545, 'Gorkakhpur', 23),
(546, 'Ghaziabad', 23),
(547, 'Hamirpur', 23),
(548, 'Hardoi', 23),
(549, 'Mahamaya Nagar', 23),
(550, 'Jhansi', 23),
(551, 'Jalaun', 23),
(552, 'Jyotiba Phule Nagar', 23),
(553, 'Jaunpur District', 23),
(554, 'Kanpur Dehat', 23),
(555, 'Kannauj', 23),
(556, 'Kanpur Nagar', 23),
(557, 'Kaushambi', 23),
(558, 'Kushinagar', 23),
(559, 'Lalitpur', 23),
(560, 'Lakhimpur Kheri', 23),
(561, 'Lucknow', 23),
(562, 'Mau', 23),
(563, 'Meerut', 23),
(564, 'Maharajganj', 23),
(565, 'Mahoba', 23),
(566, 'Mirzapur', 23),
(567, 'Moradabad', 23),
(568, 'Mainpuri', 23),
(569, 'Mathura', 23),
(570, 'Muzaffarnagar', 23),
(571, 'Pilibhit', 23),
(572, 'Pratapgarh', 23),
(573, 'Rampur', 23),
(574, 'Rae Bareli', 23),
(575, 'Saharanpur', 23),
(576, 'Sitapur', 23),
(577, 'Shahjahanpur', 23),
(578, 'Sant Kabir Nagar', 23),
(579, 'Siddharthnagar', 23),
(580, 'Sonbhadra', 23),
(581, 'Sant Ravidas Nagar', 23),
(582, 'Sultanpur', 23),
(583, 'Shravasti', 23),
(584, 'Unnao', 23),
(585, 'Varanasi', 23),
(586, 'Birbhum', 24),
(587, 'Bankura', 24),
(588, 'Bardhaman', 24),
(589, 'Darjeeling', 24),
(590, 'Dakshin Dinajpur', 24),
(591, 'Hooghly', 24),
(592, 'Howrah', 24),
(593, 'Jalpaiguri', 24),
(594, 'Cooch Behar', 24),
(595, 'Kolkata', 24),
(596, 'Malda', 24),
(597, 'Midnapore', 24),
(598, 'Murshidabad', 24),
(599, 'Nadia', 24),
(600, 'North 24 Parganas', 24),
(601, 'South 24 Parganas', 24),
(602, 'Purulia', 24),
(603, 'Uttar Dinajpur', 24);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Law Guide', 'tests', '1621100860user1-128x128.jpg', '1', '2021-01-21 07:33:33', '2021-01-21 07:33:33'),
(3, 'Test', 'It could be something internal to the instance, like the OOM Killer, or a problem with the kernel or kernel modules you are using, or a problem that', '1621100840user2-160x160.jpg', '1', '2021-01-22 07:18:11', '2021-01-22 07:18:11'),
(5, 'Legal News 1', 'Go to AWS EC2 management console and try rebooting the server, if you know the AWS EC2 server stopped responding because of overload. If a reboot didn\'t work, try stopping the AWS EC2 server and wait for some time.', '1612449019user7-128x128.jpg', '1', '2021-01-24 12:37:23', '2021-01-24 12:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `countryCode` char(2) NOT NULL DEFAULT '',
  `name` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `countryCode`, `name`) VALUES
(1, 'AD', 'Andorra'),
(2, 'AE', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AO', 'Angola'),
(9, 'AQ', 'Antarctica'),
(10, 'AR', 'Argentina'),
(11, 'AS', 'American Samoa'),
(12, 'AT', 'Austria'),
(13, 'AU', 'Australia'),
(14, 'AW', 'Aruba'),
(15, 'AX', 'Åland'),
(16, 'AZ', 'Azerbaijan'),
(17, 'BA', 'Bosnia and Herzegovina'),
(18, 'BB', 'Barbados'),
(19, 'BD', 'Bangladesh'),
(20, 'BE', 'Belgium'),
(21, 'BF', 'Burkina Faso'),
(22, 'BG', 'Bulgaria'),
(23, 'BH', 'Bahrain'),
(24, 'BI', 'Burundi'),
(25, 'BJ', 'Benin'),
(26, 'BL', 'Saint Barthélemy'),
(27, 'BM', 'Bermuda'),
(28, 'BN', 'Brunei'),
(29, 'BO', 'Bolivia'),
(30, 'BQ', 'Bonaire'),
(31, 'BR', 'Brazil'),
(32, 'BS', 'Bahamas'),
(33, 'BT', 'Bhutan'),
(34, 'BV', 'Bouvet Island'),
(35, 'BW', 'Botswana'),
(36, 'BY', 'Belarus'),
(37, 'BZ', 'Belize'),
(38, 'CA', 'Canada'),
(39, 'CC', 'Cocos [Keeling] Islands'),
(40, 'CD', 'Democratic Republic of the Congo'),
(41, 'CF', 'Central African Republic'),
(42, 'CG', 'Republic of the Congo'),
(43, 'CH', 'Switzerland'),
(44, 'CI', 'Ivory Coast'),
(45, 'CK', 'Cook Islands'),
(46, 'CL', 'Chile'),
(47, 'CM', 'Cameroon'),
(48, 'CN', 'China'),
(49, 'CO', 'Colombia'),
(50, 'CR', 'Costa Rica'),
(51, 'CU', 'Cuba'),
(52, 'CV', 'Cape Verde'),
(53, 'CW', 'Curacao'),
(54, 'CX', 'Christmas Island'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DE', 'Germany'),
(58, 'DJ', 'Djibouti'),
(59, 'DK', 'Denmark'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'DZ', 'Algeria'),
(63, 'EC', 'Ecuador'),
(64, 'EE', 'Estonia'),
(65, 'EG', 'Egypt'),
(66, 'EH', 'Western Sahara'),
(67, 'ER', 'Eritrea'),
(68, 'ES', 'Spain'),
(69, 'ET', 'Ethiopia'),
(70, 'FI', 'Finland'),
(71, 'FJ', 'Fiji'),
(72, 'FK', 'Falkland Islands'),
(73, 'FM', 'Micronesia'),
(74, 'FO', 'Faroe Islands'),
(75, 'FR', 'France'),
(76, 'GA', 'Gabon'),
(77, 'GB', 'United Kingdom'),
(78, 'GD', 'Grenada'),
(79, 'GE', 'Georgia'),
(80, 'GF', 'French Guiana'),
(81, 'GG', 'Guernsey'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GL', 'Greenland'),
(85, 'GM', 'Gambia'),
(86, 'GN', 'Guinea'),
(87, 'GP', 'Guadeloupe'),
(88, 'GQ', 'Equatorial Guinea'),
(89, 'GR', 'Greece'),
(90, 'GS', 'South Georgia and the South Sandwich Islands'),
(91, 'GT', 'Guatemala'),
(92, 'GU', 'Guam'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HK', 'Hong Kong'),
(96, 'HM', 'Heard Island and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HR', 'Croatia'),
(99, 'HT', 'Haiti'),
(100, 'HU', 'Hungary'),
(101, 'ID', 'Indonesia'),
(102, 'IE', 'Ireland'),
(103, 'IL', 'Israel'),
(104, 'IM', 'Isle of Man'),
(105, 'IN', 'India'),
(106, 'IO', 'British Indian Ocean Territory'),
(107, 'IQ', 'Iraq'),
(108, 'IR', 'Iran'),
(109, 'IS', 'Iceland'),
(110, 'IT', 'Italy'),
(111, 'JE', 'Jersey'),
(112, 'JM', 'Jamaica'),
(113, 'JO', 'Jordan'),
(114, 'JP', 'Japan'),
(115, 'KE', 'Kenya'),
(116, 'KG', 'Kyrgyzstan'),
(117, 'KH', 'Cambodia'),
(118, 'KI', 'Kiribati'),
(119, 'KM', 'Comoros'),
(120, 'KN', 'Saint Kitts and Nevis'),
(121, 'KP', 'North Korea'),
(122, 'KR', 'South Korea'),
(123, 'KW', 'Kuwait'),
(124, 'KY', 'Cayman Islands'),
(125, 'KZ', 'Kazakhstan'),
(126, 'LA', 'Laos'),
(127, 'LB', 'Lebanon'),
(128, 'LC', 'Saint Lucia'),
(129, 'LI', 'Liechtenstein'),
(130, 'LK', 'Sri Lanka'),
(131, 'LR', 'Liberia'),
(132, 'LS', 'Lesotho'),
(133, 'LT', 'Lithuania'),
(134, 'LU', 'Luxembourg'),
(135, 'LV', 'Latvia'),
(136, 'LY', 'Libya'),
(137, 'MA', 'Morocco'),
(138, 'MC', 'Monaco'),
(139, 'MD', 'Moldova'),
(140, 'ME', 'Montenegro'),
(141, 'MF', 'Saint Martin'),
(142, 'MG', 'Madagascar'),
(143, 'MH', 'Marshall Islands'),
(144, 'MK', 'Macedonia'),
(145, 'ML', 'Mali'),
(146, 'MM', 'Myanmar [Burma]'),
(147, 'MN', 'Mongolia'),
(148, 'MO', 'Macao'),
(149, 'MP', 'Northern Mariana Islands'),
(150, 'MQ', 'Martinique'),
(151, 'MR', 'Mauritania'),
(152, 'MS', 'Montserrat'),
(153, 'MT', 'Malta'),
(154, 'MU', 'Mauritius'),
(155, 'MV', 'Maldives'),
(156, 'MW', 'Malawi'),
(157, 'MX', 'Mexico'),
(158, 'MY', 'Malaysia'),
(159, 'MZ', 'Mozambique'),
(160, 'NA', 'Namibia'),
(161, 'NC', 'New Caledonia'),
(162, 'NE', 'Niger'),
(163, 'NF', 'Norfolk Island'),
(164, 'NG', 'Nigeria'),
(165, 'NI', 'Nicaragua'),
(166, 'NL', 'Netherlands'),
(167, 'NO', 'Norway'),
(168, 'NP', 'Nepal'),
(169, 'NR', 'Nauru'),
(170, 'NU', 'Niue'),
(171, 'NZ', 'New Zealand'),
(172, 'OM', 'Oman'),
(173, 'PA', 'Panama'),
(174, 'PE', 'Peru'),
(175, 'PF', 'French Polynesia'),
(176, 'PG', 'Papua New Guinea'),
(177, 'PH', 'Philippines'),
(178, 'PK', 'Pakistan'),
(179, 'PL', 'Poland'),
(180, 'PM', 'Saint Pierre and Miquelon'),
(181, 'PN', 'Pitcairn Islands'),
(182, 'PR', 'Puerto Rico'),
(183, 'PS', 'Palestine'),
(184, 'PT', 'Portugal'),
(185, 'PW', 'Palau'),
(186, 'PY', 'Paraguay'),
(187, 'QA', 'Qatar'),
(188, 'RE', 'Réunion'),
(189, 'RO', 'Romania'),
(190, 'RS', 'Serbia'),
(191, 'RU', 'Russia'),
(192, 'RW', 'Rwanda'),
(193, 'SA', 'Saudi Arabia'),
(194, 'SB', 'Solomon Islands'),
(195, 'SC', 'Seychelles'),
(196, 'SD', 'Sudan'),
(197, 'SE', 'Sweden'),
(198, 'SG', 'Singapore'),
(199, 'SH', 'Saint Helena'),
(200, 'SI', 'Slovenia'),
(201, 'SJ', 'Svalbard and Jan Mayen'),
(202, 'SK', 'Slovakia'),
(203, 'SL', 'Sierra Leone'),
(204, 'SM', 'San Marino'),
(205, 'SN', 'Senegal'),
(206, 'SO', 'Somalia'),
(207, 'SR', 'Suriname'),
(208, 'SS', 'South Sudan'),
(209, 'ST', 'São Tomé and Príncipe'),
(210, 'SV', 'El Salvador'),
(211, 'SX', 'Sint Maarten'),
(212, 'SY', 'Syria'),
(213, 'SZ', 'Swaziland'),
(214, 'TC', 'Turks and Caicos Islands'),
(215, 'TD', 'Chad'),
(216, 'TF', 'French Southern Territories'),
(217, 'TG', 'Togo'),
(218, 'TH', 'Thailand'),
(219, 'TJ', 'Tajikistan'),
(220, 'TK', 'Tokelau'),
(221, 'TL', 'East Timor'),
(222, 'TM', 'Turkmenistan'),
(223, 'TN', 'Tunisia'),
(224, 'TO', 'Tonga'),
(225, 'TR', 'Turkey'),
(226, 'TT', 'Trinidad and Tobago'),
(227, 'TV', 'Tuvalu'),
(228, 'TW', 'Taiwan'),
(229, 'TZ', 'Tanzania'),
(230, 'UA', 'Ukraine'),
(231, 'UG', 'Uganda'),
(232, 'UM', 'U.S. Minor Outlying Islands'),
(233, 'US', 'United States'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VA', 'Vatican City'),
(237, 'VC', 'Saint Vincent and the Grenadines'),
(238, 'VE', 'Venezuela'),
(239, 'VG', 'British Virgin Islands'),
(240, 'VI', 'U.S. Virgin Islands'),
(241, 'VN', 'Vietnam'),
(242, 'VU', 'Vanuatu'),
(243, 'WF', 'Wallis and Futuna'),
(244, 'WS', 'Samoa'),
(245, 'XK', 'Kosovo'),
(246, 'YE', 'Yemen'),
(247, 'YT', 'Mayotte'),
(248, 'ZA', 'South Africa'),
(249, 'ZM', 'Zambia'),
(250, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `countrys`
--

CREATE TABLE `countrys` (
  `id` int NOT NULL,
  `countryCode` char(2) NOT NULL DEFAULT '',
  `name` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countrys`
--

INSERT INTO `countrys` (`id`, `countryCode`, `name`) VALUES
(1, 'AD', 'Andorra'),
(2, 'AE', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AO', 'Angola'),
(9, 'AQ', 'Antarctica'),
(10, 'AR', 'Argentina'),
(11, 'AS', 'American Samoa'),
(12, 'AT', 'Austria'),
(13, 'AU', 'Australia'),
(14, 'AW', 'Aruba'),
(15, 'AX', 'Åland'),
(16, 'AZ', 'Azerbaijan'),
(17, 'BA', 'Bosnia and Herzegovina'),
(18, 'BB', 'Barbados'),
(19, 'BD', 'Bangladesh'),
(20, 'BE', 'Belgium'),
(21, 'BF', 'Burkina Faso'),
(22, 'BG', 'Bulgaria'),
(23, 'BH', 'Bahrain'),
(24, 'BI', 'Burundi'),
(25, 'BJ', 'Benin'),
(26, 'BL', 'Saint Barthélemy'),
(27, 'BM', 'Bermuda'),
(28, 'BN', 'Brunei'),
(29, 'BO', 'Bolivia'),
(30, 'BQ', 'Bonaire'),
(31, 'BR', 'Brazil'),
(32, 'BS', 'Bahamas'),
(33, 'BT', 'Bhutan'),
(34, 'BV', 'Bouvet Island'),
(35, 'BW', 'Botswana'),
(36, 'BY', 'Belarus'),
(37, 'BZ', 'Belize'),
(38, 'CA', 'Canada'),
(39, 'CC', 'Cocos [Keeling] Islands'),
(40, 'CD', 'Democratic Republic of the Congo'),
(41, 'CF', 'Central African Republic'),
(42, 'CG', 'Republic of the Congo'),
(43, 'CH', 'Switzerland'),
(44, 'CI', 'Ivory Coast'),
(45, 'CK', 'Cook Islands'),
(46, 'CL', 'Chile'),
(47, 'CM', 'Cameroon'),
(48, 'CN', 'China'),
(49, 'CO', 'Colombia'),
(50, 'CR', 'Costa Rica'),
(51, 'CU', 'Cuba'),
(52, 'CV', 'Cape Verde'),
(53, 'CW', 'Curacao'),
(54, 'CX', 'Christmas Island'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DE', 'Germany'),
(58, 'DJ', 'Djibouti'),
(59, 'DK', 'Denmark'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'DZ', 'Algeria'),
(63, 'EC', 'Ecuador'),
(64, 'EE', 'Estonia'),
(65, 'EG', 'Egypt'),
(66, 'EH', 'Western Sahara'),
(67, 'ER', 'Eritrea'),
(68, 'ES', 'Spain'),
(69, 'ET', 'Ethiopia'),
(70, 'FI', 'Finland'),
(71, 'FJ', 'Fiji'),
(72, 'FK', 'Falkland Islands'),
(73, 'FM', 'Micronesia'),
(74, 'FO', 'Faroe Islands'),
(75, 'FR', 'France'),
(76, 'GA', 'Gabon'),
(77, 'GB', 'United Kingdom'),
(78, 'GD', 'Grenada'),
(79, 'GE', 'Georgia'),
(80, 'GF', 'French Guiana'),
(81, 'GG', 'Guernsey'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GL', 'Greenland'),
(85, 'GM', 'Gambia'),
(86, 'GN', 'Guinea'),
(87, 'GP', 'Guadeloupe'),
(88, 'GQ', 'Equatorial Guinea'),
(89, 'GR', 'Greece'),
(90, 'GS', 'South Georgia and the South Sandwich Islands'),
(91, 'GT', 'Guatemala'),
(92, 'GU', 'Guam'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HK', 'Hong Kong'),
(96, 'HM', 'Heard Island and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HR', 'Croatia'),
(99, 'HT', 'Haiti'),
(100, 'HU', 'Hungary'),
(101, 'ID', 'Indonesia'),
(102, 'IE', 'Ireland'),
(103, 'IL', 'Israel'),
(104, 'IM', 'Isle of Man'),
(105, 'IN', 'India'),
(106, 'IO', 'British Indian Ocean Territory'),
(107, 'IQ', 'Iraq'),
(108, 'IR', 'Iran'),
(109, 'IS', 'Iceland'),
(110, 'IT', 'Italy'),
(111, 'JE', 'Jersey'),
(112, 'JM', 'Jamaica'),
(113, 'JO', 'Jordan'),
(114, 'JP', 'Japan'),
(115, 'KE', 'Kenya'),
(116, 'KG', 'Kyrgyzstan'),
(117, 'KH', 'Cambodia'),
(118, 'KI', 'Kiribati'),
(119, 'KM', 'Comoros'),
(120, 'KN', 'Saint Kitts and Nevis'),
(121, 'KP', 'North Korea'),
(122, 'KR', 'South Korea'),
(123, 'KW', 'Kuwait'),
(124, 'KY', 'Cayman Islands'),
(125, 'KZ', 'Kazakhstan'),
(126, 'LA', 'Laos'),
(127, 'LB', 'Lebanon'),
(128, 'LC', 'Saint Lucia'),
(129, 'LI', 'Liechtenstein'),
(130, 'LK', 'Sri Lanka'),
(131, 'LR', 'Liberia'),
(132, 'LS', 'Lesotho'),
(133, 'LT', 'Lithuania'),
(134, 'LU', 'Luxembourg'),
(135, 'LV', 'Latvia'),
(136, 'LY', 'Libya'),
(137, 'MA', 'Morocco'),
(138, 'MC', 'Monaco'),
(139, 'MD', 'Moldova'),
(140, 'ME', 'Montenegro'),
(141, 'MF', 'Saint Martin'),
(142, 'MG', 'Madagascar'),
(143, 'MH', 'Marshall Islands'),
(144, 'MK', 'Macedonia'),
(145, 'ML', 'Mali'),
(146, 'MM', 'Myanmar [Burma]'),
(147, 'MN', 'Mongolia'),
(148, 'MO', 'Macao'),
(149, 'MP', 'Northern Mariana Islands'),
(150, 'MQ', 'Martinique'),
(151, 'MR', 'Mauritania'),
(152, 'MS', 'Montserrat'),
(153, 'MT', 'Malta'),
(154, 'MU', 'Mauritius'),
(155, 'MV', 'Maldives'),
(156, 'MW', 'Malawi'),
(157, 'MX', 'Mexico'),
(158, 'MY', 'Malaysia'),
(159, 'MZ', 'Mozambique'),
(160, 'NA', 'Namibia'),
(161, 'NC', 'New Caledonia'),
(162, 'NE', 'Niger'),
(163, 'NF', 'Norfolk Island'),
(164, 'NG', 'Nigeria'),
(165, 'NI', 'Nicaragua'),
(166, 'NL', 'Netherlands'),
(167, 'NO', 'Norway'),
(168, 'NP', 'Nepal'),
(169, 'NR', 'Nauru'),
(170, 'NU', 'Niue'),
(171, 'NZ', 'New Zealand'),
(172, 'OM', 'Oman'),
(173, 'PA', 'Panama'),
(174, 'PE', 'Peru'),
(175, 'PF', 'French Polynesia'),
(176, 'PG', 'Papua New Guinea'),
(177, 'PH', 'Philippines'),
(178, 'PK', 'Pakistan'),
(179, 'PL', 'Poland'),
(180, 'PM', 'Saint Pierre and Miquelon'),
(181, 'PN', 'Pitcairn Islands'),
(182, 'PR', 'Puerto Rico'),
(183, 'PS', 'Palestine'),
(184, 'PT', 'Portugal'),
(185, 'PW', 'Palau'),
(186, 'PY', 'Paraguay'),
(187, 'QA', 'Qatar'),
(188, 'RE', 'Réunion'),
(189, 'RO', 'Romania'),
(190, 'RS', 'Serbia'),
(191, 'RU', 'Russia'),
(192, 'RW', 'Rwanda'),
(193, 'SA', 'Saudi Arabia'),
(194, 'SB', 'Solomon Islands'),
(195, 'SC', 'Seychelles'),
(196, 'SD', 'Sudan'),
(197, 'SE', 'Sweden'),
(198, 'SG', 'Singapore'),
(199, 'SH', 'Saint Helena'),
(200, 'SI', 'Slovenia'),
(201, 'SJ', 'Svalbard and Jan Mayen'),
(202, 'SK', 'Slovakia'),
(203, 'SL', 'Sierra Leone'),
(204, 'SM', 'San Marino'),
(205, 'SN', 'Senegal'),
(206, 'SO', 'Somalia'),
(207, 'SR', 'Suriname'),
(208, 'SS', 'South Sudan'),
(209, 'ST', 'São Tomé and Príncipe'),
(210, 'SV', 'El Salvador'),
(211, 'SX', 'Sint Maarten'),
(212, 'SY', 'Syria'),
(213, 'SZ', 'Swaziland'),
(214, 'TC', 'Turks and Caicos Islands'),
(215, 'TD', 'Chad'),
(216, 'TF', 'French Southern Territories'),
(217, 'TG', 'Togo'),
(218, 'TH', 'Thailand'),
(219, 'TJ', 'Tajikistan'),
(220, 'TK', 'Tokelau'),
(221, 'TL', 'East Timor'),
(222, 'TM', 'Turkmenistan'),
(223, 'TN', 'Tunisia'),
(224, 'TO', 'Tonga'),
(225, 'TR', 'Turkey'),
(226, 'TT', 'Trinidad and Tobago'),
(227, 'TV', 'Tuvalu'),
(228, 'TW', 'Taiwan'),
(229, 'TZ', 'Tanzania'),
(230, 'UA', 'Ukraine'),
(231, 'UG', 'Uganda'),
(232, 'UM', 'U.S. Minor Outlying Islands'),
(233, 'US', 'United States'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VA', 'Vatican City'),
(237, 'VC', 'Saint Vincent and the Grenadines'),
(238, 'VE', 'Venezuela'),
(239, 'VG', 'British Virgin Islands'),
(240, 'VI', 'U.S. Virgin Islands'),
(241, 'VN', 'Vietnam'),
(242, 'VU', 'Vanuatu'),
(243, 'WF', 'Wallis and Futuna'),
(244, 'WS', 'Samoa'),
(245, 'XK', 'Kosovo'),
(246, 'YE', 'Yemen'),
(247, 'YT', 'Mayotte'),
(248, 'ZA', 'South Africa'),
(249, 'ZM', 'Zambia'),
(250, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `court_masters`
--

CREATE TABLE `court_masters` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Dumping data for table `court_masters`
--

INSERT INTO `court_masters` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Supreme Court', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'High Court', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Amta High Court', '1', '2021-05-18 11:14:52', '0000-00-00 00:00:00'),
(4, 'Delhi Court', '1', '2021-05-18 11:06:31', '0000-00-00 00:00:00'),
(5, 'Mumbai Court', '1', '2021-05-18 11:06:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `expertise_master`
--

CREATE TABLE `expertise_master` (
  `expertise_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Dumping data for table `expertise_master`
--

INSERT INTO `expertise_master` (`expertise_id`, `name`, `status`) VALUES
(1, 'Insurance', '1'),
(2, 'Arbiration', '1'),
(3, 'Recovery', '1'),
(4, 'Property', '1');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_details`
--

CREATE TABLE `lawyer_details` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `education` varchar(200) DEFAULT NULL,
  `year_of_experience` decimal(8,2) DEFAULT '0.00',
  `office_address` varchar(200) DEFAULT NULL,
  `court_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `primary_practice_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `profile_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `expertise_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `enroll_number` varchar(50) DEFAULT NULL,
  `year_of_passing` varchar(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Dumping data for table `lawyer_details`
--

INSERT INTO `lawyer_details` (`id`, `user_id`, `education`, `year_of_experience`, `office_address`, `court_id`, `primary_practice_id`, `profile_description`, `expertise_id`, `enroll_number`, `year_of_passing`, `created_at`, `updated_at`) VALUES
(1, 13, NULL, NULL, NULL, '', '', '', '', NULL, '0000', '2020-07-18 12:37:36', '2020-07-18 12:37:36'),
(2, 15, 'LLB', '7.00', 'Kol', 'court name', '', '', '', '3456', '0000', '2020-07-18 12:42:38', '2020-07-18 12:42:38'),
(3, 17, 'LLB', '7.00', 'Kol', 'court name', '', '', '', '3456', '0000', '2020-07-18 12:43:47', '2020-07-18 12:43:47'),
(4, 35, 'LLB', '7.00', 'Kol', 'court name', '2', '', '', '3456', '0000', '2020-07-18 12:43:50', '2020-07-18 12:43:50'),
(5, 36, 'LLB', NULL, 'Kol', '1,2', '1,2', '', '1,2,3', '3456', '0000', '2020-07-18 12:43:52', '2020-07-18 12:43:52'),
(11, 78, 'B.Tech', '6.00', 'Saltlake, Kolkata', '2', '1,2', NULL, NULL, '1212', '2011', '2021-05-16 08:15:07', '2021-05-16 08:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_primary_practices`
--

CREATE TABLE `lawyer_primary_practices` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `primary_practice_id` int NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Dumping data for table `lawyer_primary_practices`
--

INSERT INTO `lawyer_primary_practices` (`id`, `user_id`, `primary_practice_id`, `created_at`, `updated_at`) VALUES
(1, 13, 1, '2020-07-18 12:37:36', '2020-07-18 12:37:36'),
(2, 13, 2, '2020-07-18 12:37:36', '2020-07-18 12:37:36'),
(3, 15, 1, '2020-07-18 12:42:38', '2020-07-18 12:42:38'),
(4, 15, 2, '2020-07-18 12:42:38', '2020-07-18 12:42:38'),
(5, 17, 1, '2020-07-18 12:43:47', '2020-07-18 12:43:47'),
(6, 17, 2, '2020-07-18 12:43:47', '2020-07-18 12:43:47'),
(7, 18, 1, '2020-07-18 12:43:50', '2020-07-18 12:43:50'),
(8, 18, 2, '2020-07-18 12:43:50', '2020-07-18 12:43:50'),
(9, 19, 1, '2020-07-18 12:43:52', '2020-07-18 12:43:52'),
(10, 19, 2, '2020-07-18 12:43:52', '2020-07-18 12:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_primary_practice_masters`
--

CREATE TABLE `lawyer_primary_practice_masters` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `show_order` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0' COMMENT '1 active 0 inactive',
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Dumping data for table `lawyer_primary_practice_masters`
--

INSERT INTO `lawyer_primary_practice_masters` (`id`, `name`, `show_order`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Corporate', 1, 1, '1612441731DSC_0132.JPG', '2020-07-08 12:51:56', '2020-07-22 12:51:56'),
(2, 'Divorce', 2, 1, '1612441713DSC_0044.JPG', '2020-07-14 12:51:56', '2020-07-23 12:51:56'),
(3, 'Criminal', 3, 1, '1612441697DSC_0004.JPG', '2020-10-21 13:41:21', '2020-10-16 13:41:44'),
(4, 'Consumer Court', 4, 1, '1612440620download.png', '2020-10-14 13:42:11', '2020-10-23 13:42:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_24_174807_create_permission_tables', 2),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(8, '2016_06_01_000004_create_oauth_clients_table', 3),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_id`, `model_type`, `updated_at`, `created_at`) VALUES
(1, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1, 52, 'Customer', '2021-05-12 15:30:58', '2021-05-12 15:30:58'),
(1, 53, 'Customer', '2021-05-12 17:48:40', '2021-05-12 17:48:40'),
(1, 54, 'Customer', '2021-05-12 17:55:52', '2021-05-12 17:55:52'),
(1, 55, 'Customer', '2021-05-12 18:14:24', '2021-05-12 18:14:24'),
(1, 56, 'Customer', '2021-05-12 18:14:54', '2021-05-12 18:14:54'),
(1, 57, 'Customer', '2021-05-12 18:20:34', '2021-05-12 18:20:34'),
(1, 58, 'Customer', '2021-05-12 18:20:57', '2021-05-12 18:20:57'),
(1, 59, 'Customer', '2021-05-12 18:53:17', '2021-05-12 18:53:17'),
(1, 60, 'Customer', '2021-05-13 15:35:58', '2021-05-13 15:35:58'),
(1, 61, 'Customer', '2021-05-13 16:52:42', '2021-05-13 16:52:42'),
(1, 62, 'Customer', '2021-05-14 10:29:21', '2021-05-14 10:29:21'),
(1, 64, 'Customer', '2021-05-15 19:45:09', '2021-05-15 19:45:09'),
(1, 65, 'Customer', '2021-05-15 19:45:09', '2021-05-15 19:45:09'),
(2, 13, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 22, '', '2020-10-16 13:06:09', '2020-10-16 13:06:09'),
(2, 30, '', '2020-10-16 13:05:03', '2020-10-16 13:05:03'),
(2, 31, '', '2020-10-16 13:05:10', '2020-10-16 13:05:10'),
(2, 32, '', '2020-10-16 13:05:18', '2020-10-16 13:05:18'),
(2, 33, '', '2020-10-16 13:06:08', '2020-10-16 13:06:08'),
(2, 35, '', '2020-10-19 06:47:55', '2020-10-19 06:47:55'),
(2, 36, '', '2020-10-19 06:56:11', '2020-10-19 06:56:11'),
(2, 42, 'Lawyer', '2021-02-11 15:28:38', '2021-02-11 15:28:38'),
(2, 43, 'Lawyer', '2021-02-11 15:31:10', '2021-02-11 15:31:10'),
(2, 44, 'Lawyer', '2021-02-27 03:23:52', '2021-02-27 03:23:52'),
(2, 50, 'Lawyer', '2021-05-12 10:11:15', '2021-05-12 10:11:15'),
(2, 51, 'Lawyer', '2021-05-12 15:22:54', '2021-05-12 15:22:54'),
(2, 63, 'Lawyer', '2021-05-15 10:14:04', '2021-05-15 10:14:04'),
(2, 70, 'Lawyer', '2021-05-16 07:49:54', '2021-05-16 07:49:54'),
(2, 71, 'Lawyer', '2021-05-16 07:56:55', '2021-05-16 07:56:55'),
(2, 75, 'Lawyer', '2021-05-16 08:04:25', '2021-05-16 08:04:25'),
(2, 76, 'Lawyer', '2021-05-16 08:05:38', '2021-05-16 08:05:38'),
(2, 78, 'Lawyer', '2021-05-16 08:15:07', '2021-05-16 08:15:07'),
(3, 12, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 37, '', '2020-10-19 07:05:13', '2020-10-19 07:05:13'),
(3, 38, '', '2020-10-19 07:47:40', '2020-10-19 07:47:40'),
(3, 39, '', '2021-01-23 13:39:24', '2021-01-23 13:39:24'),
(3, 40, '', '2021-01-23 13:39:48', '2021-01-23 13:39:48'),
(3, 49, 'Customer', '2021-05-12 10:08:50', '2021-05-12 10:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('032212ac919ead4cbbba0475d4f41078b4c7134ac2f803fcd2f1bb2b7abc85236a0cf6388d761026', 34, 1, 'authToken', '[]', 0, '2021-05-11 19:00:22', '2021-05-11 19:00:22', '2022-05-11 19:00:22'),
('0446083fb221b6a24d575fe9f83ef3655cc29765009a07a53d70c4b4b9838e9faa0d901f9bdc609c', 1, 1, 'authToken', '[]', 0, '2020-07-12 05:32:08', '2020-07-12 05:32:08', '2021-07-12 11:02:08'),
('05cb6ec5f6740066542ba10e581f30081bca0a7677ded9080665a710945bdb24133ef084fa1cb350', 44, 1, 'authToken', '[]', 0, '2021-02-27 05:13:10', '2021-02-27 05:13:10', '2022-02-27 05:13:10'),
('06a27ef86b7a4ee7430fd5c9baa224c73ffabe0ad663725ce3b94799615167c152d5ea72776d2d16', 34, 1, 'authToken', '[]', 0, '2020-10-19 07:26:29', '2020-10-19 07:26:29', '2021-10-19 07:26:29'),
('07fc1d89f6f8d2b5e8e263a9c04f99e0d3be0b0248e998edca821e14f37cbcaf87d52e768ea7fd57', 1, 1, 'authToken', '[]', 0, '2020-07-12 05:32:06', '2020-07-12 05:32:06', '2021-07-12 11:02:06'),
('0b8869d11deaadf0efc5720b96b48ceb1ec409f11e99c7133203c8b3f41cc1e68ae13ef0562326b9', 34, 1, 'authToken', '[]', 0, '2021-05-11 08:06:04', '2021-05-11 08:06:04', '2022-05-11 08:06:04'),
('0c392e98a1a651169e7dd52efba005d8e7551e7c89b77c45420e2710fdfc7c59c30aad466943d58c', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:16:10', '2021-05-10 19:16:10', '2022-05-10 19:16:10'),
('0f79087810775e34a736da5fff91408a924ccb7f97694538b04abe45463bc8ad35a6985b5c7a7fba', 1, 1, 'authToken', '[]', 0, '2020-10-19 07:18:52', '2020-10-19 07:18:52', '2021-10-19 07:18:52'),
('0f80e050a5ceecc6e3d44e0ade7c07e470362eeeb70b279354d5de42242a52dc88f33167d32659f8', 59, 1, 'authToken', '[]', 0, '2021-05-13 07:00:44', '2021-05-13 07:00:44', '2022-05-13 07:00:44'),
('12b0e23bcddc509b45ee1c723ae7a4175af249b10d52e17fce2d212851c8275a04eb5c53ff382fb0', 34, 1, 'authToken', '[]', 0, '2021-05-11 17:44:04', '2021-05-11 17:44:04', '2022-05-11 17:44:04'),
('1338e501b9de45053b53b9b86bda1bc575721b72a09e94fb55f6d0a831139139c89f6d4fa4340afe', 1, 1, 'authToken', '[]', 0, '2020-07-12 05:32:10', '2020-07-12 05:32:10', '2021-07-12 11:02:10'),
('164a5da240341b2bfae39bdcfae53f120bdcd93f52b36222da6047df90a81c3d9e558a49802273d6', 34, 1, 'authToken', '[]', 0, '2021-02-09 14:12:25', '2021-02-09 14:12:25', '2022-02-09 14:12:25'),
('1853ba5e9f95dce455b7a7bf624aee69fa3bf312d6e6ad4857ccb6be4d1924f99938017801d62993', 34, 1, 'authToken', '[]', 0, '2021-01-23 13:27:01', '2021-01-23 13:27:01', '2022-01-23 13:27:01'),
('187cd2500314425b93107ef3612738b676411c7d11309a6abd6bb409ba11fb96e9199158a6b4b73c', 59, 1, 'authToken', '[]', 0, '2021-05-15 14:42:16', '2021-05-15 14:42:16', '2022-05-15 14:42:16'),
('1953a6db86c0899f3eef7bb4e8cee4c717095da8a5d129a18e9308f89b0071a26bec1cd8e0a3c56e', 34, 1, 'authToken', '[]', 0, '2021-02-09 14:15:15', '2021-02-09 14:15:15', '2022-02-09 14:15:15'),
('1a073a9f1c171d2c7452b31228afa210aacffdcfd5ec85b9716bc971f38c7cde735f0a1537d1313c', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:04:58', '2021-05-10 19:04:58', '2022-05-10 19:04:58'),
('1a549dc9f73cc08d9aa6baaeaab7144703df8e2b2d102c14ede55223a18e35be33d5abb5291d43d3', 34, 1, 'authToken', '[]', 0, '2021-05-11 19:08:50', '2021-05-11 19:08:50', '2022-05-11 19:08:50'),
('1a5563100290d0241aa15b66b822126207329fa75a1dcc45f74729b2ed2618132ca601ea223b5d3c', 34, 1, 'authToken', '[]', 0, '2021-05-12 04:23:13', '2021-05-12 04:23:13', '2022-05-12 04:23:13'),
('1afe8b61e005c361ebd0ae9336a01f9a058546f915f9a01665a03077b21ff5b7880dda7f7c8676ea', 34, 1, 'authToken', '[]', 0, '2021-05-10 18:48:45', '2021-05-10 18:48:45', '2022-05-10 18:48:45'),
('1c8a9664cff591276902555952baefad09366ee912253c691bb1e8c81141bdcc22857f9a0715e79d', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:14:51', '2021-05-10 19:14:51', '2022-05-10 19:14:51'),
('1cb08e535107bcc1a7dfd80047163c62e114cbb445aececc3e3715c2b50150b3efb328bc401a7dfa', 34, 1, 'authToken', '[]', 0, '2021-05-11 17:47:05', '2021-05-11 17:47:05', '2022-05-11 17:47:05'),
('1d3c80f22169eb04ed0afef31d7b0e7aae54308047aa8ead257429f37d4dc4edcb32ef153ae9336e', 44, 1, 'authToken', '[]', 0, '2021-03-05 05:20:15', '2021-03-05 05:20:15', '2022-03-05 05:20:15'),
('1d9d79c77f9a03ba75fda6826c52136e70cb47db0f760b9a0e2ce0b97698666074179774d05e65a2', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:39:52', '2021-05-10 19:39:52', '2022-05-10 19:39:52'),
('1e9b28adf648ba2718651110d277dbaaabb952addb67e04c81aa42a9415cd3e04cad126e458f6660', 44, 1, 'authToken', '[]', 0, '2021-02-27 05:08:54', '2021-02-27 05:08:54', '2022-02-27 05:08:54'),
('23505cd9188c911cb2d9d6d7da7985f96a340beffa4cd09feb03c3b0c3540f8f3f95bbc3b74c52d0', 44, 1, 'authToken', '[]', 0, '2021-03-05 05:39:40', '2021-03-05 05:39:40', '2022-03-05 05:39:40'),
('23d76502a9d8595cc4bc718c6943a06a752977a1c8d4bac845a69173f56c163a819db30549277df5', 59, 1, 'authToken', '[]', 0, '2021-05-13 17:06:00', '2021-05-13 17:06:00', '2022-05-13 17:06:00'),
('24ec491a7788d10ee9d64cc663ad5c7391ed5211e9b49a37e37c6ad9f381924f5b563a0d5cd35d5c', 60, 1, 'authToken', '[]', 0, '2021-05-15 19:00:50', '2021-05-15 19:00:50', '2022-05-15 19:00:50'),
('2d640e719f8bf98170b1de6c82817a7b27ae62c9290f4bb2f7c1070a7046c97753f95ec0f1954d31', 1, 1, 'authToken', '[]', 0, '2020-07-12 04:41:05', '2020-07-12 04:41:05', '2021-07-12 10:11:05'),
('2d7b1291e98a4af98eb16e0741dd3cf1f435d5a467fae06202598fa1c33588e4066904d2e7011358', 61, 1, 'authToken', '[]', 0, '2021-05-14 07:51:58', '2021-05-14 07:51:58', '2022-05-14 07:51:58'),
('2f2622aadebc3dbbc03c62e6dbffd9a59802c39cb5b53a666e10032dfe5ab6f48b5a1d38463b0ac3', 1, 1, 'authToken', '[]', 0, '2020-07-12 04:41:07', '2020-07-12 04:41:07', '2021-07-12 10:11:07'),
('2fd20286f121eada6d0b3fcf7762d114c78e8fceacf363369f1be39b199fe3e0e290c665c146f6db', 61, 1, 'authToken', '[]', 0, '2021-05-15 19:39:17', '2021-05-15 19:39:17', '2022-05-15 19:39:17'),
('3094eee13e709a971ca852659f1120fb9641352c05074daacbe2444aa5d3f9a9eb0372b521507419', 44, 1, 'authToken', '[]', 0, '2021-05-09 06:58:43', '2021-05-09 06:58:43', '2022-05-09 06:58:43'),
('3687ccc062f88b93e6635100945077200c5a7560d04d231390a1d4ea92dd2444428a726dbc9ade91', 34, 1, 'authToken', '[]', 0, '2021-02-10 02:45:35', '2021-02-10 02:45:35', '2022-02-10 02:45:35'),
('36e5f001e27ccf1d64b963d7520cfb361b3d2acd9b8baa0acf93365c04d4f048be2b70b3a48decc1', 59, 1, 'authToken', '[]', 0, '2021-05-15 18:29:39', '2021-05-15 18:29:39', '2022-05-15 18:29:39'),
('3903e3b592efab83ab727afcca4075c249e51757ee4708b62c1aaa103b7951e07e48950f84ae2aaa', 59, 1, 'authToken', '[]', 0, '2021-05-15 15:34:50', '2021-05-15 15:34:50', '2022-05-15 15:34:50'),
('398a1aa5751aeb878209b1c5f20b8d2777e380f2301b3607e4bf3a209c9687f282ac9ab182cbcda7', 1, 1, 'authToken', '[]', 0, '2020-07-12 02:58:08', '2020-07-12 02:58:08', '2021-07-12 08:28:08'),
('3c1a4bac2446f461e0d19963f2f3aefd6bc5225df0f9556c9b603143aa7215a353feb6e71df1fcc9', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:15:38', '2021-05-10 19:15:38', '2022-05-10 19:15:38'),
('3c68f75ba66ddc1e955a36abb70572091d2bf4aa9bfa23160bee7f09ecd503e6903a8745adbb7e3b', 1, 1, 'authToken', '[]', 0, '2020-07-12 05:27:57', '2020-07-12 05:27:57', '2021-07-12 10:57:57'),
('3fc5789a818811238296a0727a2e133455e27624abf709be888d8c37c57abadacb9f4accf5c08ab3', 34, 1, 'authToken', '[]', 0, '2021-05-11 10:42:12', '2021-05-11 10:42:12', '2022-05-11 10:42:12'),
('41a57c0edd17406a38ea078109d7360cdbd2e6710de0ef7b472ecb01b14b6ebf1a3496614c958861', 34, 1, 'authToken', '[]', 0, '2020-10-19 07:34:40', '2020-10-19 07:34:40', '2021-10-19 07:34:40'),
('41d7742df90d2de3a02a4b7bf7c91490d7540cf423056f0c872e8bb4b0edc2abc90291f3dd80cce4', 34, 1, 'authToken', '[]', 0, '2021-05-11 07:27:58', '2021-05-11 07:27:58', '2022-05-11 07:27:58'),
('422964d3de890d6fd2164fdaff1ab5e1db482c92cadc5adcf6aa05e734485e2eba03f665b201bdd2', 44, 1, 'authToken', '[]', 0, '2021-02-27 04:09:32', '2021-02-27 04:09:32', '2022-02-27 04:09:32'),
('428ff053654c7f1b6f304720d663f6f11f6ba0d2b2543f04e588454368a74d1db8368b04c20af4dc', 44, 1, 'authToken', '[]', 0, '2021-03-05 05:27:18', '2021-03-05 05:27:18', '2022-03-05 05:27:18'),
('4375a6cf87d36df8d14576d95644a673823355c9f3fcd8b398a7556b00c88b9bbe8a4be697aac0e0', 34, 1, 'authToken', '[]', 0, '2021-02-10 02:48:55', '2021-02-10 02:48:55', '2022-02-10 02:48:55'),
('45f189435732ccb74e9e935f820c47a6c4c210e1685ab15869776495f2920ef83c6c0bbfc5be98de', 1, 1, 'authToken', '[]', 0, '2020-07-12 04:41:10', '2020-07-12 04:41:10', '2021-07-12 10:11:10'),
('4d7c2e6b4a557e67a2fdb0e793231421157cb919cac757595fce8b0acd89164b3e536a352bbceb52', 59, 1, 'authToken', '[]', 0, '2021-05-13 07:59:58', '2021-05-13 07:59:58', '2022-05-13 07:59:58'),
('4fa2795736b802252bd99783820be91d432495d8064ceff18ce197f783b0aa91b36b5fc5c2bb1099', 34, 1, 'authToken', '[]', 0, '2021-05-11 18:18:25', '2021-05-11 18:18:25', '2022-05-11 18:18:25'),
('4fc37720e8515f5d538898fcddf2ae24f7df50f20a0c9768ed2640f1476ec01d15e0468c3acf56f8', 59, 1, 'authToken', '[]', 0, '2021-05-15 18:27:21', '2021-05-15 18:27:21', '2022-05-15 18:27:21'),
('50379f8a0f60b8f86bccd823dc7524c033f0180da7dfe49dd64259c557d37cc555c8d5b039036dcf', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:47:39', '2021-05-10 19:47:39', '2022-05-10 19:47:39'),
('505ff03e3ec2c80b070c2d18e6c55714124a8948128a12d69c97d57391947738269d43438d016993', 34, 1, 'authToken', '[]', 0, '2021-05-11 17:46:23', '2021-05-11 17:46:23', '2022-05-11 17:46:23'),
('50719de87b4d738b7f04f60ae9ab89462b470ade584a483aff0563de8e6d9417328b1010c555316d', 34, 1, 'authToken', '[]', 0, '2020-10-19 07:34:09', '2020-10-19 07:34:09', '2021-10-19 07:34:09'),
('51160032daa1c6aaa924b7c6d2022516846d296ca9792908dc78365817f5eed8b0e7153d422be1d5', 44, 1, 'authToken', '[]', 0, '2021-03-03 13:42:41', '2021-03-03 13:42:41', '2022-03-03 13:42:41'),
('596d3ff1f755030d1186a5cd5d238d21db0afde4776dc562109bed8976e677f7375b83d4d916e7a3', 34, 1, 'authToken', '[]', 0, '2021-02-10 02:47:41', '2021-02-10 02:47:41', '2022-02-10 02:47:41'),
('599f4029c996e750b913276c962d5c350e8c3c5d5feacf48293b5688ede20fdbae1c6249acdd9671', 44, 1, 'authToken', '[]', 0, '2021-03-03 13:53:35', '2021-03-03 13:53:35', '2022-03-03 13:53:35'),
('59e45227d1189e58f8ad05439f0efff25aa3e808d702ceed47d97f92686643a1ac13e13451bf8a2c', 61, 1, 'authToken', '[]', 0, '2021-05-14 10:37:54', '2021-05-14 10:37:54', '2022-05-14 10:37:54'),
('5a1f03c4e80910f9940a0059c5047296149ea1a2d3efd7073aa685499c372330abb10e4208a74738', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:02:22', '2021-05-10 19:02:22', '2022-05-10 19:02:22'),
('5afdb5804b061dbeeab636c11c05016bbc851bd590194d2de4d5697e7b7b6d9b1f4d90bb9628bc22', 34, 1, 'authToken', '[]', 0, '2021-05-11 17:23:14', '2021-05-11 17:23:14', '2022-05-11 17:23:14'),
('5b0173aae13dda88e327814347a0102cf3ea0f64b700913b57c92d163df4922f2e293f0df025004f', 44, 1, 'authToken', '[]', 0, '2021-03-05 05:49:04', '2021-03-05 05:49:04', '2022-03-05 05:49:04'),
('5bab0a335c9f838c5f5c8eafb358dcba9882a699cec264edd61a2acff2f0a947956631f76c8dc6d2', 59, 1, 'authToken', '[]', 0, '2021-05-15 14:41:37', '2021-05-15 14:41:37', '2022-05-15 14:41:37'),
('5bef9f2ff1e62810d55dfa0624652838e8f0a05365c8124f723d4298c5a72b44d09e4803ea506975', 61, 1, 'authToken', '[]', 0, '2021-05-13 16:58:37', '2021-05-13 16:58:37', '2022-05-13 16:58:37'),
('5dcc6fda7c735d03f8408a36266eac601949e004407bbc4b50fe959dc7d7b29387db21776c62a954', 44, 1, 'authToken', '[]', 0, '2021-03-05 05:23:38', '2021-03-05 05:23:38', '2022-03-05 05:23:38'),
('5de88edf556eb00fef0c12d74dd73227685781ccf0f5c0b7dd315c112fb82e90fb2b0b007ac8d9e3', 34, 1, 'authToken', '[]', 0, '2021-02-10 02:28:29', '2021-02-10 02:28:29', '2022-02-10 02:28:29'),
('5ed6689fd1276ca8a22fbce148c9fd1511efaf643f1f845b3359d9b8f8448cd7356ed802e5ee75da', 44, 1, 'authToken', '[]', 0, '2021-05-09 07:11:03', '2021-05-09 07:11:03', '2022-05-09 07:11:03'),
('5ffa94927badafd696db0202a659b89d1984999f90b5c37fdced067d65074a23441c705aefa2576f', 1, 1, 'authToken', '[]', 0, '2020-10-19 07:18:05', '2020-10-19 07:18:05', '2021-10-19 07:18:05'),
('617d293db227ad149d75f829eac003ed31094d5ad0739ffcdf1c76d03d2ad6c97154159254342d6d', 34, 1, 'authToken', '[]', 0, '2021-01-23 11:47:31', '2021-01-23 11:47:31', '2022-01-23 11:47:31'),
('625d40a0f209e3dbc8fe45ddd376961bd4c67b61a8832a8819e14b7267fc6608576ad467f27259a1', 44, 1, 'authToken', '[]', 0, '2021-03-03 13:56:01', '2021-03-03 13:56:01', '2022-03-03 13:56:01'),
('62c578f5a46d6641c1d80a290ad51284a7b73a02fdf7c6ceae07d30b6dc39d36cb691bff394fbbb0', 61, 1, 'authToken', '[]', 0, '2021-05-14 10:31:54', '2021-05-14 10:31:54', '2022-05-14 10:31:54'),
('6318734779f2aa8c92d58c7dfafd332d01efef8f6a41ba2089cbf5bd754f876bbd3ddf20d30cde91', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:22:47', '2021-05-10 19:22:47', '2022-05-10 19:22:47'),
('66b28dde4d5a4c3eda52cd2915786c69cef3d94cea4557af176f414d6f392d5cb43bae8060b283a5', 1, 1, 'authToken', '[]', 0, '2020-10-15 07:01:34', '2020-10-15 07:01:34', '2021-10-15 07:01:34'),
('6a4c5927123aa1390ac21437110ac7c929d430b3dcfc746c9fc7be49882433bbd866fd604c9ca2fa', 34, 1, 'authToken', '[]', 0, '2021-05-11 11:16:38', '2021-05-11 11:16:38', '2022-05-11 11:16:38'),
('6af2204dbd73e7e806f16e6e3e4c7c89d29127fc0d2666213ab121db023df173d2e46549fcfb4bb6', 44, 1, 'authToken', '[]', 0, '2021-03-05 05:25:59', '2021-03-05 05:25:59', '2022-03-05 05:25:59'),
('6b72a1f30fe41a652b23af4d79293befeeb2cf694bb4355af886823ca85ae843019f1b5ba0720901', 62, 1, 'authToken', '[]', 0, '2021-05-14 10:29:50', '2021-05-14 10:29:50', '2022-05-14 10:29:50'),
('6cf78dbb6b04b3414d3ead19145184ccc7d8a0f721175d32341e28f2fd16caf882d3c401597330ad', 34, 1, 'authToken', '[]', 0, '2021-05-15 10:16:01', '2021-05-15 10:16:01', '2022-05-15 10:16:01'),
('6e1ead65683778a40e782c3aae344ba510d4d1c3a43cab31418cb6ac22c75aecd58e972a6cbcdad3', 1, 1, 'authToken', '[]', 0, '2020-07-12 05:26:15', '2020-07-12 05:26:15', '2021-07-12 10:56:15'),
('70f71a1051d6e3e0d058379b7e2f6f954cc96a9379fea8b73ea269ad911db2bf94473efb3a1b48a3', 44, 1, 'authToken', '[]', 0, '2021-03-05 05:28:40', '2021-03-05 05:28:40', '2022-03-05 05:28:40'),
('73c9f984909ca3d21d45c2476f82e0a13495d917e37c72899e7c6d672dab809b880555e4e2177d1f', 34, 1, 'authToken', '[]', 0, '2021-05-11 11:13:17', '2021-05-11 11:13:17', '2022-05-11 11:13:17'),
('764ae7b9150c2d78c3fcc55530c3ae69e08cb7da056dac002c9a7a7c0ba2e5848a9b0a904c3e1bbd', 34, 1, 'authToken', '[]', 0, '2020-10-19 07:34:46', '2020-10-19 07:34:46', '2021-10-19 07:34:46'),
('78577c85cc06107e6906fd84069147ed0e5c7bd7fce4c9814144b1965c6d8f4194fba97afe9ca634', 44, 1, 'authToken', '[]', 0, '2021-02-27 05:10:41', '2021-02-27 05:10:41', '2022-02-27 05:10:41'),
('79b5c9abde800b498503308777b017a42113b9ee88d51e7ee102a2c249367efff22b15b7f49e3f15', 44, 1, 'authToken', '[]', 0, '2021-02-27 03:27:58', '2021-02-27 03:27:58', '2022-02-27 03:27:58'),
('7acc40c8faca48478cc8786cb71bd2ce741f40ac1a5e7bfe33fdadd8cb2d615ab575b1d7e30afb1f', 34, 1, 'authToken', '[]', 0, '2021-02-10 03:06:14', '2021-02-10 03:06:14', '2022-02-10 03:06:14'),
('7bfc821f1d3db821e9effab2a2377252d85842987935f40d3f160a3d532a604e9f6da7c92fbd0128', 34, 1, 'authToken', '[]', 0, '2020-10-19 07:24:49', '2020-10-19 07:24:49', '2021-10-19 07:24:49'),
('7c1d3b979467311dc86df0447ce600e7f0c6722282164f09d4685bebc7b1757c268ef54d48bb60b2', 44, 1, 'authToken', '[]', 0, '2021-03-05 06:20:05', '2021-03-05 06:20:05', '2022-03-05 06:20:05'),
('812695f3e04979b6a6b8df2797d679d8c74600217c28c414be8424f7982a11b4ef092d8fc3a82e4d', 34, 1, 'authToken', '[]', 0, '2021-02-10 03:13:06', '2021-02-10 03:13:06', '2022-02-10 03:13:06'),
('82a1f6d4e0326b1db96c0f9825150c70617add8aeaa71386ac2e908fd29dfd99e75a9e12619d4ecc', 44, 1, 'authToken', '[]', 0, '2021-05-12 15:41:42', '2021-05-12 15:41:42', '2022-05-12 15:41:42'),
('841db6cc6cbe911041583eb5a7f95e508353e394447cec51718f733049ffc4edde8601e7f6930471', 34, 1, 'authToken', '[]', 0, '2021-05-11 07:38:36', '2021-05-11 07:38:36', '2022-05-11 07:38:36'),
('857ff5c01a8f61fdc0b39fd95412f36801ba868d7321e0847d9b3b9f1b4c22480609981c55067447', 44, 1, 'authToken', '[]', 0, '2021-03-03 13:46:46', '2021-03-03 13:46:46', '2022-03-03 13:46:46'),
('868662136054004747a50d16cf029885281cb0d1879c0888510de6cc23a020d33d1f508c99f62818', 34, 1, 'authToken', '[]', 0, '2021-05-11 18:19:37', '2021-05-11 18:19:37', '2022-05-11 18:19:37'),
('86c379a5813cec940186e45c61aba4d4390e6c43d98de160d25f71fb4628ab13f623a2d9424970e4', 59, 1, 'authToken', '[]', 0, '2021-05-15 16:44:44', '2021-05-15 16:44:44', '2022-05-15 16:44:44'),
('88110f6f4cdd93ed564e82f1c2cccae62752cf7a3f08adf7b3a6225d2570079f6f6226eb37afba99', 44, 1, 'authToken', '[]', 0, '2021-03-05 05:36:46', '2021-03-05 05:36:46', '2022-03-05 05:36:46'),
('891f9a2739eaefcfcac94aa233ff8002e6fbf321b698932c4a2b1f4aa4d766e060f076063bc714e7', 1, 1, 'authToken', '[]', 0, '2020-07-12 05:27:00', '2020-07-12 05:27:00', '2021-07-12 10:57:00'),
('89f53502dbf2c2d1a5c93a9d2ed8e8803fe6e3f5319dda7f03364ff51e231ba9afbc620f4b7e6f07', 1, 1, 'authToken', '[]', 0, '2020-10-16 13:34:55', '2020-10-16 13:34:55', '2021-10-16 13:34:55'),
('8bebae813059b1a7c79d7c83dfb1e2578d23048841084c4e7c035fc69c7a4d6a8df7c5b0713caf07', 34, 1, 'authToken', '[]', 0, '2020-10-19 07:23:52', '2020-10-19 07:23:52', '2021-10-19 07:23:52'),
('8c18a0f9e4022a1877f0f90b340a3aa59fa2849fa2c6db17b8e63157fdf2faf67a3d523720346d14', 1, 1, 'authToken', '[]', 0, '2020-09-07 03:59:08', '2020-09-07 03:59:08', '2021-09-07 09:29:08'),
('8d0ad30947e8a467b51e78f28d77b782d15083da5eb6ca43911be0cad8bcc15e025c612bdcbe8b4e', 59, 1, 'authToken', '[]', 0, '2021-05-13 17:20:40', '2021-05-13 17:20:40', '2022-05-13 17:20:40'),
('8ef79b3b33293c8db18716232d2c19f254dbeda95b41219e8c8f196fe09ab1738db0918bab71a2a2', 34, 1, 'authToken', '[]', 0, '2021-05-11 17:29:26', '2021-05-11 17:29:26', '2022-05-11 17:29:26'),
('8f3610ebd7e5b436e42143903f7d54ee96278c66af2a7a927df29e01a106b6fd4c81a4686ab20a19', 34, 1, 'authToken', '[]', 0, '2021-05-11 19:06:53', '2021-05-11 19:06:53', '2022-05-11 19:06:53'),
('9128804a45501cd782030623f5be8f7d9f6593b0ebdaf318ea7bcc0829c36ea0c335d7d30f87e8cb', 59, 1, 'authToken', '[]', 0, '2021-05-15 14:44:31', '2021-05-15 14:44:31', '2022-05-15 14:44:31'),
('91b92bdb4554c38b207c33ba500be33ba0e07155e7e9d2b5f66090734be9ad2996294890e1d0db9c', 59, 1, 'authToken', '[]', 0, '2021-05-13 16:52:15', '2021-05-13 16:52:15', '2022-05-13 16:52:15'),
('9222c2c264a0798877acc76f4c571640ad1571d3559b7cf9786c27b3ba787f22440380118341d2c4', 59, 1, 'authToken', '[]', 0, '2021-05-15 18:08:16', '2021-05-15 18:08:16', '2022-05-15 18:08:16'),
('94f55c246955527c4cf9092537e0256684e1eb67b7258009c229a21d33dbbe3c9004001c75b5a323', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:32:51', '2021-05-10 19:32:51', '2022-05-10 19:32:51'),
('95cfc845256fccbe7b76849568d4933ae3448c745e64456444cd1a1900008cf9a3d868b6d61b1ded', 34, 1, 'authToken', '[]', 0, '2021-05-16 07:17:43', '2021-05-16 07:17:43', '2022-05-16 07:17:43'),
('9769e2d35ded8d509b9126cd1e8aae63f8fd8320134dad2bf93c2a5d56c6450cdf956c21e707ce33', 44, 1, 'authToken', '[]', 0, '2021-03-03 13:00:04', '2021-03-03 13:00:04', '2022-03-03 13:00:04'),
('9d33837527f93ec65fcd5b4afdb480128c4d0846ec013777bd92308a244ed6894c6be85e8ff141ea', 59, 1, 'authToken', '[]', 0, '2021-05-13 07:17:35', '2021-05-13 07:17:35', '2022-05-13 07:17:35'),
('9fc28666f21e4cb20af9051e701776404f97af60b8ecfe41745f962451f382dd60a87b132283994f', 34, 1, 'authToken', '[]', 0, '2020-10-19 07:35:46', '2020-10-19 07:35:46', '2021-10-19 07:35:46'),
('a29f5419e3da155475901234992f1c30a53cee3d659a82d7441c350b010e1feba883e90414fdddc4', 34, 1, 'authToken', '[]', 0, '2021-02-10 02:12:58', '2021-02-10 02:12:58', '2022-02-10 02:12:58'),
('a3d3c7d86b5afee0cbd9f5c625b0a4a26076b451fb71e8fdf4446506412ecb6520ba921a64d9907f', 44, 1, 'authToken', '[]', 0, '2021-03-05 05:30:25', '2021-03-05 05:30:25', '2022-03-05 05:30:25'),
('a69200beaf9ba0baf17c59d282664733bd3a1973a7afd0a79c33d23f247758e702c5a07d9d861b95', 34, 1, 'authToken', '[]', 0, '2021-05-11 18:59:03', '2021-05-11 18:59:03', '2022-05-11 18:59:03'),
('a8f89f74e00beeaeefd68f2cde28d8e7bff21ae84356cf3a23cfe60b1972ffcbde9f7fb2a915a810', 59, 1, 'authToken', '[]', 0, '2021-05-15 17:59:54', '2021-05-15 17:59:54', '2022-05-15 17:59:54'),
('a9f755f3a4f17f969c7a20f420b68700916fc7713bc60b8d0b786c18115fabb3464ac8a9400a41e2', 34, 1, 'authToken', '[]', 0, '2021-05-11 18:48:24', '2021-05-11 18:48:24', '2022-05-11 18:48:24'),
('aa937881b7f4bb7bbb198a514e061479fc9ba5842368f2810005b9a2ef081e6ec0290046602ef772', 44, 1, 'authToken', '[]', 0, '2021-03-05 06:21:06', '2021-03-05 06:21:06', '2022-03-05 06:21:06'),
('ab7266b59967c0ee57e7e6be2ee283cf1b927c2be1d4a26b4615756bbe0fcaa3f6762fc0df19f2e9', 44, 1, 'authToken', '[]', 0, '2021-02-27 04:59:02', '2021-02-27 04:59:02', '2022-02-27 04:59:02'),
('ad29b8a804b5a2901bf2446b1e61e15afac93d20266e947b958591c4debb67178197d9c029b70c4e', 61, 1, 'authToken', '[]', 0, '2021-05-15 19:41:58', '2021-05-15 19:41:58', '2022-05-15 19:41:58'),
('ad3928932f85b3986f6e26b49e0783f6e4c5cf1d7fe101ba40468929d518d626e56533ac17b6696c', 34, 1, 'authToken', '[]', 0, '2021-05-11 17:25:41', '2021-05-11 17:25:41', '2022-05-11 17:25:41'),
('b2abc3b09f90646dd59f856bbb95e495dd057de3fe543274c406255adec965dd559062e9684328d6', 34, 1, 'authToken', '[]', 0, '2020-10-19 07:34:20', '2020-10-19 07:34:20', '2021-10-19 07:34:20'),
('b2c16117d0df59b7d8b90c9e0c58315a4727c907637eafa7a49f81b4cdf68c6be39c0149a33277b0', 59, 1, 'authToken', '[]', 0, '2021-05-15 17:48:30', '2021-05-15 17:48:30', '2022-05-15 17:48:30'),
('b388ce4a21936749836a3179cc588fd7dbbae630cea679defb4ccde25bfa1fc2514da3d2cf0b428e', 44, 1, 'authToken', '[]', 0, '2021-03-03 13:47:14', '2021-03-03 13:47:14', '2022-03-03 13:47:14'),
('b615c3d22e37f319f4648550249ea37a8ca94b1d5eac92e2d4400ba839c157eb3ef8d8c42ace9a42', 1, 1, 'authToken', '[]', 0, '2020-07-12 05:28:02', '2020-07-12 05:28:02', '2021-07-12 10:58:02'),
('b6c8bbe9e256e00b762585a7aeca650b07d9172249a5530dded702d19bd43250a5f66eddb7bff050', 59, 1, 'authToken', '[]', 0, '2021-05-16 07:16:08', '2021-05-16 07:16:08', '2022-05-16 07:16:08'),
('b9cce8b4b5b53dcac567c204514da02533ae20213e541da947c7ecf798f0216bfccf4424cd30b3d8', 34, 1, 'authToken', '[]', 0, '2021-05-11 18:17:21', '2021-05-11 18:17:21', '2022-05-11 18:17:21'),
('b9f6702867e1a5d1507019e90b4e14299f85be0bbd856b76dc5b915a2e3b2e11d2167ed09b04f558', 34, 1, 'authToken', '[]', 0, '2021-05-11 19:14:46', '2021-05-11 19:14:46', '2022-05-11 19:14:46'),
('bd7f781375faabf0d0063f96c8763e5aab24d9e8548c5413570074dcaf13f124493dedcd73e67512', 59, 1, 'authToken', '[]', 0, '2021-05-13 06:55:32', '2021-05-13 06:55:32', '2022-05-13 06:55:32'),
('bffb7d46118ec3915a21b5f943fedec99e9efab9e05ce3d86b0d2675f0eb8c4544d176cafa3a6721', 59, 1, 'authToken', '[]', 0, '2021-05-15 18:29:06', '2021-05-15 18:29:06', '2022-05-15 18:29:06'),
('c06d7151dd0225137ad32026f1bb0522f03d7bd99cf76a241e7ffbcb888349ac1d3d8ccea794ac9b', 1, 1, 'authToken', '[]', 0, '2020-09-07 01:34:49', '2020-09-07 01:34:49', '2021-09-07 07:04:49'),
('c0fc670c0fa42b3a0c014d1c015ecfa0d2ddbfc937b493684d10cd41abeb2e327414a67793546dfb', 44, 1, 'authToken', '[]', 0, '2021-05-12 15:27:58', '2021-05-12 15:27:58', '2022-05-12 15:27:58'),
('c210d12af1cddb78fda74151d6019592dd2e30e890ade93bf6db3c005f79fe6e40b65bf2b3efa81c', 34, 1, 'authToken', '[]', 0, '2021-02-09 13:49:43', '2021-02-09 13:49:43', '2022-02-09 13:49:43'),
('c33c8ef412810d828d44bd0b9224e68ec5186b1048d85e9b5d023c27ab660161193af76de1e14286', 59, 1, 'authToken', '[]', 0, '2021-05-15 18:05:57', '2021-05-15 18:05:57', '2022-05-15 18:05:57'),
('c3983dabd183c15d1241bf69c0f62717244b98b629bea274111a16f0185673268bb76d5f18912391', 44, 1, 'authToken', '[]', 0, '2021-05-09 07:36:22', '2021-05-09 07:36:22', '2022-05-09 07:36:22'),
('c95ea0bcce632e5cfd88cf4b56f5f1b6fb0362627d79c42fb52c9948d23f18ff6149a4209f860931', 34, 1, 'authToken', '[]', 0, '2021-02-10 02:50:05', '2021-02-10 02:50:05', '2022-02-10 02:50:05'),
('ca0c9e33e98dfb462a11c48100b9b290aa884bed4d2e826041ed84f5072f50c9578ae497c3711370', 1, 1, 'authToken', '[]', 0, '2020-07-12 04:42:35', '2020-07-12 04:42:35', '2021-07-12 10:12:35'),
('ca2cf65e4c0d9309690370674f8a9aabf29de5f1872fa0db62533de2abfc5d18cf352d7678ca07b6', 44, 1, 'authToken', '[]', 0, '2021-03-03 13:48:23', '2021-03-03 13:48:23', '2022-03-03 13:48:23'),
('ca7a381d2a710e489cd4f82bf44af0133f02fd8b874135d16c69acc35a2d23a7ced23239c2a7f31e', 1, 1, 'authToken', '[]', 0, '2020-07-18 06:58:59', '2020-07-18 06:58:59', '2021-07-18 12:28:59'),
('cafacf09388229f21c5068230e3eeed099b1fc36141995bcd9ba378773c274c105e5343806f78886', 60, 1, 'authToken', '[]', 0, '2021-05-15 19:42:04', '2021-05-15 19:42:04', '2022-05-15 19:42:04'),
('cbb26bf8b924a3e9ea2856a47212c6e4cb92e24ffc9eaed109e35c7eaa329f30034338889475cf73', 1, 1, 'authToken', '[]', 0, '2020-07-12 04:42:38', '2020-07-12 04:42:38', '2021-07-12 10:12:38'),
('ce19de49f36dee19a28afa0696fe146247235c36b24d79bb86a1ea6b95751a1af68905d08f6a0e21', 34, 1, 'authToken', '[]', 0, '2020-10-19 07:28:39', '2020-10-19 07:28:39', '2021-10-19 07:28:39'),
('ce57444215633f73b0ba3b3fd213ccd3ed0f275e8a077a46117d303d0b6960b095afad1e2b69479a', 44, 1, 'authToken', '[]', 0, '2021-03-03 13:53:27', '2021-03-03 13:53:27', '2022-03-03 13:53:27'),
('d1fc5474fe82e215844f98c97dc3ecaeae1a9ccc7a53644cfed87edfac5bb69c4925654fa6f31e9d', 34, 1, 'authToken', '[]', 0, '2021-05-10 17:15:25', '2021-05-10 17:15:25', '2022-05-10 17:15:25'),
('d6aecedacfee2e39ba6bf06164b5da83a3b410e217afb6a92d1afdbcaaa1b50b4f2078a1fc3a2489', 59, 1, 'authToken', '[]', 0, '2021-05-15 19:40:27', '2021-05-15 19:40:27', '2022-05-15 19:40:27'),
('d71cf607de55f48621557b9e7164e885f127172479f4e1b565a363c6205b6df31ac2011492c1fefc', 64, 1, 'authToken', '[]', 0, '2021-05-15 19:45:28', '2021-05-15 19:45:28', '2022-05-15 19:45:28'),
('d81cdf9bd8b91356413c83cbaeb9b689e749c1f1d423928be5341369cdeb51f407f98cc472864de5', 1, 1, 'authToken', '[]', 0, '2020-07-12 05:32:11', '2020-07-12 05:32:11', '2021-07-12 11:02:11'),
('dd2fffdc6e9bd35c74b5e463680f08344d0c563b5c0954e56e49b8949c274ff14c9c006b540649a1', 44, 1, 'authToken', '[]', 0, '2021-05-09 07:14:32', '2021-05-09 07:14:32', '2022-05-09 07:14:32'),
('e2831c3b864bf2c1febee8e0de008cfc334762562d42f74e76a0ffed21fe6dd882dbcf53a7030e21', 44, 1, 'authToken', '[]', 0, '2021-03-10 16:40:16', '2021-03-10 16:40:16', '2022-03-10 16:40:16'),
('e3cbdc46a9833b62255d7e16fd4b0e2885f719204dbfc038f19d29a2d02296721f582d1c2c87abce', 34, 1, 'authToken', '[]', 0, '2021-05-11 17:24:53', '2021-05-11 17:24:53', '2022-05-11 17:24:53'),
('e552ea9e69b6ad1b04a14464afbed227ffaa8b08c81f8787c3d93649fbff6f7a39296af24cabebf7', 34, 1, 'authToken', '[]', 0, '2020-11-11 14:59:02', '2020-11-11 14:59:02', '2021-11-11 14:59:02'),
('e61fa82f58d4df8f03319d530f78ff92e06ad4ef4b9601c0d80f95243f238fcfa07c81593cb5bc48', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:54:13', '2021-05-10 19:54:13', '2022-05-10 19:54:13'),
('e8150a2d56f93371f943848c51287f713c9ac88c01619190b7eae20d141f91e7fa7256887d88493d', 34, 1, 'authToken', '[]', 0, '2020-10-19 07:25:27', '2020-10-19 07:25:27', '2021-10-19 07:25:27'),
('e8b2f86cd1ce7aae8c3c3d5d0112efd0b4035754f11f4ef6b93c64ade94c4eaac97bf7580f944090', 34, 1, 'authToken', '[]', 0, '2021-02-09 13:47:34', '2021-02-09 13:47:34', '2022-02-09 13:47:34'),
('e8c9a26425a479b2ec17f1206d03b1eb267496fd41fb663f77d76cd11e1772f553f43ac5f8c324bd', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:11:01', '2021-05-10 19:11:01', '2022-05-10 19:11:01'),
('ea28db3eb5c8364c94b30fbcdd735ba28aa1e6aac08412fbe397b2495814b99c31c5f9fe4447b83c', 34, 1, 'authToken', '[]', 0, '2021-05-11 17:28:20', '2021-05-11 17:28:20', '2022-05-11 17:28:20'),
('eb2146f93640cd3d4eaeffb765a4e3a4c8db5c3c25dfa4657f91361724c6184731ce619fbbce3d72', 59, 1, 'authToken', '[]', 0, '2021-05-13 08:01:38', '2021-05-13 08:01:38', '2022-05-13 08:01:38'),
('ebab5c6a7f9854893c6403ab2a91cbf96ce4c0369aa2cc8bd51a892b1ab1d793e5c41b8e1c5e3197', 34, 1, 'authToken', '[]', 0, '2021-05-10 18:47:52', '2021-05-10 18:47:52', '2022-05-10 18:47:52'),
('ee1f64acc3d3ad15ab814ce7d46a13bb973a0b33b49628f59b634a1701c885a1462c3a84b670f1c5', 44, 1, 'authToken', '[]', 0, '2021-03-03 13:45:56', '2021-03-03 13:45:56', '2022-03-03 13:45:56'),
('ee3b111809aae4dedb14bbfba0f8907392890892115ce8d1fefc033fc9db8c4fbe9a91e389af974d', 44, 1, 'authToken', '[]', 0, '2021-03-03 12:39:00', '2021-03-03 12:39:00', '2022-03-03 12:39:00'),
('ee50351ad0c9e4d6bbfd94894458d1b5df3f54c8408cb41a2257985c71d6c7c7be62a91796d944ea', 34, 1, 'authToken', '[]', 0, '2021-02-09 13:47:46', '2021-02-09 13:47:46', '2022-02-09 13:47:46'),
('efc2015c1d49f05fa61eab5cb30d5b753d5cdbb059f3ec28c4026c9673a8d504d0d91e90e2ea296c', 34, 1, 'authToken', '[]', 0, '2021-05-11 19:17:07', '2021-05-11 19:17:07', '2022-05-11 19:17:07'),
('f0f1a1aae8fc596daf5461e023289b45650f87e02f98cdf10b042998064276405a346d126d7ca90c', 61, 1, 'authToken', '[]', 0, '2021-05-15 18:58:49', '2021-05-15 18:58:49', '2022-05-15 18:58:49'),
('f19b184ef7b31dca5cc96a733b3f4cb299ff3a99185bbe711499a829a5df37fabcb6eac9d49d06a6', 1, 1, 'authToken', '[]', 0, '2020-10-16 06:58:10', '2020-10-16 06:58:10', '2021-10-16 06:58:10'),
('f4e1ae780db843db8764b7a0076fd6a932d4e2c9766225b3619cf95b1b0715be1e38914152a59bfd', 44, 1, 'authToken', '[]', 0, '2021-03-05 05:19:06', '2021-03-05 05:19:06', '2022-03-05 05:19:06'),
('f79919b337db31d6853c5897da6d61164494555b829ee0e4661b1ba485a71434186501ca56916e11', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:13:44', '2021-05-10 19:13:44', '2022-05-10 19:13:44'),
('f93c275cfc4c8e4931b9e1f4d06ccdd970eb21314c5cba86552519652acc02e75cbbf709fe05187b', 44, 1, 'authToken', '[]', 0, '2021-03-05 05:38:34', '2021-03-05 05:38:34', '2022-03-05 05:38:34'),
('f9f0263f992ab80b8db711c55093b79a71234b37c36e7c7a6e1cd6351bcfc9f84a2a174a6518379d', 60, 1, 'authToken', '[]', 0, '2021-05-13 15:36:22', '2021-05-13 15:36:22', '2022-05-13 15:36:22'),
('fb76cf24600e88df8d2c7a2d80b93ad876bbc1d72ab25bf043ebf7d5c021f270d5fbc27d6a19a5dc', 59, 1, 'authToken', '[]', 0, '2021-05-13 16:47:38', '2021-05-13 16:47:38', '2022-05-13 16:47:38'),
('fcdf21abe56154420d7501a2c10740569eb8e1374effeb7d6e5e1f57a2cb60411aa21228f8208f44', 1, 1, 'authToken', '[]', 0, '2020-07-12 04:41:09', '2020-07-12 04:41:09', '2021-07-12 10:11:09'),
('fd0ec6515113eca2267fe6e21d1778341c1876ff9366d910e40bef2875df09fd587071f6740327b8', 59, 1, 'authToken', '[]', 0, '2021-05-13 07:20:27', '2021-05-13 07:20:27', '2022-05-13 07:20:27'),
('fe13225eb85496410a024afbaa61b8c94805aa1356b26be3e48560e80a51f8ed969699500f9ee1f9', 34, 1, 'authToken', '[]', 0, '2021-05-10 19:03:24', '2021-05-10 19:03:24', '2022-05-10 19:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'F0EkxqcxLfR1HMAncxITXww0mKCsAIfkkxhsmbtS', NULL, 'http://localhost', 1, 0, 0, '2020-07-12 01:01:55', '2020-07-12 01:01:55'),
(2, NULL, 'Laravel Password Grant Client', 'u2eFjXnLKjrID7FLpWpnWzVrPrHk9JelBcoeH9xO', 'users', 'http://localhost', 0, 1, 0, '2020-07-12 01:01:55', '2020-07-12 01:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-12 01:01:55', '2020-07-12 01:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$0XfCsi7Lu/Cq39esD1TLd.KUhoLTF/4iOUaMt4Wrfxi9a7vGsZrr2', '2020-09-07 10:12:53'),
('milonkanrar991@gmail.com', '$2y$10$4R/qvdZiDTVObseksGksHOGhwXzfglTRKWyvphMxNAudlyPGkTxV2', '2020-11-12 14:41:26'),
('milonkanrar1991@gmail.com', '$2y$10$4nc2tpcmf5Bjsahf1Q3pI.HPBfKFiNGaWY4A9NoBQXEqXl61gnb5q', '2020-11-12 15:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_answers`
--

CREATE TABLE `question_answers` (
  `question_id` int NOT NULL,
  `user_id` int NOT NULL,
  `lawyer_id` int NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Dumping data for table `question_answers`
--

INSERT INTO `question_answers` (`question_id`, `user_id`, `lawyer_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 36, 'What is your name?', '', '2021-01-25 14:18:40', NULL),
(2, 34, 36, 'Is it perfect?', 'This is good.', '2021-01-25 14:36:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review_ratings`
--

CREATE TABLE `review_ratings` (
  `review_id` int NOT NULL,
  `user_id` int NOT NULL,
  `given_by` int NOT NULL,
  `rating` enum('1','2','3','4','5') NOT NULL DEFAULT '5',
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Dumping data for table `review_ratings`
--

INSERT INTO `review_ratings` (`review_id`, `user_id`, `given_by`, `rating`, `description`) VALUES
(1, 36, 1, '5', 'TEst'),
(2, 36, 1, '4', 'Test'),
(3, 43, 1, '2', 'this is test'),
(4, 43, 1, '5', 'thhdhdf rrrb rtrtr');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Web', NULL, NULL),
(2, 'Lawyer', 'Web', NULL, NULL),
(3, 'Customer', 'Web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `country_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'ANDHRA PRADESH', 105),
(2, 'ASSAM', 105),
(3, 'ARUNACHAL PRADESH', 105),
(4, 'BIHAR', 105),
(5, 'GUJRAT', 105),
(6, 'HARYANA', 105),
(7, 'HIMACHAL PRADESH', 105),
(8, 'JAMMU & KASHMIR', 105),
(9, 'KARNATAKA', 105),
(10, 'KERALA', 105),
(11, 'MADHYA PRADESH', 105),
(12, 'MAHARASHTRA', 105),
(13, 'MANIPUR', 105),
(14, 'MEGHALAYA', 105),
(15, 'MIZORAM', 105),
(16, 'NAGALAND', 105),
(17, 'ORISSA', 105),
(18, 'PUNJAB', 105),
(19, 'RAJASTHAN', 105),
(20, 'SIKKIM', 105),
(21, 'TAMIL NADU', 105),
(22, 'TRIPURA', 105),
(23, 'UTTAR PRADESH', 105),
(24, 'WEST BENGAL', 105),
(25, 'DELHI', 105),
(26, 'GOA', 105),
(27, 'PONDICHERY', 105),
(28, 'LAKSHDWEEP', 105),
(29, 'DAMAN & DIU', 105),
(30, 'DADRA & NAGAR', 105),
(31, 'CHANDIGARH', 105),
(32, 'ANDAMAN & NICOBAR', 105),
(33, 'UTTARANCHAL', 105),
(34, 'JHARKHAND', 105),
(35, 'CHATTISGARH', 105);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_no` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no_verified_at` datetime DEFAULT NULL,
  `gender` enum('M','F','O') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
  `city_id` int DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '0 inactive 1 active',
  `is_deleted` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `uniqid_val` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_latitude` decimal(10,8) DEFAULT NULL,
  `current_longitude` decimal(11,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `name`, `email`, `image`, `email_verified_at`, `mobile_no`, `mobile_no_verified_at`, `gender`, `city_id`, `password`, `remember_token`, `date_of_birth`, `address`, `city`, `latitude`, `longitude`, `status`, `is_deleted`, `uniqid_val`, `current_latitude`, `current_longitude`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Admin', 'admin@admin.com', '', NULL, NULL, NULL, 'M', 595, '$2y$10$n9BCxwRqHjxwx.gTqbN0k.9tHPo51dY744Kp5yLHcf56LyNodgzje', 'F0YXUchqpIR2Ns6KeS2mqW39UcJ6FCYIyMJTg3b0UfHxX60MCVjuRXBKeHxC', NULL, '', NULL, NULL, NULL, 1, 'N', NULL, NULL, NULL, '2020-06-24 06:58:51', '2020-06-24 06:58:51'),
(12, 'demo', 'last', 'demo last', 'milonkanrar1991@gmail.com', '', NULL, NULL, NULL, 'M', 595, '$2y$10$0pc3vvVfeJZfb7mP0XCCcuSrnO4mVGJ1GiK2kPPUCrBiV4AXlYBfO', 'jHUaAI7yt1rxz2ILMbR4Beh17d3qiBRv0G5ZpEhpFLH5uKEMMKmObawhwZRx', NULL, '', NULL, NULL, NULL, 1, 'N', NULL, NULL, NULL, '2020-06-28 06:04:40', '2020-09-07 10:17:50'),
(13, 'lawyer firset', 'lawyer last', 'lawyer firset lawyer last', 'lawyer@lawyer.com', '1612449110user6-128x128.jpg', NULL, '2345676545', NULL, 'M', 595, '$2y$10$Zq6XhtQIzo9WKhlhmQ2pgO064AkWlWRjN7T6M4oJBO4e6xDUOUOlC', NULL, '1988-03-03', 'kolkata', 'kol', '88.34334533', '-88.34334533', 0, 'N', '5f12ed1089dc6', NULL, NULL, '2020-07-18 07:07:36', '2020-07-18 07:07:36'),
(15, 'lawyer firset', 'lawyer last', 'lawyer firset lawyer last', 'lawyer2@lawyer.com', '', NULL, '2345676545', NULL, 'M', 595, '$2y$10$VrBTN.g2I2i47gTK7DdEnex4dJASfG7sx4ktJH7E0/DUJvhNDvPSO', NULL, '1988-03-03', 'kolkata', 'kol', '88.34334533', '-88.34334533', 0, 'N', '5f12ee3eac293', NULL, NULL, '2020-07-18 07:12:38', '2020-07-18 07:12:38'),
(17, 'lawyer firset', 'lawyer last', 'lawyer firset lawyer last', 'lawyer2@lawyer.com', '', NULL, '2345676545', NULL, 'M', 595, '$2y$10$0PVszpPHwcHrDVfLzIWLnOwaktrL4nNyb6KysKwH7RrzniQdKH9bi', NULL, '1988-03-03', 'kolkata', 'kol', '88.34334533', '-88.34334533', 0, 'N', '5f12ee83e568c', NULL, NULL, '2020-07-18 07:13:47', '2020-07-18 07:13:47'),
(18, 'lawyer firset', 'lawyer last', 'lawyer firset lawyer last', 'lawyer2@lawyer.com', '', NULL, '2345676545', NULL, 'M', 595, '$2y$10$OW8nN2bEr/lyTywv09AWpuYe9z6cI2oAtZ31qErI8Vtu14LVQyGfa', NULL, '1988-03-03', 'kolkata', 'kol', '88.34334533', '-88.34334533', 0, 'N', '5f12ee868950c', NULL, NULL, '2020-07-18 07:13:50', '2020-07-18 07:13:50'),
(19, 'lawyer firset', 'lawyer last', 'lawyer firset lawyer last', 'lawyer2@lawyer.com', '', NULL, '2345676545', NULL, 'M', 595, '$2y$10$ftungotR4IAdJXNcn2bBP.WAL7JQGCWloWJW6ZPrM3v3vbfe3.Uj2', NULL, '1988-03-03', 'kolkata', 'kol', '88.34334533', '-88.34334533', 0, 'N', '5f12ee8893d3a', NULL, NULL, '2020-07-18 07:13:52', '2020-07-18 07:13:52'),
(34, 'Saibal', NULL, 'Saibal', 'milonkanrar01991@gmail.com', '', NULL, '0998980909', NULL, 'M', NULL, '$2y$10$d6KtiESpZ8t4zmExBhwKPulMkEVk9hWSUmGxMIu.6dzdTXdpNKnN6', NULL, '2020-12-12', NULL, 'Mumbai', NULL, '9.98998000', 1, 'N', '5f899ac1af22b', NULL, NULL, '2020-10-16 13:06:09', '2020-10-16 13:06:09'),
(35, 'Piyuash Goyal', NULL, 'Piyuash Goyal', 'milonkanrar991@gmail.com', '', NULL, '0998980009', NULL, 'M', NULL, '$2y$10$TKvy7GWQ9vvfafhZZ0a1oOPjbNBgLUZYwtNPEnC/5vNBIwLoibloe', NULL, '2020-12-12', NULL, 'Mumbai', NULL, NULL, 1, 'N', '5f8d369bca8d9', NULL, NULL, '2020-10-19 06:47:55', '2020-10-19 06:47:55'),
(36, 'Indrajit Thakur', NULL, 'Indrajit Thakur', 'milonkanrarr991@gmail.com', '1621100880user6-128x128.jpg', NULL, '0998980099', NULL, 'M', NULL, '$2y$10$p6EpgpoSwVMCYtthDZS3Q.dI2rt2M0WmoBBxjCjol.rDs3wHOINru', NULL, '2020-12-12', 'Mumbai', 'Mumbai', '6.89887800', '22.00000000', 1, 'N', '5f8d388b11e45', NULL, NULL, '2020-10-19 06:56:11', '2020-10-19 06:56:11'),
(37, 'Indrajit Thakur', NULL, 'Indrajit Thakur', 'milonkanrarr@gmail.com', '', NULL, '099980099', NULL, 'M', NULL, '$2y$10$VSc5JACy9dKqi4ldxJ/1E.xOLBu1TdFaIbVOSsNtnGSLbHoIBazLW', NULL, '1970-01-01', NULL, 'Mumbai', '6.89887800', '0.89766500', 1, 'N', '5f8d3aa9c2893', NULL, NULL, '2020-10-19 07:05:13', '2020-10-19 07:05:13'),
(38, 'Indrajit Thakur', NULL, 'Indrajit Thakur', 'milonkararr@gmail.com', '', NULL, '099980709', NULL, 'M', NULL, '$2y$10$Mjit/G4dlT1RT8UL3DwWjed.nev9gmwFiPVFAciLpaik3KyMaCS1G', NULL, '1970-01-01', NULL, 'Mumbai', '6.89887800', '0.89766500', 1, 'N', '5f8d449ce177b', NULL, NULL, '2020-10-19 07:47:40', '2020-10-19 07:47:40'),
(39, 'Moumita', NULL, 'Moumita', 'moumita@gmail.com', '', NULL, '98653214780', NULL, 'F', NULL, '$2y$10$noHiGXyG6ITbl67xHME2ruFB8LMFThKmm1PvRQzMol/vMsuCxGlAW', NULL, '1970-01-01', NULL, 'asansol', '22.00000011', '22.00000000', 1, 'N', '600c270cd2ea3', NULL, NULL, '2021-01-23 13:39:24', '2021-01-23 13:39:24'),
(40, 'Moumita', NULL, 'Moumita', 'moumita11@gmail.com', '', NULL, '9865321478', NULL, 'F', NULL, '$2y$10$8salTsWCC/bmkEb2V7.7/eM6pNqVRj6vAQrgdfb2n5cYKRsoq6G0u', NULL, '1970-01-01', NULL, 'asansol', '22.00000011', '22.00000000', 1, 'N', '600c27247ea8f', NULL, NULL, '2021-01-23 13:39:48', '2021-01-23 13:39:48'),
(41, 'Shaswati Koley', NULL, 'Shaswati Koley', 'shaswati@gmail.com', NULL, NULL, '09998909', NULL, 'M', NULL, '$2y$10$p7ol5Mq0A5grSewK2cWYS.u9A.O3Mz0TXk8K.biPy/fjysroIvTgu', NULL, '2020-12-12', NULL, 'Howrah', '6.89887800', '0.89766500', 1, 'N', '60254bc31ece6', NULL, NULL, '2021-02-11 15:22:43', '2021-02-11 15:22:43'),
(42, 'Dapa Koley', NULL, 'Dapa Koley', 'sss@gmail.com', 'default.png', NULL, '099798909', NULL, 'M', NULL, '$2y$10$Yr6Cb6HMNvnhv5jdDhKy2eobzhWjQr4EbdihdghQSRIG27y/fF/L2', NULL, '2020-12-12', NULL, 'Howrah', '6.89887800', '0.89766500', 1, 'N', '60254d262712c', NULL, NULL, '2021-02-11 15:28:38', '2021-02-11 15:28:38'),
(43, 'Harry Peter', NULL, 'Harry Peter', 'heru@gmail.com', 'default.png', NULL, '099598909', NULL, 'M', NULL, '$2y$10$aml8aBgXaZ.EUz3.o60X1uPQnJJAp6w0lh0OBLej6cDy8H71rjWDm', NULL, '2020-12-12', NULL, 'Howrah', '6.89887800', '0.89766500', 1, 'N', '60254dbe40529', NULL, NULL, '2021-02-11 15:31:10', '2021-02-11 15:31:10'),
(44, 'Sujoy Sain', NULL, 'Sujoy Sain', 'a@a.com', 'default.png', NULL, '9733402412', NULL, 'M', NULL, '$2y$10$ig.QICpjZaSbdTa/Bz/Qg.KIyQ/8zBeI7geWrAdPhDEKwyiUN1NFS', NULL, '1996-02-21', NULL, 'Kolkata', '37.42199830', '-122.08400000', 1, 'N', '6039bb48dadbb', '18.48112120', '73.95411410', '2021-02-27 03:23:52', '2021-02-27 03:23:52'),
(49, 'AAA', NULL, 'AAA', 'abh@gmail.com', 'default.png', NULL, '3424231233', NULL, 'M', NULL, '$2y$10$Pl4tey4RW4gns2YPXxJepObxIYx3.cTAvwgKbNhq/wnlUjZpXSS0e', NULL, '1970-01-01', NULL, 'Kol', '5.45432200', '5.66545500', 1, 'N', '609ba9325df77', NULL, NULL, '2021-05-12 10:08:50', '2021-05-12 10:08:50'),
(50, 'Fcck', NULL, 'Fcck', 'abjh@gmail.com', 'default.png', NULL, '3484231233', NULL, 'M', NULL, '$2y$10$eNfkipUMw3MPzktWtUSFaOQdxybSehnnR4TDi8VX7G8L.67/Uab8a', NULL, '1990-07-09', NULL, 'Kol', '5.45432200', '5.66545500', 1, 'N', '609ba9c3b68d1', NULL, NULL, '2021-05-12 10:11:15', '2021-05-12 10:11:15'),
(54, 'Test User1', NULL, 'Test User1', 'testuser1@gmail.com', 'default.png', NULL, '9007090909', NULL, 'F', NULL, '$2y$10$g92RiH9c29m90K8TH.EXr.0mo2BCsT2ijqo60c0OuhLJHJj8iL4TW', NULL, '1970-01-01', NULL, 'Kolkata', '22.48334850', '88.34308500', 1, 'N', '609c16a826f08', NULL, NULL, '2021-05-12 17:55:52', '2021-05-12 17:55:52'),
(55, 'Test User1', NULL, 'Test User1', 'testuser2@gmail.com', 'default.png', NULL, '9007777777', NULL, 'F', NULL, '$2y$10$arzifkMQ8N/CXUvRyes3Su7iYFL3CfzmDlJ.AH2Ef0DLkp/zTuOR6', NULL, '1970-01-01', NULL, 'Kolkata', '22.48334850', '88.34308500', 1, 'N', '609c1b00588c0', NULL, NULL, '2021-05-12 18:14:24', '2021-05-12 18:14:24'),
(56, 'Test User1', NULL, 'Test User1', 'testuser3@gmail.com', 'default.png', NULL, '9007888888', NULL, 'F', NULL, '$2y$10$kurY5pt0TD5OrPx8aQX3p.wD0gFWkL8QnhEdBO.R4hoJ6cQuVLahG', NULL, '1970-01-01', NULL, 'Kolkata', '22.48334850', '88.34308500', 1, 'N', '609c1b1ebab20', NULL, NULL, '2021-05-12 18:14:54', '2021-05-12 18:14:54'),
(57, 'Test User1', NULL, 'Test User1', 'testuser4@gmail.com', 'default.png', NULL, '9007999999', NULL, 'F', NULL, '$2y$10$8Q4IhvudP/RveSgICu3c6ewMm3jysjtWdL0l89ce1RK3ZZFfUP4ti', NULL, '1970-01-01', NULL, 'Kolkata', '22.48334850', '88.34308500', 1, 'N', '609c1c72dc362', NULL, NULL, '2021-05-12 18:20:34', '2021-05-12 18:20:34'),
(58, 'Alpha', NULL, 'Alpha', 'Alpha@gmail.com', 'default.png', NULL, '9836873624', NULL, 'F', NULL, '$2y$10$0J34HrsPij3ugifAOjUs/.I2dJrR.OCrOQCEX8pbjKdIq9tXYrXcC', NULL, '1970-01-01', NULL, 'Pune', '3.23234330', '3.23234330', 1, 'N', '609c1c89b8e49', NULL, NULL, '2021-05-12 18:20:57', '2021-05-12 18:20:57'),
(59, 'User One', NULL, 'User One', 'user1@gmail.com', 'default.png', NULL, '1111111111', NULL, 'M', NULL, '$2y$10$ynbFl36wOyGkrKbqu37cO.lLlwggd.hNLV8bSsGXKqqj7McXl/R.K', NULL, '1970-01-01', NULL, 'Kolkata', '22.48340850', '88.34313010', 1, 'N', '609c241d0c34b', '22.48342880', '88.34310700', '2021-05-12 18:53:17', '2021-05-12 18:53:17'),
(60, 'Moumita Karmakar', NULL, 'Moumita Karmakar', 'user22@gmail.com', 'default.png', NULL, '8337037116', NULL, 'F', NULL, '$2y$10$Ghbm3kjtfo/hfi4fUH8IU.fCoSp/2yrBfdFR/jSqL2psdBf/gZZdq', NULL, '1970-01-01', NULL, 'Fursungi', '18.48121740', '73.95404600', 1, 'N', '609d475e3c66e', '18.48624130', '73.95423800', '2021-05-13 15:35:58', '2021-05-13 15:35:58'),
(61, 'Saibal Bhaduri', NULL, 'Saibal Bhaduri', 's@b.com', 'default.png', NULL, '8765436780', NULL, 'M', NULL, '$2y$10$tQOBlMiiFYxhbG4GVNb.U.LC.r6QFeTAaP/c4gXwhEYqCexk8EFQS', NULL, '1970-01-01', NULL, 'Pune', '18.48624130', '73.95423800', 1, 'N', '609d595a12f65', '18.48112760', '73.95375370', '2021-05-13 16:52:42', '2021-05-13 16:52:42'),
(62, 'Milon Kanrar', NULL, 'Milon Kanrar', 'mik@gmail.com', 'default.png', NULL, '9898989898', NULL, 'M', NULL, '$2y$10$Fwl3lISE8hqRh8w.PGqU5.wXnVrI0Yx1s3QKV0ly1dTH0F5XJXS0e', NULL, '1970-01-01', NULL, 'Kolkata', '22.67903710', '88.01200570', 1, 'N', '609e5101ee089', '22.67903720', '88.01200570', '2021-05-14 10:29:21', '2021-05-14 10:29:21'),
(63, 'New', NULL, 'New', 'abjah@gmail.com', '1621100904user8-128x128.jpg', NULL, '3483231233', NULL, 'M', NULL, '$2y$10$BjnCW9sTCSMcc5lZoW1mBer24qtfs99yjYcs3K2taQSEytq3VDv1S', NULL, '1990-07-09', NULL, 'Kol', '5.45432200', '5.66545500', 1, 'N', '609f9eec950f5', NULL, NULL, '2021-05-15 10:14:04', '2021-05-15 10:14:04'),
(64, 'Moumita Karmakar', NULL, 'Moumita Karmakar', 'user33@gmail.com', 'default.png', NULL, '8337037116', NULL, 'F', NULL, '$2y$10$is.4OFCIUfjJDYUD7pu.zOQbpFDCjWIo/gTsnzbpUGt6BMK9CU536', NULL, '1970-01-01', NULL, 'Fursungi', '18.48125890', '73.95385840', 1, 'N', '60a024c52392f', '18.48121640', '73.95381790', '2021-05-15 19:45:09', '2021-05-15 19:45:09'),
(78, 'Gautam Kaul', NULL, 'Gautam Kaul', 'vccac@gmail.com', 'default.png', NULL, '348854233', NULL, 'M', NULL, '$2y$10$own37VaJQc5l1L5KN03af.XVwSwgizpicA3rBbeBBJJUEBABRZiuq', NULL, '1990-07-09', NULL, 'Kol', '5.45432200', '5.66545500', 1, 'N', '60a0d48b1d2e8', NULL, NULL, '2021-05-16 08:15:07', '2021-05-16 08:15:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countrys`
--
ALTER TABLE `countrys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `court_masters`
--
ALTER TABLE `court_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expertise_master`
--
ALTER TABLE `expertise_master`
  ADD PRIMARY KEY (`expertise_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lawyer_details`
--
ALTER TABLE `lawyer_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lawyer_primary_practices`
--
ALTER TABLE `lawyer_primary_practices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lawyer_primary_practice_masters`
--
ALTER TABLE `lawyer_primary_practice_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `review_ratings`
--
ALTER TABLE `review_ratings`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `court_masters`
--
ALTER TABLE `court_masters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lawyer_details`
--
ALTER TABLE `lawyer_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lawyer_primary_practices`
--
ALTER TABLE `lawyer_primary_practices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lawyer_primary_practice_masters`
--
ALTER TABLE `lawyer_primary_practice_masters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_answers`
--
ALTER TABLE `question_answers`
  MODIFY `question_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `review_ratings`
--
ALTER TABLE `review_ratings`
  MODIFY `review_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
