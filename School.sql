-- Database: School

-- DROP DATABASE "School";

CREATE DATABASE "School"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	

CREATE TABLE MATERIA(
clave_M serial primary key,
nombre_M char(50),
credit_M int
);

CREATE TABLE ALUMNO(
mat_alumno serial primary key,
nom_alumno char (50),
edad_alumno int,
sem_alumno int,
gen_alumno char(50)
);


CREATE TABLE PROFESOR(
clave_P serial primary key,
nom_p char (50),
dir_p char (50),
tel_p char (20),
hor_p char (50),
tie_p char (20)
);

 CREATE TABLE CARRERA(
clave_C serial primary key,
nom_c char (50),
dura_c char (20)
 )
 

  -- Relaciones N:N nueva tabla
 CREATE TABLE MATERIA_ALUMNO(
 clave_M1 int,
 mat_alu2 int
 );
 
 
alter table MATERIA_ALUMNO add foreign key (clave_M1)
references MATERIA (clave_M)
match simple on update cascade on delete cascade

alter table MATERIA_ALUMNO add foreign key (mat_alu2)
references ALUMNO (mat_alumno)
match simple on update cascade on delete cascade


 
 
 CREATE TABLE MATERIA_PROFESOR(
 clave_M2 int,
 clave_P2 int
 );
 
 
alter table MATERIA_PROFESOR add foreign key (clave_M2)
references MATERIA (clave_M)
match simple on update cascade on delete cascade

alter table MATERIA_PROFESOR add foreign key (clave_P2)
references PROFESOR (clave_P)
match simple on update cascade on delete cascade


 
 
 CREATE TABLE ALUMNO_PROFESOR(
 mat_alu1 int,
 clave_P1 int
 );
 
 
alter table ALUMNO_PROFESOR add foreign key (mat_alu1)
references ALUMNO (mat_alumno)
match simple on update cascade on delete cascade

alter table ALUMNO_PROFESOR add foreign key (clave_P1)
references PROFESOR (clave_P)
match simple on update cascade on delete cascade


-- Relacion N:1 

alter table ALUMNO add Clave_C1 int

alter table ALUMNO add foreign key (Clave_C1)
references CARRERA (Clave_C)
match simple on update cascade on delete cascade


-- Insersión de datos

insert into MATERIA (nombre_m, credit_m) values ('QUIMICA', 4)
insert into MATERIA (nombre_m, credit_m) values ('MATERIA1', 2)
insert into MATERIA (nombre_m, credit_m) values ('QUIMICA3', 4)
insert into MATERIA (nombre_m, credit_m) values ('MATERIA123', 2)
insert into MATERIA (nombre_m, credit_m) values ('QUIMICAds', 4);
insert into MATERIA (nombre_m, credit_m) values ('MATERIAds1', 2);
insert into MATERIA (nombre_m, credit_m) values ('QUIMICA', 4);
insert into MATERIA (nombre_m, credit_m) values ('MATERIA1', 2);
insert into MATERIA (nombre_m, credit_m) values ('QUIMICA', 4);
insert into MATERIA (nombre_m, credit_m) values ('MATERIA1', 2);
	

