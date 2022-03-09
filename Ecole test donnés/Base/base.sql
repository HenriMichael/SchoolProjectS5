CREATE DATABASE gestion_ecole;
CREATE ROLE gestion LOGIN password 'ecole';
ALTER DATABASE gestion_ecole OWNER TO gestion;

Create table Etudiant(
Id_Etudiant serial not null primary key,
Nom varchar(60),
Prenom varchar(40),
Age integer,
Sexe varchar(20),
Date_Naissance date,
Date_Entre date,
Email varchar(100),
Password varchar(100)
);

Create table Classe(
Id_Classe serial not null primary key,
Nom_classe varchar(50),
Ecolage integer
);

Create table Ecolage(
Id_Ecolage serial not null primary key,
Id_Etudiant int REFERENCES Etudiant(Id_Etudiant),
Date_de_paye date,
Paye integer,
Reste integer,
Id_Classe int REFERENCES Classe (Id_Classe)
);

Create table Diplome(
Id_diplome serial not null primary key,
Nom_Diplome varchar(40),
Tranche_de_paye int
);

Create table Professeur(
Id_Professeur serial not null primary key,
Nom_Prof varchar(50),
Prenom_Prof varchar(30),
Age int,
Sexe varchar(20),
Id_diplome int REFERENCES Diplome(Id_diplome),
Date_Entre date,
Email varchar(100),
Password varchar(100)
);

Create table Semestre(
Id_Semestre serial not null primary key,
Code_Semestre integer
);

Create table Matiere(
Id_Matiere serial not null primary key,
Code_Matiere integer,
Nom_Matiere varchar(40),
Credit_Max integer,
Note_Max decimal,
Id_Semestre int REFERENCES Semestre(Id_Semestre)
);

Create table Enseignement(
Id_Enseignement serial not null primary key,
Id_Professeur int REFERENCES Professeur(Id_Professeur),
Id_Matiere int REFERENCES Matiere(Id_Matiere),
Heure_par_semaine int
);

Create table Notes(
Id_note serial not null primary key,
Id_Etudiant int REFERENCES Etudiant(Id_Etudiant),
Id_Matiere int REFERENCES Matiere(Id_Matiere),
Note decimal,
Credit integer,
Resultat varchar(20),
Date_Exam date
);

Create table Edt(
Id_Edt serial not null primary key,
Nom_Edt varchar(30),
Jour date,
DebHeure time,
FinHeure time,
Id_Professeur int REFERENCES Professeur(Id_Professeur)
);

Create table Directeur(
Id_Directeur serial not null primary key,
Nom varchar(50),
Prenom varchar(40),
Sexe varchar(20),
Date_Naissance date,
Date_De_Travail date,
Etat varchar(30),
Email varchar(100),
Password varchar(100)
);

Create table Secretaire(
Id_Secretaire serial not null primary key,
Nom varchar(50),
Sexe varchar(20),
Date_Naissance date,
Date_De_Travail date,
Email varchar(100),
Password varchar(100)
);





--1)


--2)
--a)Jointure Matiere/Semestre
Create or replace view Semestriel as Select  Matiere.Id_Matiere,Matiere.Code_Matiere,Matiere.Nom_Matiere,Matiere.Credit_Max,Matiere.Note_Max,Matiere.Id_Semestre,Semestre.Code_Semestre from Matiere join Semestre on Matiere.Id_Semestre=Semestre.Id_Semestre;
--b)Jointure Note/Matiere
Create or replace view Notee as Select Notes.Id_Note,Notes.Id_Etudiant,Notes.Note,notes.Credit,Notes.Resultat,Notes.Date_Exam,Semestriel.Code_Matiere,Semestriel.Nom_Matiere,Semestriel.Credit_Max,Semestriel.Note_Max,Semestriel.Code_Semestre from Notes join Semestriel on Notes.Id_Matiere=Semestriel.Id_Matiere;
--c) Jointure Etudiant/Note
Create or replace view Noteeleves as Select Notee.Id_Etudiant,Notee.Note,notee.Credit,Notee.Resultat,Notee.Date_Exam,Notee.Code_Matiere,Notee.Nom_Matiere,Notee.Credit_Max,Notee.Note_Max,Notee.Code_Semestre,Etudiant.Nom,Etudiant.prenom from Notee join Etudiant on Notee.Id_Etudiant=Etudiant.Id_Etudiant;

--d) par semestre et par matiere
Create or replace view Sem_mat as Select   count(*)as Nombre, Code_Matiere,Code_Semestre from Noteleeves group by Code_Matiere,Code_Semestre; 
--e)Resulat final 
 Select * from Noteeleves where Code_Matiere=102 AND Code_Semestre=2;
 Select * from Noteeleves where Code_Matiere=101 AND Code_Semestre=2;
 Select * from Noteeleves where Code_Matiere=100 AND Code_Semestre=2;
 Select * from Noteeleves where Code_Matiere=102 AND Code_Semestre=1;
 Select * from Noteeleves where Code_Matiere=101 AND Code_Semestre=1;
 Select * from Noteeleves where Code_Matiere=100 AND Code_Semestre=1;

--3)
--a)Jointure Ecolage/Etudiant
Create or replace view Paiements as Select Ecolage.Id_Etudiant,Ecolage.Date_de_paye,Ecolage.Paye,Ecolage.Reste,Etudiant.nom,Etudiant.Prenom,Etudiant.age from Ecolage join Etudiant on Ecolage.Id_Etudiant= Etudiant.Id_Etudiant;
Create view ecolages as Select Paiements.Id_Etudiant,Paiements.Paye,Paiements.Nom,Paiements.Prenom from Paiements order by Id_Etudiant asc;

--4)
Create view moyenness as Select Id_Etudiant,avg(Note)as moyenne from Noteeleves group by Id_Etudiant,Code_Semestre order by Id_Etudiant asc ; 
 Select Noteeleves.Id_Etudiant,Noteeleves.Note,noteeleves.Credit,Noteeleves.Resultat,Noteeleves.Date_Exam,Noteeleves.Code_Matiere,Noteeleves.Nom_Matiere,Noteeleves.Credit_Max,Noteeleves.Note_Max,Noteeleves.Code_Semestre,Noteeleves.Nom,Noteeleves.prenom,moyennes.moyenne from Moyennes join Noteeleves on Moyennes.Id_Etudiant=Noteeleves.Id_Etudiant;
 Select Noteeleves.Id_Etudiant,Noteeleves.Code_Semestre,Moyennes.Moyenne from Noteeleves Except Select * from Moyennes ;

Select Id_Etudiant,Note,Credit from Noteeleves group by Id_Etudiant order by Id_Etudiant asc ; 