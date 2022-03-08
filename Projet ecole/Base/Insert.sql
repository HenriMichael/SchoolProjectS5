Insert into Ecolage(Id_Etudiant,Date_de_paye,Paye,Reste,Id_Classe)values(1,'2016-02-14',20000,300000,1);
Insert into Ecolage(Id_Etudiant,Date_de_paye,Paye,Reste,Id_Classe)values(2,'2011-02-14',10000000,10000000,2);
Insert into Ecolage(Id_Etudiant,Date_de_paye,Paye,Reste,Id_Classe)values(3,'2014-02-14',500000,500000,3);
Insert into Ecolage(Id_Etudiant,Date_de_paye,Paye,Reste,Id_Classe)values(1,'2012-01-26',500000,500000,3);


Insert into Etudiant(Nom,Prenom,Age,Sexe,Date_Naissance,Date_Entre,Email,Password)values('Rakoto','Bosco',14,'Masculin','2008-05-24','2015-06-18','gru@gmail.com','12345');
Insert into Etudiant(Nom,Prenom,Age,Sexe,Date_Naissance,Date_Entre,Email,Password)values('Andria','Mirana',18,'Feminin','2004-06-14','2010-04-25','masac@gmail.com','mumu');
Insert into Etudiant(Nom,Prenom,Age,Sexe,Date_Naissance,Date_Entre,Email,Password)values('Rabe','Anjara',14,'Masculin','2008-01-20','2014-03-24','debo@gmail.com','huhu');

Insert into Classe(Nom_classe,Ecolage)values('S1','500000');
Insert into Classe(Nom_classe,Ecolage)values('S2','20000000');
Insert into Classe(Nom_classe,Ecolage)values('S3','1000000');



Insert into Diplome(Nom_diplome,Tranche_de_paye)values('Licence',1000);
Insert into Diplome(Nom_diplome,Tranche_de_paye)values('Master',10000);
Insert into Diplome(Nom_diplome,Tranche_de_paye)values('Doctorat',100000);

Insert into Professeur(Nom_Prof,Prenom_Prof,Age,Sexe,Id_diplome,Date_Entre,Email,Password)values('Zaka','Dofa',41,'Masculin',1,'2010-01-15','masac@gmail.com','mumu');
Insert into Professeur(Nom_Prof,Prenom_Prof,Age,Sexe,Id_diplome,Date_Entre,Email,Password)values('Zily','Dokera',40,'Masculin',2,'2009-10-12','grugru@yahoo.com','hihi');
Insert into Professeur(Nom_Prof,Prenom_Prof,Age,Sexe,Id_diplome,Date_Entre,Email,Password)values('Rakoto','Robert',32,'Masculin',3,'2013-08-06','dredre@yopmail.com','haha');

Insert into Semestre(Code_Semestre)values(1);
Insert into Semestre(Code_Semestre)values(2);

Insert into Matiere(Code_Matiere,Nom_Matiere,Credit,Note_max,Id_Semestre)values(101,'Math',4,80,1);
Insert into Matiere(Code_Matiere,Nom_Matiere,Credit,Note_max,Id_Semestre)values(100,'Prog',7,140,2);
Insert into Matiere(Code_Matiere,Nom_Matiere,Credit,Note_max,Id_Semestre)values(102,'Web',5,100,2);

Insert into Enseignement(Id_professeur,Id_Matiere,Heure_par_semaine)values(1,1,8);
Insert into Enseignement(Id_professeur,Id_Matiere,Heure_par_semaine)values(2,2,6);
Insert into Enseignement(Id_professeur,Id_Matiere,Heure_par_semaine)values(3,3,4);

Insert into Notes(Id_Etudiant,Id_Matiere,Note,Credit,Resultat,Date_Exam)values(1,1,50.5,4,'Admis','2014-05-18'),
																				(2,2,45,7,'Ajour','2014-08-15'),
																				(3,3,160.5,4,'Admis','2014-04-23');

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