insert into PROFESOR (Nom_p, dir_p, tel_p, hor_p, tie_p) values ('Profesor', 'Cra 12 2-23', '32323232', 'Martes', '4 pm');
insert into PROFESOR (Nom_p, dir_p, tel_p, hor_p, tie_p) values ('Profesor', 'Cra 12 2-23', '32323232', 'Martes', '4 pm');
insert into PROFESOR (Nom_p, dir_p, tel_p, hor_p, tie_p) values ('Profesor', 'Cra 12 2-23', '32323232', 'Martes', '4 pm');
insert into PROFESOR (Nom_p, dir_p, tel_p, hor_p, tie_p) values ('Profesor', 'Cra 12 2-23', '32323232', 'Martes', '4 pm');
insert into PROFESOR (Nom_p, dir_p, tel_p, hor_p, tie_p) values ('Profesor', 'Cra 12 2-23', '32323232', 'Martes', '4 pm');
insert into PROFESOR (Nom_p, dir_p, tel_p, hor_p, tie_p) values ('Profesor', 'Cra 12 2-23', '32323232', 'Martes', '4 pm');
insert into PROFESOR (Nom_p, dir_p, tel_p, hor_p, tie_p) values ('Profesor', 'Cra 12 2-23', '32323232', 'Martes', '4 pm');
insert into PROFESOR (Nom_p, dir_p, tel_p, hor_p, tie_p) values ('Profesor', 'Cra 12 2-23', '32323232', 'Martes', '4 pm');
insert into PROFESOR (Nom_p, dir_p, tel_p, hor_p, tie_p) values ('Profesor', 'Cra 12 2-23', '32323232', 'Martes', '4 pm');
insert into PROFESOR (Nom_p, dir_p, tel_p, hor_p, tie_p) values ('Profesor', 'Cra 12 2-23', '32323232', 'Martes', '4 pm');
insert into PROFESOR (Nom_p, dir_p, tel_p, hor_p, tie_p) values ('Profesor', 'Cra 12 2-23', '32323232', 'Martes', '4 pm');


select * from carrera
insert into 
insert into alumno (nom_alumno, edad_alumno, sem_alumno, gen_alumno) values ('Julia', 17, 3, 'femenino');
insert into alumno (nom_alumno, edad_alumno, sem_alumno, gen_alumno) values ('Julia', 17, 3, 'femenino');
insert into alumno (nom_alumno, edad_alumno, sem_alumno, gen_alumno) values ('Julia', 17, 3, 'femenino');
insert into alumno (nom_alumno, edad_alumno, sem_alumno, gen_alumno) values ('Julia', 17, 3, 'femenino');
insert into alumno (nom_alumno, edad_alumno, sem_alumno, gen_alumno) values ('Julia', 17, 3, 'femenino');
insert into alumno (nom_alumno, edad_alumno, sem_alumno, gen_alumno) values ('Julia', 17, 3, 'femenino');
insert into alumno (nom_alumno, edad_alumno, sem_alumno, gen_alumno) values ('Julia', 17, 3, 'femenino');
insert into alumno (nom_alumno, edad_alumno, sem_alumno, gen_alumno) values ('Julia', 17, 3, 'femenino');
insert into alumno (nom_alumno, edad_alumno, sem_alumno, gen_alumno) values ('Julia', 17, 3, 'femenino');
insert into alumno (nom_alumno, edad_alumno, sem_alumno, gen_alumno) values ('Julia', 17, 3, 'femenino');

insert into carrera (nom_c, dura_c) values ('Ingenieria', '10 semestres');
insert into carrera (nom_c, dura_c) values ('Ingenieria', '10 semestres');
insert into carrera (nom_c, dura_c) values ('Ingenieria', '10 semestres');
insert into carrera (nom_c, dura_c) values ('Ingenieria', '10 semestres');
insert into carrera (nom_c, dura_c) values ('Ingenieria', '10 semestres');
insert into carrera (nom_c, dura_c) values ('Ingenieria', '10 semestres');
insert into carrera (nom_c, dura_c) values ('Ingenieria', '10 semestres');
insert into carrera (nom_c, dura_c) values ('Ingenieria', '10 semestres');
insert into carrera (nom_c, dura_c) values ('Ingenieria', '10 semestres');


update alumno
set clave_c1 = carrera.clave_c
from carrera
where mat_alumno = carrera.clave_c

insert into materia_alumno values (1, 3);
insert into materia_alumno values (2,4);

select * from alumno

insert into materia_profesor values (5, 8);
insert into materia_profesor values (3, 6);

insert into alumno_profesor values (2,2);
insert into alumno_profesor values (5,4);

-- Rename
alter table alumno rename to Alumni

alter table profesor rename to Pro

alter table materia rename to Mati

--delete
delete from mati where clave_m=2 
delete from pro where clave_p=2 
delete from alumni where mat_alumno=5 
delete from carrera where clave_c= 3


select * from mati
select * from pro
select * from alumni
select * from carrera
select * from materia_alumno
select * from materia_profesor
select * from alumno_profesor


update alumni 
set clave_c1 = 4
where mat_alumno between 13 and 22
