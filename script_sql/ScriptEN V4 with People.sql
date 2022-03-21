#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Enterprise
#------------------------------------------------------------

CREATE TABLE Enterprise(
        ID_enterprise                 Int  Auto_increment  NOT NULL ,
        Name_enterprise               Text NOT NULL ,
        Number_interns_accepted       Text NOT NULL ,
        Booldel                       Bool NOT NULL
	,CONSTRAINT Enterprise_PK PRIMARY KEY (ID_enterprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Location
#------------------------------------------------------------

CREATE TABLE Location(
        ID_location Int  Auto_increment  NOT NULL ,
        Location    Text NOT NULL ,
        Booldel     Bool NOT NULL
	,CONSTRAINT Location_PK PRIMARY KEY (ID_location)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Pilot_trust
#------------------------------------------------------------

CREATE TABLE Pilot_trust(
        ID_Pilot_trust Int  Auto_increment  NOT NULL ,
        Pilot_trust    Text NOT NULL ,
        Booldel        Bool NOT NULL ,
        ID_enterprise  Int NOT NULL
	,CONSTRAINT Pilot_trust_PK PRIMARY KEY (ID_Pilot_trust)

	,CONSTRAINT Pilot_trust_Enterprise_FK FOREIGN KEY (ID_enterprise) REFERENCES Enterprise(ID_enterprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Internship_offers
#------------------------------------------------------------

CREATE TABLE Internship_offers(
        ID_internship_offers Int  Auto_increment  NOT NULL ,
        Competense           Text NOT NULL ,
        Duree_de_stage       Text NOT NULL ,
        Base_remuneration    Text NOT NULL ,
        Date_offre           Date NOT NULL ,
        Nb_places_offertes   Int NOT NULL ,
        Boolsuppr            Bool NOT NULL
	,CONSTRAINT Internship_offers_PK PRIMARY KEY (ID_internship_offers)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Campus
#------------------------------------------------------------

CREATE TABLE Campus(
        ID_campus Int  Auto_increment  NOT NULL ,
        Campus    Text NOT NULL ,
        Booldel   Bool NOT NULL
	,CONSTRAINT Campus_PK PRIMARY KEY (ID_campus)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: People
#------------------------------------------------------------

CREATE TABLE People(
        ID_people  Int  Auto_increment  NOT NULL ,
        First_name Text NOT NULL ,
        Last_name  Text NOT NULL ,
        Login      Text NOT NULL ,
        Password   Text NOT NULL
	,CONSTRAINT People_PK PRIMARY KEY (ID_people)
)ENGINE=InnoDB;

INSERT INTO `People` (`ID_people`, `First_name`, `Last_name`, `Login`, `Password`) VALUES
(1, 'Georgi', 'Facello', 'Facello1', 'ETHQU'),
(2, 'Bezalel', 'Simmel', 'Simmel2', 'BORCW'),
(3, 'Parto', 'Bamford', 'Bamford3', 'BRSFL'),
(4, 'Chirstian', 'Koblick', 'Koblick4', 'WMMOG'),
(5, 'Kyoichi', 'Maliniak', 'Maliniak5', 'WTEWB'),
(6, 'Anneke', 'Preusig', 'Preusig6', 'YHMFV'),
(7, 'Jean', 'Messiha', 'Messiha7', 'LQPEU'),
(8, 'Jules', 'Rogé', 'Rogé8', 'QHSEA'),
(9, 'Maxence', 'Leroux', 'Leroux9', 'CUBLB'),
(10, 'Duangkaew', 'Piveteau', 'Piveteau10', 'UORQR'),
(11, 'Mary', 'Sluis', 'Sluis11', 'PQQCT'),
(12, 'Patricio', 'Bridgland', 'Bridgland12', 'DDBUJ'),
(13, 'Eberhardt', 'Terkki', 'Terkki13', 'ZSBWD'),
(14, 'Mona', 'Azuma', 'Azuma14', 'RVEEY'),
(15, 'Guoxiang', 'Nooteboom', 'Nooteboom15', 'GDNSK'),
(16, 'Kazuhito', 'Cappelletti', 'Cappelletti16', 'GXBAA'),
(17, 'Cristinel', 'Bouloucos', 'Bouloucos17', 'WAKZT'),
(18, 'Kazuhide', 'Peha', 'Peha18', 'XLJCW'),
(19, 'Lillian', 'Haddadi', 'Haddadi19', 'CZXCM'),
(20, 'Mayuko', 'Warwick', 'Warwick20', 'LMRIK'),
(21, 'Timothée', 'Renaud', 'Renaud21', 'BTAQJ'),
(22, 'Shahaf', 'Famili', 'Famili22', 'HHKKI'),
(23, 'Bojan', 'Montemayor', 'Montemayor23', 'NKVCI'),
(24, 'Suzette', 'Pettey', 'Pettey24', 'YSBVQ'),
(25, 'Prasadram', 'Heyers', 'Heyers25', 'ZMZBX'),
(26, 'Yongqiao', 'Berztiss', 'Berztiss26', 'PLBTZ'),
(27, 'Divier', 'Reistad', 'Reistad27', 'PSCSQ'),
(28, 'Domenick', 'Tempesti', 'Tempesti28', 'SCZCK'),
(29, 'Otmar', 'Herbst', 'Herbst29', 'AUKPG'),
(30, 'Elvis', 'Demeyer', 'Demeyer30', 'JSZHZ'),
(31, 'Steevy', 'Boulay', 'Boulay31', 'WMASZ'),
(32, 'Jeong', 'Reistad', 'Reistad32', 'AQPQU'),
(33, 'Arif', 'Merlo', 'Merlo33', 'YEFRY'),
(34, 'Bader', 'Swan', 'Swan34', 'UBNWX'),
(35, 'Alain', 'Chappelet', 'Chappelet35', 'WZNBN'),
(36, 'Adamantios', 'Portugali', 'Portugali36', 'OIIXQ'),
(37, 'Pradeep', 'Makrucki', 'Makrucki37', 'PPADW'),
(38, 'Huan', 'Lortz', 'Lortz38', 'IBMOE'),
(39, 'Michel', 'Drucker', 'Drucker39', 'TAHLS'),
(40, 'Macka', 'Teguen-Idibei', 'Teguen-Idibei40', 'XQNBJ'),
(41, 'Uri', 'Lenart', 'Lenart41', 'HMRSA'),
(42, 'Magy', 'Stamatiou', 'Stamatiou42', 'JQNFO'),
(43, 'Yishay', 'Tzvieli', 'Tzvieli43', 'MBMSB'),
(44, 'Fabrice', 'Di Vizio', 'Di Vizio44', 'FIKZS'),
(45, 'Pierre', 'Garnier', 'Garnier45', 'UTPSK'),
(46, 'Jules', 'Thiébault', 'Thiébault46', 'IYZOC'),
(47, 'Sumant', 'Peac', 'Peac47', 'DVQEJ'),
(48, 'Florian', 'Annal', 'Annal48', 'UBUWO'),
(49, 'Basil', 'Tramer', 'Tramer49', 'IKEHA'),
(50, 'Yinghua', 'Dredge', 'Dredge50', 'XIZZV'),
(51, 'Hidefumi', 'Caine', 'Caine51', 'VOMVC'),
(52, 'Heping', 'Nitsch', 'Nitsch52', 'LVWCO'),
(53, 'Sanjiv', 'Zschoche', 'Zschoche53', 'QGULC'),
(54, 'Mayumi', 'Schueller', 'Schueller54', 'QNBYH'),
(55, 'Georgy', 'Dredge', 'Dredge55', 'OJNAI'),
(56, 'Brendon', 'Bernini', 'Bernini56', 'ZRVUM'),
(57, 'Ebbe', 'Callaway', 'Callaway57', 'KNSYW'),
(58, 'Berhard', 'McFarlin', 'McFarlin58', 'UITXR'),
(59, 'Alejandro', 'McAlpine', 'McAlpine59', 'AYEXJ'),
(60, 'Breannda', 'Billingsley', 'Billingsley60', 'LJICA'),
(61, 'Tse', 'Herber', 'Herber61', 'IXFQC'),
(62, 'Anoosh', 'Peyn', 'Peyn62', 'LAOZP'),
(63, 'Gino', 'Leonhardt', 'Leonhardt63', 'HYHYS'),
(64, 'Udi', 'Jansch', 'Jansch64', 'AWJBO'),
(65, 'Satosi', 'Awdeh', 'Awdeh65', 'IOEOX'),
(66, 'Kwee', 'Schusler', 'Schusler66', 'GGYUO'),
(67, 'Claudi', 'Stavenow', 'Stavenow67', 'UTBRP'),
(68, 'Charlene', 'Brattka', 'Brattka68', 'KSIDA'),
(69, 'Margareta', 'Bierman', 'Bierman69', 'OGNSD'),
(70, 'Reuven', 'Garigliano', 'Garigliano70', 'PTYVH'),
(71, 'Hisao', 'Lipner', 'Lipner71', 'ODYOM'),
(72, 'Hironoby', 'Sidou', 'Sidou72', 'DNSGI'),
(73, 'Shir', 'McClurg', 'McClurg73', 'NTBWN'),
(74, 'Mokhtar', 'Bernatsky', 'Bernatsky74', 'OMDBZ'),
(75, 'Gao', 'Dolinsky', 'Dolinsky75', 'GXOJF'),
(76, 'Erez', 'Ritzmann', 'Ritzmann76', 'KRBXE'),
(77, 'Eric', 'Naulleau', 'Naulleau77', 'QUQSK'),
(78, 'Danel', 'Mondadori', 'Mondadori78', 'VWXYE'),
(79, 'Kshitij', 'Gils', 'Gils79', 'FJKZB'),
(80, 'Premal', 'Baek', 'Baek80', 'AFKHR'),
(81, 'Zhongwei', 'Rosen', 'Rosen81', 'ZMXSF'),
(82, 'Parviz', 'Lortz', 'Lortz82', 'SZQBI'),
(83, 'Vishv', 'Zockler', 'Zockler83', 'RTNMJ'),
(84, 'Tuval', 'Kalloufi', 'Kalloufi84', 'EZJTP'),
(85, 'Kenroku', 'Malabarba', 'Malabarba85', 'WJKLP'),
(86, 'Somnath', 'Foote', 'Foote86', 'JXLZX'),
(87, 'Xinglin', 'Eugenio', 'Eugenio87', 'JZSWV'),
(88, 'Jungsoon', 'Syrzycki', 'Syrzycki88', 'ARAXH'),
(89, 'Sudharsan', 'Flasterstein', 'Flasterstein89', 'TBFNS'),
(90, 'Kendra', 'Hofting', 'Hofting90', 'MAJBP'),
(91, 'Amabile', 'Gomatam', 'Gomatam91', 'RSJID'),
(92, 'Valdiodio', 'Niizuma', 'Niizuma92', 'EWJHV'),
(93, 'Sailaja', 'Desikan', 'Desikan93', 'ZIVHT'),
(94, 'Arumugam', 'Ossenbruggen', 'Ossenbruggen94', 'GTRUF'),
(95, 'Hilari', 'Morton', 'Morton95', 'KYOBL'),
(96, 'Jayson', 'Mandell', 'Mandell96', 'DEILO'),
(97, 'Remzi', 'Waschkowski', 'Waschkowski97', 'YVCQF'),
(98, 'Sreekrishna', 'Servieres', 'Servieres98', 'FDKGC'),
(99, 'Valter', 'Sullins', 'Sullins99', 'KLLYT'),
(100, 'Hironobu', 'Haraldson', 'Haraldson100', 'KWYIZ'),
(101, 'Perla', 'Heyers', 'Heyers101', 'CUVYE'),
(102, 'Paraskevi', 'Luby', 'Luby102', 'CTLDJ'),
(103, 'Akemi', 'Birch', 'Birch103', 'VTATF'),
(104, 'Xinyu', 'Warwick', 'Warwick104', 'SYESI'),
(105, 'Hironoby', 'Piveteau', 'Piveteau105', 'URQWA'),
(106, 'Eben', 'Aingworth', 'Aingworth106', 'OIOPA'),
(107, 'Dung', 'Baca', 'Baca107', 'QDYWB'),
(108, 'Lunjin', 'Giveon', 'Giveon108', 'LHEGX'),
(109, 'Mariusz', 'Prampolini', 'Prampolini109', 'PNOWX'),
(110, 'Xuejia', 'Ullian', 'Ullian110', 'FYCNR'),
(111, 'Hugo', 'Rosis', 'Rosis111', 'OWFJP'),
(112, 'Yuichiro', 'Swick', 'Swick112', 'RTFIV'),
(113, 'Jaewon', 'Syrzycki', 'Syrzycki113', 'UONOD'),
(114, 'Munir', 'Demeyer', 'Demeyer114', 'GRHAR'),
(115, 'Chikara', 'Rissland', 'Rissland115', 'QZFWK'),
(116, 'Dayanand', 'Czap', 'Czap116', 'PPJKN'),
(117, 'Kiyotoshi', 'Blokdijk', 'Blokdijk117', 'GQUTU'),
(118, 'Zhonghui', 'Zyda', 'Zyda118', 'BLACY'),
(119, 'Domenick', 'Peltason', 'Peltason119', 'ZDBHU'),
(120, 'Armond', 'Fairtlough', 'Fairtlough120', 'CUDDO'),
(121, 'Guoxiang', 'Ramsay', 'Ramsay121', 'RDZQZ'),
(122, 'Ohad', 'Esposito', 'Esposito122', 'JRRDQ'),
(123, 'Hinrich', 'Randi', 'Randi123', 'LSVLE'),
(124, 'Geraldo', 'Marwedel', 'Marwedel124', 'NTRUV'),
(125, 'Syozo', 'Hiltgen', 'Hiltgen125', 'TJZKF'),
(126, 'Kayoko', 'Valtorta', 'Valtorta126', 'YGLXQ'),
(127, 'Subir', 'Baja', 'Baja127', 'LUJQO'),
(128, 'Babette', 'Lamba', 'Lamba128', 'DTDJH'),
(129, 'Armond', 'Peir', 'Peir129', 'YOWSI'),
(130, 'Nishit', 'Casperson', 'Casperson130', 'UZLJN'),
(131, 'Magdalena', 'Eldridge', 'Eldridge131', 'UXHSE'),
(132, 'Ayakannu', 'Skrikant', 'Skrikant132', 'WBUMV'),
(133, 'Giri', 'Isaak', 'Isaak133', 'VPIQM'),
(134, 'Diederik', 'Siprelle', 'Siprelle134', 'QHUPA'),
(135, 'Nathan', 'Monkewich', 'Monkewich135', 'PKUQK'),
(136, 'Zissis', 'Pintelas', 'Pintelas136', 'LTAIF'),
(137, 'Maren', 'Hutton', 'Hutton137', 'WTKIY'),
(138, 'Perry', 'Shimshoni', 'Shimshoni138', 'PUTUJ'),
(139, 'Ewing', 'Foong', 'Foong139', 'VPZXU'),
(140, 'Yucel', 'Auria', 'Auria140', 'XNUGW'),
(141, 'Shahaf', 'Ishibashi', 'Ishibashi141', 'OKUVB'),
(142, 'Tzvetan', 'Hettesheimer', 'Hettesheimer142', 'POPRP'),
(143, 'Abderrazak', 'Daoudi', 'Daoudi143', 'SIUMM'),
(144, 'Marla', 'Brendel', 'Brendel144', 'QFKNA'),
(145, 'Akemi', 'Esposito', 'Esposito145', 'CKEUH'),
(146, 'Chenyi', 'Syang', 'Syang146', 'HQZHZ'),
(147, 'Kazuhito', 'Encarnacion', 'Encarnacion147', 'BEGJQ'),
(148, 'Douadi', 'Azumi', 'Azumi148', 'IOIDH'),
(149, 'Xiadong', 'Perry', 'Perry149', 'WPHMX'),
(150, 'Zhenbing', 'Perng', 'Perng150', 'JBYXG'),
(151, 'Itzchak', 'Lichtner', 'Lichtner151', 'WENWQ'),
(152, 'Jaques', 'Munro', 'Munro152', 'QDFUT'),
(153, 'Heekeun', 'Majewski', 'Majewski153', 'RNYSP'),
(154, 'Abdulah', 'Thibadeau', 'Thibadeau154', 'WQPVO'),
(155, 'Adas', 'Nastansky', 'Nastansky155', 'BWVCE'),
(156, 'Sumali', 'Fargier', 'Fargier156', 'IZKSH'),
(157, 'Nigel', 'Aloisi', 'Aloisi157', 'PCIZO'),
(158, 'Khedija', 'Mitsuhashi', 'Mitsuhashi158', 'SBBKF'),
(159, 'Serif', 'Buescher', 'Buescher159', 'AJGWM'),
(160, 'Debatosh', 'Khasidashvili', 'Khasidashvili160', 'UNXZR'),
(161, 'Hairong', 'Mellouli', 'Mellouli161', 'EDMVF'),
(162, 'Florina', 'Eugenio', 'Eugenio162', 'JTKGU'),
(163, 'Karsten', 'Szmurlo', 'Szmurlo163', 'HRGWJ'),
(164, 'Jagoda', 'Braunmuhl', 'Braunmuhl164', 'NDPLA'),
(165, 'Miyeon', 'Macedo', 'Macedo165', 'SGNOO'),
(166, 'Samphel', 'Siegrist', 'Siegrist166', 'KFUZL'),
(167, 'Duangkaew', 'Rassart', 'Rassart167', 'QOJWW'),
(168, 'Dharmaraja', 'Stassinopoulos', 'Stassinopoulos168', 'FURLM'),
(169, 'Sampalli', 'Snedden', 'Snedden169', 'DIDEN'),
(170, 'Kasturi', 'Jenevein', 'Jenevein170', 'LGZAY'),
(171, 'Herbert', 'Trachtenberg', 'Trachtenberg171', 'DAFFP'),
(172, 'Shigeu', 'Matzen', 'Matzen172', 'QJBQP'),
(173, 'Shrikanth', 'Mahmud', 'Mahmud173', 'EENKA'),
(174, 'Badri', 'Furudate', 'Furudate174', 'SHSMH'),
(175, 'Aleksandar', 'Ananiadou', 'Ananiadou175', 'HOKZL'),
(176, 'Brendon', 'Lenart', 'Lenart176', 'YFNDG'),
(177, 'Pragnesh', 'Iisaka', 'Iisaka177', 'ZNGFO'),
(178, 'Valery', 'Litvinov', 'Litvinov178', 'GVDUQ'),
(179, 'Deniz', 'Duclos', 'Duclos179', 'TDJRR'),
(180, 'Shaw', 'Wendorf', 'Wendorf180', 'PJJFD'),
(181, 'Sibyl', 'Nooteboom', 'Nooteboom181', 'XFWBG'),
(182, 'Moriyoshi', 'Merey', 'Merey182', 'OFXID'),
(183, 'Mechthild', 'Bonifati', 'Bonifati183', 'XOZOW'),
(184, 'Mihalis', 'Lowrie', 'Lowrie184', 'DFTOE'),
(185, 'Duro', 'Sidhu', 'Sidhu185', 'IBRIL'),
(186, 'Shigehito', 'Kropatsch', 'Kropatsch186', 'UAAET'),
(187, 'Tommaso', 'Narwekar', 'Narwekar187', 'YUWPA'),
(188, 'Christ', 'Muchinsky', 'Muchinsky188', 'DCXGT'),
(189, 'Khalid', 'Erva', 'Erva189', 'BNESN'),
(190, 'Arve', 'Fairtlough', 'Fairtlough190', 'NHPHC'),
(191, 'Zdislav', 'Nastansky', 'Nastansky191', 'SJXJY'),
(192, 'Mohua', 'Falck', 'Falck192', 'BYSVD'),
(193, 'Masaru', 'Cheshire', 'Cheshire193', 'JVODO'),
(194, 'Josyula', 'Hofmeyr', 'Hofmeyr194', 'JHMMA'),
(195, 'Annemarie', 'Redmiles', 'Redmiles195', 'WEZCS'),
(196, 'Marc', 'Hellwagner', 'Hellwagner196', 'QLUFT'),
(197, 'Kasidit', 'Krzyzanowski', 'Krzyzanowski197', 'ETNMS'),
(198, 'Pranav', 'Furedi', 'Furedi198', 'CPJTM'),
(199, 'Kazuhisa', 'Ranta', 'Ranta199', 'HYJIF'),
(200, 'Vidya', 'Awdeh', 'Awdeh200', 'CFKKR'),
(201, 'Idoia', 'Kavraki', 'Kavraki201', 'KKQOF'),
(202, 'Greger', 'Lichtner', 'Lichtner202', 'MWCQC'),
(203, 'Steen', 'Escriba', 'Escriba203', 'CWWNM'),
(204, 'Nevio', 'Ritcey', 'Ritcey204', 'MMFYI'),
(205, 'Mabhin', 'Leijenhorst', 'Leijenhorst205', 'YFEAK'),
(206, 'Alassane', 'Iwayama', 'Iwayama206', 'FNWZQ'),
(207, 'Girolamo', 'Anandan', 'Anandan207', 'FJYXU'),
(208, 'Xiping', 'Klerer', 'Klerer208', 'YUJIW'),
(209, 'Yolla', 'Ellozy', 'Ellozy209', 'ZHWUW'),
(210, 'Yuping', 'Alpin', 'Alpin210', 'GIHTP'),
(211, 'Vishu', 'Strehl', 'Strehl211', 'MTWPC'),
(212, 'Divier', 'Esteva', 'Esteva212', 'VABBU'),
(213, 'Jackson', 'Kakkad', 'Kakkad213', 'RIXBS'),
(214, 'Tadahiko', 'Ciolek', 'Ciolek214', 'WXGAD'),
(215, 'Xiaobin', 'Duclos', 'Duclos215', 'XGZOT'),
(216, 'Amstein', 'Ghemri', 'Ghemri216', 'YXYYD'),
(217, 'Yongmin', 'Roison', 'Roison217', 'NPMNP'),
(218, 'Zhenhua', 'Magalhaes', 'Magalhaes218', 'DZJXG'),
(219, 'Genta', 'Kolvik', 'Kolvik219', 'OFHLX'),
(220, 'Kish', 'Fasbender', 'Fasbender220', 'KNHRS'),
(221, 'Yucai', 'Granlund', 'Granlund221', 'GRZOP'),
(222, 'Tze', 'Nourani', 'Nourani222', 'RFYOE'),
(223, 'Carrsten', 'Schmiedel', 'Schmiedel223', 'FNKLP'),
(224, 'Leon', 'Trogemann', 'Trogemann224', 'HBLYH'),
(225, 'Kellie', 'Chinen', 'Chinen225', 'DHDJE'),
(226, 'Xinglin', 'Plessier', 'Plessier226', 'BLMVU'),
(227, 'Anneli', 'Kaiser', 'Kaiser227', 'XWVFJ'),
(228, 'Karoline', 'Cesareni', 'Cesareni228', 'TCFAL'),
(229, 'Ulises', 'Takanami', 'Takanami229', 'OWCEG'),
(230, 'Clyde', 'Vernadat', 'Vernadat230', 'PFTNA'),
(231, 'Shaowen', 'Desikan', 'Desikan231', 'RHVJT'),
(232, 'Marko', 'Auria', 'Auria232', 'FQKSX'),
(233, 'Lein', 'Vendrig', 'Vendrig233', 'ESPUV'),
(234, 'Arunachalam', 'Bakhtari', 'Bakhtari234', 'REVEB'),
(235, 'Susanta', 'Roccetti', 'Roccetti235', 'QZFXA'),
(236, 'Susumu', 'Bade', 'Bade236', 'BUZES'),
(237, 'Yannis', 'Mandell', 'Mandell237', 'LOTLG'),
(238, 'Mototsugu', 'Gire', 'Gire238', 'ACHWR'),
(239, 'Nikolaos', 'Llado', 'Llado239', 'WPANY'),
(240, 'Remko', 'Maccarone', 'Maccarone240', 'WWLZW'),
(241, 'Ortrud', 'Murillo', 'Murillo241', 'TMRYX'),
(242, 'Lunjin', 'Ozeri', 'Ozeri242', 'IOKQP'),
(243, 'Wonhee', 'Pouyioutas', 'Pouyioutas243', 'XCADF'),
(244, 'Foong', 'Flasterstein', 'Flasterstein244', 'SJCQC'),
(245, 'Ramalingam', 'Gente', 'Gente245', 'CAFBZ'),
(246, 'Basem', 'Teitelbaum', 'Teitelbaum246', 'DADZS'),
(247, 'Heon', 'Riefers', 'Riefers247', 'XKKJE'),
(248, 'Frederique', 'Tempesti', 'Tempesti248', 'SUEOZ'),
(249, 'Marie', 'Boreale', 'Boreale249', 'XIFIV'),
(250, 'Serap', 'Etalle', 'Etalle250', 'LVGJJ'),
(251, 'Alair', 'Rosenbaum', 'Rosenbaum251', 'QCEAX'),
(252, 'Shirish', 'Wegerle', 'Wegerle252', 'RPRSE'),
(253, 'Zsolt', 'Salinas', 'Salinas253', 'NJISS'),
(254, 'Shen', 'Brattka', 'Brattka254', 'SSCYW'),
(255, 'Roddy', 'Garnick', 'Garnick255', 'ILKMS'),
(256, 'Irene', 'Radhakrishnan', 'Radhakrishnan256', 'SKAUC'),
(257, 'Aiman', 'Riexinger', 'Riexinger257', 'KXLJH'),
(258, 'Basil', 'Ishibashi', 'Ishibashi258', 'RNMDZ'),
(259, 'Susanna', 'Vesel', 'Vesel259', 'IPFKP'),
(260, 'Alper', 'Suomi', 'Suomi260', 'DQHWV'),
(261, 'Mang', 'Erie', 'Erie261', 'QBMWJ'),
(262, 'Mahendra', 'Maraist', 'Maraist262', 'PRUHE'),
(263, 'Takahiro', 'Waterhouse', 'Waterhouse263', 'BJKDM'),
(264, 'Nalini', 'Kawashimo', 'Kawashimo264', 'KFTZJ'),
(265, 'Ramalingam', 'Muniz', 'Muniz265', 'VGACI'),
(266, 'Sukumar', 'Rassart', 'Rassart266', 'NVSQM'),
(267, 'Shaunak', 'Cullers', 'Cullers267', 'ISAEK'),
(268, 'Nishit', 'Siochi', 'Siochi268', 'FSAKM'),
(269, 'Taizo', 'Oxman', 'Oxman269', 'NYIMV'),
(270, 'Bedir', 'Hartvigsen', 'Hartvigsen270', 'ODWFW'),
(271, 'Sham', 'Eastman', 'Eastman271', 'MXETM'),
(272, 'Yishai', 'Cannane', 'Cannane272', 'OQQKC'),
(273, 'Baocai', 'Lieblein', 'Lieblein273', 'CODLG'),
(274, 'Dmitri', 'Pearson', 'Pearson274', 'VZIUD'),
(275, 'Marek', 'Luck', 'Luck275', 'WWSUJ'),
(276, 'Xuejun', 'Hempstead', 'Hempstead276', 'DPPCS'),
(277, 'Isaac', 'Schwartzbauer', 'Schwartzbauer277', 'GEWAE'),
(278, 'Lubomir', 'Nitsch', 'Nitsch278', 'QFESG'),
(279, 'Barton', 'Jumpertz', 'Jumpertz279', 'CVKJL'),
(280, 'Stabislas', 'Delgrange', 'Delgrange280', 'VSOEO'),
(281, 'Thierry', 'Beccaro', 'Beccaro281', 'TIOIP');


#------------------------------------------------------------
# Table: Evaluation_interns
#------------------------------------------------------------

CREATE TABLE Evaluation_interns(
        ID_evaluation_interns Int  Auto_increment  NOT NULL ,
        Evaluation_interns    Text NOT NULL ,
        Booldel               Bool NOT NULL ,
        ID_enterprise         Int NOT NULL ,
        ID_people             Int NOT NULL
	,CONSTRAINT Evaluation_interns_PK PRIMARY KEY (ID_evaluation_interns)

	,CONSTRAINT Evaluation_interns_Enterprise_FK FOREIGN KEY (ID_enterprise) REFERENCES Enterprise(ID_enterprise)
	,CONSTRAINT Evaluation_interns_People0_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
	,CONSTRAINT Evaluation_interns_People_AK UNIQUE (ID_people)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Class
#------------------------------------------------------------

CREATE TABLE Class(
        ID_class Int  Auto_increment  NOT NULL ,
        Class    Text NOT NULL ,
        Booldel  Bool NOT NULL
	,CONSTRAINT Class_PK PRIMARY KEY (ID_class)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Permits
#------------------------------------------------------------

CREATE TABLE Permits(
        ID_permits   Int  Auto_increment  NOT NULL ,
        Code_permits Text NOT NULL
	,CONSTRAINT Permits_PK PRIMARY KEY (ID_permits)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: City
#------------------------------------------------------------

CREATE TABLE City(
        ID_City Int  Auto_increment  NOT NULL ,
        City    Text NOT NULL
	,CONSTRAINT City_PK PRIMARY KEY (ID_City)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Sector
#------------------------------------------------------------

CREATE TABLE Sector(
        ID_sector Int  Auto_increment  NOT NULL ,
        Sector    Text NOT NULL
	,CONSTRAINT Sector_PK PRIMARY KEY (ID_sector)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Role
#------------------------------------------------------------

CREATE TABLE Role(
        ID_role Int  Auto_increment  NOT NULL ,
        role    Text NOT NULL
	,CONSTRAINT Role_PK PRIMARY KEY (ID_role)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Being_located
#------------------------------------------------------------

CREATE TABLE Being_located(
        ID_location   Int NOT NULL ,
        ID_enterprise Int NOT NULL
	,CONSTRAINT Being_located_PK PRIMARY KEY (ID_location,ID_enterprise)

	,CONSTRAINT Being_located_Location_FK FOREIGN KEY (ID_location) REFERENCES Location(ID_location)
	,CONSTRAINT Being_located_Enterprise0_FK FOREIGN KEY (ID_enterprise) REFERENCES Enterprise(ID_enterprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Propose
#------------------------------------------------------------

CREATE TABLE Propose(
        ID_internship_offers Int NOT NULL ,
        ID_enterprise        Int NOT NULL
	,CONSTRAINT Propose_PK PRIMARY KEY (ID_internship_offers,ID_enterprise)

	,CONSTRAINT Propose_Internship_offers_FK FOREIGN KEY (ID_internship_offers) REFERENCES Internship_offers(ID_internship_offers)
	,CONSTRAINT Propose_Enterprise0_FK FOREIGN KEY (ID_enterprise) REFERENCES Enterprise(ID_enterprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Being_proposed
#------------------------------------------------------------

CREATE TABLE Being_proposed(
        ID_people            Int NOT NULL ,
        ID_internship_offers Int NOT NULL
	,CONSTRAINT Being_proposed_PK PRIMARY KEY (ID_people,ID_internship_offers)

	,CONSTRAINT Being_proposed_People_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
	,CONSTRAINT Being_proposed_Internship_offers0_FK FOREIGN KEY (ID_internship_offers) REFERENCES Internship_offers(ID_internship_offers)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Belong
#------------------------------------------------------------

CREATE TABLE Belong(
        ID_people Int NOT NULL ,
        ID_class  Int NOT NULL
	,CONSTRAINT Belong_PK PRIMARY KEY (ID_people,ID_class)

	,CONSTRAINT Belong_People_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
	,CONSTRAINT Belong_Class0_FK FOREIGN KEY (ID_class) REFERENCES Class(ID_class)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Represent
#------------------------------------------------------------

CREATE TABLE Represent(
        ID_people Int NOT NULL ,
        ID_class  Int NOT NULL
	,CONSTRAINT Represent_PK PRIMARY KEY (ID_people,ID_class)

	,CONSTRAINT Represent_People_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
	,CONSTRAINT Represent_Class0_FK FOREIGN KEY (ID_class) REFERENCES Class(ID_class)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Own
#------------------------------------------------------------

CREATE TABLE Own(
        ID_permits Int NOT NULL ,
        ID_people  Int NOT NULL ,
        ID_role    Int NOT NULL
	,CONSTRAINT Own_PK PRIMARY KEY (ID_permits,ID_people,ID_role)

	,CONSTRAINT Own_Permits_FK FOREIGN KEY (ID_permits) REFERENCES Permits(ID_permits)
	,CONSTRAINT Own_People0_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
	,CONSTRAINT Own_Role1_FK FOREIGN KEY (ID_role) REFERENCES Role(ID_role)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Working_in
#------------------------------------------------------------

CREATE TABLE Working_in(
        ID_people Int NOT NULL ,
        ID_campus Int NOT NULL
	,CONSTRAINT Working_in_PK PRIMARY KEY (ID_people,ID_campus)

	,CONSTRAINT Working_in_People_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
	,CONSTRAINT Working_in_Campus0_FK FOREIGN KEY (ID_campus) REFERENCES Campus(ID_campus)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Approve
#------------------------------------------------------------

CREATE TABLE Approve(
        ID_Pilot_trust Int NOT NULL ,
        ID_people      Int NOT NULL
	,CONSTRAINT Approve_PK PRIMARY KEY (ID_Pilot_trust,ID_people)

	,CONSTRAINT Approve_Pilot_trust_FK FOREIGN KEY (ID_Pilot_trust) REFERENCES Pilot_trust(ID_Pilot_trust)
	,CONSTRAINT Approve_People0_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Being_in
#------------------------------------------------------------

CREATE TABLE Being_in(
        ID_sector     Int NOT NULL ,
        ID_enterprise Int NOT NULL
	,CONSTRAINT Being_in_PK PRIMARY KEY (ID_sector,ID_enterprise)

	,CONSTRAINT Being_in_Sector_FK FOREIGN KEY (ID_sector) REFERENCES Sector(ID_sector)
	,CONSTRAINT Being_in_Enterprise0_FK FOREIGN KEY (ID_enterprise) REFERENCES Enterprise(ID_enterprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Locate
#------------------------------------------------------------

CREATE TABLE Locate(
        ID_campus   Int NOT NULL ,
        ID_City     Int NOT NULL ,
        ID_location Int NOT NULL
	,CONSTRAINT Locate_PK PRIMARY KEY (ID_campus,ID_City,ID_location)

	,CONSTRAINT Locate_Campus_FK FOREIGN KEY (ID_campus) REFERENCES Campus(ID_campus)
	,CONSTRAINT Locate_City0_FK FOREIGN KEY (ID_City) REFERENCES City(ID_City)
	,CONSTRAINT Locate_Location1_FK FOREIGN KEY (ID_location) REFERENCES Location(ID_location)
)ENGINE=InnoDB;

