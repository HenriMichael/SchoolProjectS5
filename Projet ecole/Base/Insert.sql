Insert into Ecolage(Id_Etudiant,Date_de_paye,Paye,Reste,Id_Classe)values(1,'2016-02-14',20000,300000,1);
Insert into Ecolage(Id_Etudiant,Date_de_paye,Paye,Reste,Id_Classe)values(2,'2011-02-14',10000000,10000000,2);
Insert into Ecolage(Id_Etudiant,Date_de_paye,Paye,Reste,Id_Classe)values(3,'2014-02-14',500000,500000,3);


Insert into Ecolage(Id_Etudiant,Date_de_paye,Paye,Reste,Id_Classe)values(1,'2012-01-26',500000,500000,1),
Insert into Ecolage(Id_Etudiant,Date_de_paye,Paye,Reste,Id_Classe)values(4,'2012-03-26',250000,500000,2),
																		(5,'2012-04-26',300000,800000,1),
																		(6,'2012-05-26',600000,400000,1),
																		(7,'2012-01-26',500000,500000,2),
																		(8,'2012-06-26',500000,500000,3),
																		(9,'2012-07-26',500000,500000,1),
																		(10,'2012-08-26',500000,500000,2),
																		(11,'2012-09-26',500000,500000,3),
																		(12,'2012-10-26',500000,500000,3),
																		(1,'2012-03-26',500000,0,3),
																		(3,'2012-04-26',500000,0,1),
																		(4,'2012-02-26',500000,0,2),
																		(5,'2012-04-26',500000,0,3),
																		(6,'2012-05-26',500000,0,1);



Insert into Etudiant(Nom,Prenom,Age,Sexe,Date_Naissance,Date_Entre,Email,Password)values('Rakoto','Bosco',14,'Masculin','2008-05-24','2015-06-18','gru@gmail.com','12345');
Insert into Etudiant(Nom,Prenom,Age,Sexe,Date_Naissance,Date_Entre,Email,Password)values('Andria','Mirana',18,'Feminin','2004-06-14','2010-04-25','masac@gmail.com','mumu');
Insert into Etudiant(Nom,Prenom,Age,Sexe,Date_Naissance,Date_Entre,Email,Password)values('Rabe','Benja',14,'Masculin','2008-01-20','2014-03-24','debo@gmail.com','huhu');


Insert into Etudiant(Nom,Prenom,Age,Sexe,Date_Naissance,Date_Entre,Email,Password)values('Razaka','kalo',13,'Masculin','2007-01-20','2015-03-24','kalo@gmail.com','haha'),
																						('Andira','Mita',16,'Masculin','2006-01-20','2009-03-24','mita@gmail.com','gugu'),
																						('Kolo','Kevin',17,'Masculin','2005-04-20','2008-03-24','kev@gmail.com','dodo'),
																						('Bekoto','Dako',10,'Masculin','2011-03-20','2014-07-14','dako@gmail.com','dadada'),
																						('Madio','Anah',15,'Feminin','2006-01-20','2014-10-15','anah@gmail.com','mememem'),
																						('Arivony','Jogy',11,'Masculin','2012-01-20','2015-15-23','jog@gmail.com','kalter'),
																						('Rasoa','Antsa',08,'Feminin','2013-01-20','2017-03-24','antsa@gmail.com','giks'),
																						('Raketaka','Franco',14,'Masculin','2007-01-20','2009-11-06','franco@gmail.com','topka'),
																						('Radoko','Mika',15,'Masculin','2005-01-20','2009-02-14','mika@gmail.com','kalterer'),
																						('Radona','Tahina',14,'Masculin','2007-01-20','2010-03-24','tah@gmail.com','majhh'),
																						('Raglan','Jose',14,'Masculin','2009-01-20','2016-06-18','jose@gmail.com','fdsfds');



Insert into Classe(Nom_classe,Ecolage)values('S1','500000');
Insert into Classe(Nom_classe,Ecolage)values('S2','20000000');
Insert into Classe(Nom_classe,Ecolage)values('S3','1000000');



Insert into Diplome(Nom_diplome,Tranche_de_paye)values('Licence',1000);
Insert into Diplome(Nom_diplome,Tranche_de_paye)values('Master',10000);
Insert into Diplome(Nom_diplome,Tranche_de_paye)values('Doctorat',100000);

Insert into Professeur(Nom_Prof,Prenom_Prof,Age,Sexe,Id_diplome,Date_Entre,Email,Password)values('Zaka','Dofa',41,'Masculin',1,'2010-01-15','masac@gmail.com','mumu');
Insert into Professeur(Nom_Prof,Prenom_Prof,Age,Sexe,Id_diplome,Date_Entre,Email,Password)values('Zily','Dokera',40,'Masculin',2,'2009-10-12','grugru@yahoo.com','hihi');
Insert into Professeur(Nom_Prof,Prenom_Prof,Age,Sexe,Id_diplome,Date_Entre,Email,Password)values('Rakoto','Robert',32,'Masculin',3,'2013-08-06','dredre@yopmail.com','haha');

