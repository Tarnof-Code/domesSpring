--
-- Table structure for table `client`
--
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(60) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telephone` varchar(60) NOT NULL,
  `mot_de_passe` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `client` VALUES (1,'Jean','Neymar','jn@test.com','0612345678','1234'),(2,'Sarah','Croche','sc@test.com','0667928765','5678'),(3,'Joyce','Caron','jc@youpi.com','0678985634','Coucou'),(4,'Nico','Tine','nc@fou.com','0745123409','Stopit'),(5,'Raphael','Mezzo','rm@gret.com','0789764567','Wesh!'),(6,'Aly','Bass','ab@gogole.com','0906789534','Coucou'),(7,'Kevin','Brisset','kb@gouf.com','0765143567','qsdf123'),(8,'Roger','Fred','rf@qsdf.com','0787564534','MLKju'),(9,'Jean','Brisset','jsdsdfn@test.fr','0782224656','qsdf123'),(10,'Jak','lang','uy@lkjh.com','0765143567','qsdf123'),(11,'Fabrice','Lenny','fl@gdh.com','0265786745','AZIS8'),(12,'Tiffany','Arson','ta@go.com','0767543421','poiuy'),(13,'Kenny','lol','kl@gk.com','0678976856','AZERTY1234'),(14,'S�bastien','Patrick','ps@hdg.com','0790876567','07867'),(15,'Testeur','Test','test@test.com','0600000000','test');
--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE `adresse` (
  `id_adresse` int(5) NOT NULL AUTO_INCREMENT,
  `numero_de_rue` varchar(10) NOT NULL,
  `nom_de_la_voie` varchar(80) NOT NULL,
  `code_postal` varchar(10) NOT NULL,
  `ville` varchar(60) NOT NULL,
  `id_client` int(5) NOT NULL,
  PRIMARY KEY (`id_adresse`)
--  KEY `FK_adresse` (`id_client`),
--  CONSTRAINT `FK_adresse` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`)
);
ALTER TABLE `adresse` ADD CONSTRAINT `FK_adresse` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`);

--
-- Table structure for table `categorie`
--
DROP TABLE IF EXISTS `animal`;
DROP TABLE IF EXISTS `categorie`;

CREATE TABLE `categorie` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `categorie` varchar(60) NOT NULL,
  `photo` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `categorie` VALUES (1,'CHIENS','/images/categories/chiens.jpg'),(2,'CHATS','/images/categories/chats.jpg'),(3,'POISSONS','/images/categories/poissons.jpg'),(4,'OISEAUX','/images/categories/oiseaux.jpg'),(5,'REPTILES','/images/categories/reptiles.jpg');

--
-- Table structure for table `animal`
--
CREATE TABLE `animal` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `photo` varchar(60) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `race` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `prix` decimal(7,2) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `animal` ADD CONSTRAINT `FK_categorie` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

INSERT INTO `animal` VALUES
(1,'/images/animaux/chiens/bob.png','Bob','Shiba','Super compagnon!',2500.00,1),
(2,'/images/animaux/chats/junior.png','Junior','Angorra','Petit chat sympa',800.00,2),
(3,'/images/animaux/poissons/nemo.png','Némo','Poisson Clown','Adoptez le célèbre poisson du dessin animé!',70.00,3),
(4,'/images/animaux/reptiles/franklin.jpg','Franklin','Tortue Groupi','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this t',99.00,5),
(5,'/images/animaux/chats/tornade.png','Tornade','Abbyssin','Vous allez craquer !',200.00,2),
(6,'/images/animaux/chiens/kikou.png','Kikou','Cavalier King Charles','Regardez-moi cette bouille !',1000.00,1),
(7,'/images/animaux/chiens/yoshi.png','Yoshi','Bouvier de l''Entlebuch','Un sacré caractère !',1800.00,1),
(8,'/images/animaux/reptiles/pedro.jpg','Pedro','Gecko','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this t',150.00,5),
(9,'/images/animaux/oiseaux/robert.png','Robert','Aigle','Le roi des rapaces !',2650.00,4),
(10,'/images/animaux/poissons/fruitz.png','Fruitz','Discus de Heckel','Poisson majestueux',60.00,3),
(11,'/images/animaux/reptiles/denver.png','Denver','Lézard vert occidental','Très très vif !',100.00,5),
(12,'/images/animaux/reptiles/rene.png','René','Trimeresurus purpureomaculatus','Quel regard !',200.00,5),
(13,'/images/animaux/oiseaux/kazoo.png','Kazoo','Perroquet','Il va égayer vos journées !',150.00,4),
(14,'/images/animaux/chiens/james.jpg','James','Labrador','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, ',1000.00,1),
(15,'/images/animaux/chiens/quentin.png','Quentin','Bulldog','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',700.50,1),
(16,'/images/animaux/chiens/louise.jpg','Louise','Caniche','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',1200.00,1),
(17,'/images/animaux/chiens/flex.png','Flex','Chihuahua','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',860.00,1),
(18,'/images/animaux/chiens/jafar.png','Jafar','Pittbull','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',2000.00,1),
(19,'/images/animaux/chats/yoga.jpg','Yoga','Abyssin','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',360.00,2),
(20,'/images/animaux/chats/tictac.png','Tictac','Siamois','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',470.00,2),
(21,'/images/animaux/chats/sophie.jpg','Sophie','California Spangled','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',160.00,2),
(22,'/images/animaux/chats/bloup.jpg','Bloup','Korat','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',1250.00,2),
(23,'/images/animaux/chats/bibi.png','Bibi','Scottish Fold','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',1200.00,2),
(24,'/images/animaux/chats/beko.jpg','Beko','Somali','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',850.00,2),
(25,'/images/animaux/oiseaux/piou.jpg','Piou','Rouge gorge','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ''de Finibus Bonorum et Malorum'' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, ''Lorem ipsum dolor sit amet..'', comes from a line in section 1.10.32.',60.00,4),
(26,'/images/animaux/oiseaux/merlin.jpg','Merlin','Merle','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ''de Finibus Bonorum et Malorum'' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, ''Lorem ipsum dolor sit amet..'', comes from a line in section 1.10.32.',80.00,4),
(27,'/images/animaux/oiseaux/pao.JPG','Pao','Perruche','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ''de Finibus Bonorum et Malorum'' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, ''Lorem ipsum dolor sit amet..'', comes from a line in section 1.10.32.',110.00,4),
(28,'/images/animaux/oiseaux/canoe.jpg','Canoe','Canari','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ''de Finibus Bonorum et Malorum'' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, ''Lorem ipsum dolor sit amet..'', comes from a line in section 1.10.32.',60.00,4),
(29,'/images/animaux/oiseaux/yougou.jpg','Yougou','Youyou du Sénégal','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ''de Finibus Bonorum et Malorum'' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, ''Lorem ipsum dolor sit amet..'', comes from a line in section 1.10.32.',1300.00,4),
(30,'/images/animaux/reptiles/pedro.jpg','Pedro','Gecko','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this t',150.00,5),
(31,'/images/animaux/oiseaux/pia.jpg','Pia','Pie','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, ''Lorem ipsum dolor sit amet..'', comes from a line in section 1.10.32.',40.00,4),
(32,'/images/animaux/poissons/gaby.jpg','Gaby','Guppy','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ''de Finibus Bonorum et Malorum'' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, ''Lorem ipsum dolor sit amet..'', comes from a line in section 1.10.32.',25.00,3),
(33,'/images/animaux/poissons/paul.jpg','Paul','Platy','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ''de Finibus Bonorum et Malorum'' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, ''Lorem ipsum dolor sit amet..'', comes from a line in section 1.10.32.',15.00,3),
(34,'/images/animaux/poissons/3neons.jpg','Lot de 3 Néons bleu','Néon bleu','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ''de Finibus Bonorum et Malorum'' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, ''Lorem ipsum dolor sit amet..'', comes from a line in section 1.10.32.',80.00,3),
(35,'/images/animaux/poissons/molly.jpg','Molly','Molly d''argent','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ''de Finibus Bonorum et Malorum'' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, ''Lorem ipsum dolor sit amet..'', comes from a line in section 1.10.32.',45.00,3),
(36,'/images/animaux/poissons/vandamme.jpg','Vandamme','Combattant','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ''de Finibus Bonorum et Malorum'' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, ''Lorem ipsum dolor sit amet..'', comes from a line in section 1.10.32.',90.00,3),
(37,'/images/animaux/poissons/redhot.png','Redhot','Poisson rouge','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this t',20.00,3),
(38,'/images/animaux/reptiles/grapo.jpg','Grapo','Iguanus Pinius','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this t',130.00,5),
(39,'/images/animaux/reptiles/jak.jpg','Jak','Tortue Géante','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this t',1700.00,5),
(40,'/images/animaux/reptiles/colombo.jpg','Colombo','Caméléon','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this t',250.00,5),
(41,'/images/animaux/reptiles/bao.jpg','Bao','Boa','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this t',180.00,5);



--
-- Table structure for table `categorie_list_animaux`
--

DROP TABLE IF EXISTS `categorie_list_animaux`;

CREATE TABLE `categorie_list_animaux` (
  `categorie_id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL
) ;