Insert into Professeur(Nom_Prof,Prenom_Prof,Age,Sexe,Id_diplome,Date_Entre,Email,Password)values('Ratofa','Mathieu',52,'Masculin',1,'2006-08-06','rt@yopmail.com','dakoak'),
																								('Randria','Josephine',42,'Feminin',2,'2009-08-06','jos@yopmail.com','kalod'),
																								('Razily','Miora',26,'Feminin',3,'2015-08-06','rzm@yopmail.com','kkkk'),
																								('Andirakoto','Julia',34,'Feminin',1,'2011-08-06','jul@yopmail.com','gfrtfg'),
																								('Maroka','Jaloko',41,'Masculin',3,'2012-08-06','mrk@yopmail.com','azaza');



Insert into Semestre(Code_Semestre)values(1);
Insert into Semestre(Code_Semestre)values(2);

Insert into Matiere(Code_Matiere,Nom_Matiere,Credit,Note_max,Id_Semestre)values(101,'Math',4,80,1);
Insert into Matiere(Code_Matiere,Nom_Matiere,Credit,Note_max,Id_Semestre)values(100,'Prog',7,140,2);
Insert into Matiere(Code_Matiere,Nom_Matiere,Credit,Note_max,Id_Semestre)values(102,'Web',5,100,2);


Insert into Matiere(Code_Matiere,Nom_Matiere,Credit,Note_max,Id_Semestre)values(103,'Reseau',5,100,1),
																				(104,'Bdd',4,80,2),
																				(105,'Bdd obj',6,120,1),
																				(106,'Francais',3,60,2),	
																				(107,'Gestion',4,80,1),
																				(108,'Admin sys',5,100,2),
																				(109,'Artithm',5,100,1),
																				(201,'analyse',5,100,1),
																				(202,'anglais',3,60,2);


Insert into Enseignement(Id_professeur,Id_Matiere,Heure_par_semaine)values(1,1,8);
Insert into Enseignement(Id_professeur,Id_Matiere,Heure_par_semaine)values(2,2,6);
Insert into Enseignement(Id_professeur,Id_Matiere,Heure_par_semaine)values(3,3,4);


Insert into Enseignement(Id_professeur,Id_Matiere,Heure_par_semaine)values(4,4,4),
																			(5,5,4),
																			(6,6,4),
																			(7,7,4),
																			(8,8,4),
																			(5,9,4),
																			(1,10,4),
																			(2,11,4),
																			(3,12,4);




Insert into Notes(Id_Etudiant,Id_Matiere,Note,Credit,Resultat,Date_Exam)values(1,1,50.5,4,'Admis','2014-05-18'),
																				(2,2,45,7,'Ajour','2014-08-15'),
																				(3,3,160.5,4,'Admis','2014-04-23'),
																				(4,4,30.5,4,'Ajour','2014-04-23'),
																				(5,5,70.5,4,'Admis','2014-04-23'),
																				(6,6,60,4,'Admis','2014-04-23'),
																				(7,7,100,6,'Admis','2014-04-23'),
																				(8,8,40,7,'ajour','2014-04-23'),
																				(9,9,30,4,'Ajour','2014-04-23'),
																				(10,10,75,4,'Admis','2014-04-23'),
																				(11,11,40,3,'Admis','2014-04-23'),
																				(12,12,65,4,'Admis','2014-04-23'),
																				(13,1,62,4,'Admis','2014-04-23'),
																				(14,2,60,4,'Admis','2014-04-23'),
																				(1,3,19,4,'Ajour','2014-04-23'),
																				(1,6,50.5,5,'Admis','2014-05-18'),
																				(2,5,45,7,'Ajour','2014-08-15'),
																				(3,6,160.5,4,'Admis','2014-04-23'),
																				(4,7,110,6,'Admis','2014-04-23'),
																				(5,8,57,4,'Admis','2014-04-23'),
																				(6,9,80,4,'Admis','2014-04-23'),
																				(7,10,10,3,'Ajour','2014-04-23'),
																				(8,11,90,5,'Admis','2014-04-23'),
																				(9,12,90,5,'Admis','2014-04-23'),
																				(10,1,14,2,'Admis','2014-04-23'),
																				(11,2,140,7,'Admis','2014-04-23'),
																				(12,5,40,7,'Ajour','2014-04-23'),
																				(13,7,50,3,'Admis','2014-04-23'),
																				(14,8,80,4,'Admis','2014-04-23');


Insert into Edt(Nom_Edt,Jour,DebHeure,FinHeure,Id_professeur)values('Org101','2014-05-02','08:00','11:00',1);
Insert into Edt(Nom_Edt,Jour,DebHeure,FinHeure,Id_professeur)values('Org102','2014-05-02','11:00','13:00',2);
Insert into Edt(Nom_Edt,Jour,DebHeure,FinHeure,Id_professeur)values('Org103','2014-05-02','14:00','17:00',3);

Insert into Directeur(Nom,
Prenom,
Sexe,
Date_Naissance,
Date_De_Travail,
Etat,
Email,
Password)values('Rabekoto','Vozano','Feminin','1980-05-14','2010-04-08','','vozano12@gmail.com','hakatioa'); 


Insert into Secretaire(Nom,
Sexe,
Date_Naissance,
Date_De_Travail,
Email,
Password)values('Badje','Masculin','1990-10-14','2015-04-14','bad@gmail.com','bado'),
('Kalede','Feminin','1994-01-20','2017-02-14','kal@gmail.com','hahaf'),
('Benjamin','Masculin','1978-05-04','2008-05-06','benj@gmail.com','huhuy');