ALTER TABLE `categorie_list_animaux` ADD CONSTRAINT `FK_categorie2` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);
ALTER TABLE `categorie_list_animaux` ADD CONSTRAINT `FK_animal` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`);


--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;

CREATE TABLE `commande` (
  `numero_commande` int(15) NOT NULL AUTO_INCREMENT,
  `date_commande` date NOT NULL,
  `id_animal` int(5) NOT NULL,
  `id_client` int(5) NOT NULL,
  PRIMARY KEY (`numero_commande`)
) ;

ALTER TABLE `commande` ADD CONSTRAINT `FK_commande_animal` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id`);
ALTER TABLE `commande` ADD CONSTRAINT `FK_commande_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`);

--
-- Table structure for table `employe`
--

DROP TABLE IF EXISTS `employe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employe` (
  `id_employe` int(5) NOT NULL AUTO_INCREMENT,
  `login_employe` varchar(60) NOT NULL,
  `mot_de_passe_employe` varchar(60) NOT NULL,
  PRIMARY KEY (`id_employe`)
);

--
-- Dumping data for table `employe`
--


INSERT INTO `employe` VALUES (1,'Employé1','123456'),(2,'Employé2','654321');


--
-- Table structure for table `favoris`
--

DROP TABLE IF EXISTS `favoris`;

CREATE TABLE `favoris` (
  `id_favoris` int(5) NOT NULL AUTO_INCREMENT,
  `id_client` int(5) NOT NULL,
  `id_animal` int(5) NOT NULL,
  PRIMARY KEY (`id_favoris`)
);

ALTER TABLE `favoris` ADD CONSTRAINT `FK_favoris_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`);
ALTER TABLE `favoris` ADD CONSTRAINT `FK_favoris_animal` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id`);


--
-- Table structure for table `panier`
--

DROP TABLE IF EXISTS `panier`;

CREATE TABLE `panier` (
  `id_panier` int(5) NOT NULL AUTO_INCREMENT,
  `id_client` int(5) NOT NULL,
  `id_animal` int(5) NOT NULL,
  PRIMARY KEY (`id_panier`)
);

ALTER TABLE `panier` ADD CONSTRAINT `FK_panier_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`);
ALTER TABLE `panier` ADD CONSTRAINT `FK_panier_animal` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id`);


--INSERT INTO `panier` VALUES (1,1,1),(2,1,2),(3,2,3);

