create database if not exists beneficiarios;
use BENEFICIARIOS;

create table unidad(
id_unidad int primary key not null auto_increment,
nombre varchar(200)
);

create table beneficiario(
id_beneficiario int primary key not null,
nombre varchar(100),
app varchar(100),
apm varchar(100),
fecha date,
testigo_1 varchar(500),
testigo_2 varchar(500),
aspabuap varchar(100),
buap varchar(100),
id_unidad int,
foreign key (id_unidad) references unidad(id_unidad)
);

create table marcha_1(
nombre varchar(100),
app varchar(100),
apm varchar(100),
porcentaje int,
id_beneficiario int,
foreign key (id_beneficiario) references beneficiario(id_beneficiario)
);

create table marcha_2(
nombre varchar(100),
app varchar(100),
apm varchar(100),
porcentaje int,
id_beneficiario int,
foreign key (id_beneficiario) references beneficiario(id_beneficiario)
);

create table gastos_1(
nombre varchar(100),
app varchar(100),
apm varchar(100),
porcentaje int,
id_beneficiario int,
foreign key (id_beneficiario) references beneficiario(id_beneficiario)
);

create table gastos_2(
nombre varchar(100),
app varchar(100),
apm varchar(100),
porcentaje int,
id_beneficiario int,
foreign key (id_beneficiario) references beneficiario(id_beneficiario)
);

create table usuario(
id_usuario int(50) primary key not null auto_increment,
nombre varchar(100),
usuario varchar(100),
pass varchar(100),
correo varchar(100),
tipo varchar(100)
);

create table datos(
id_datos int(50) primary key not null auto_increment,
tipo varchar(100),
nombre varchar(100),
app varchar(100),
apm varchar(100),
porcentaje int,
id_beneficiario int,
foreign key (id_beneficiario) references beneficiario(id_beneficiario)
);

INSERT INTO unidad (id_unidad, nombre) VALUES (1, 'Bachillerato Tecnológico');
INSERT INTO unidad (id_unidad, nombre) VALUES (2, 'Bachillerato General');
INSERT INTO unidad (id_unidad, nombre) VALUES (3, 'Complejo Regional Centro');
INSERT INTO unidad (id_unidad, nombre) VALUES (4, 'Complejo Regional Mixteca');
INSERT INTO unidad (id_unidad, nombre) VALUES (5, 'Complejo Regional Nororiental');
INSERT INTO unidad (id_unidad, nombre) VALUES (6, 'Complejo Regional Norte');
INSERT INTO unidad (id_unidad, nombre) VALUES (7, 'Complejo Regional Sur');
INSERT INTO unidad (id_unidad, nombre) VALUES (8, 'Complejo Regional Norte');
INSERT INTO unidad (id_unidad, nombre) VALUES (9, 'Escuela de Artes Plásticas y Audiovisuales');
INSERT INTO unidad (id_unidad, nombre) VALUES (10, 'Facultad de Administración');
INSERT INTO unidad (id_unidad, nombre) VALUES (11, 'Facultad de Arquitectura');
INSERT INTO unidad (id_unidad, nombre) VALUES (12, 'Facultad de Artes');
INSERT INTO unidad (id_unidad, nombre) VALUES (13, 'Facultad de Ciencias Agrícolas y Pecuarias');
INSERT INTO unidad (id_unidad, nombre) VALUES (14, 'Facultad de Ciencias Biológicas');
INSERT INTO unidad (id_unidad, nombre) VALUES (15, 'Facultad de Ciencias de la Computación');
INSERT INTO unidad (id_unidad, nombre) VALUES (16, 'Facultad de Ciencias de la Comunicación');
INSERT INTO unidad (id_unidad, nombre) VALUES (17, 'Facultad de Ciencias de la Electrónica');
INSERT INTO unidad (id_unidad, nombre) VALUES (18, 'Facultad de Ciencias Físico Matemáticas');
INSERT INTO unidad (id_unidad, nombre) VALUES (19, 'Facultad de Ciencias Políticas y Sociales');
INSERT INTO unidad (id_unidad, nombre) VALUES (20, 'Facultad de Ciencias Químicas');
INSERT INTO unidad (id_unidad, nombre) VALUES (21, 'Facultad de Contaduría Pública');
INSERT INTO unidad (id_unidad, nombre) VALUES (22, 'Facultad de Cultura Física');
INSERT INTO unidad (id_unidad, nombre) VALUES (23, 'Facultad de Derecho');
INSERT INTO unidad (id_unidad, nombre) VALUES (24, 'Facultad de Economía');
INSERT INTO unidad (id_unidad, nombre) VALUES (25, 'Facultad de Enfermería');
INSERT INTO unidad (id_unidad, nombre) VALUES (26, 'Facultad de Estomatología');
INSERT INTO unidad (id_unidad, nombre) VALUES (27, 'Facultad de Filosofía y Letras');
INSERT INTO unidad (id_unidad, nombre) VALUES (28, 'Facultad de Ingeniería');
INSERT INTO unidad (id_unidad, nombre) VALUES (29, 'Facultad de Ingeniería Química');
INSERT INTO unidad (id_unidad, nombre) VALUES (30, 'Facultad de Lenguas');
INSERT INTO unidad (id_unidad, nombre) VALUES (31, 'Facultad de Medicina');
INSERT INTO unidad (id_unidad, nombre) VALUES (32, 'Facultad de Medicina Veterinaria y Zootecnia');
INSERT INTO unidad (id_unidad, nombre) VALUES (33, 'Facultad de Psicología');

INSERT INTO beneficiario (id_beneficiario,nombre, app, apm, fecha, testigo_1, testigo_2, aspabuap, buap, id_unidad) 
VALUES (100416344,'Karina', 'Ruiseiro', 'Flores', 'Maria', '02-02-2013','Jose Carlos Lopez Sanchez', '', '', 31);
INSERT INTO marcha_1 (nombre, app, apm, porcentaje, id_beneficiario) 
VALUES ('Rafael', 'Torres', 'Montiel', 50, 100416344); 
INSERT INTO marcha_1 (nombre, app, apm, porcentaje, id_beneficiario) 
VALUES ('Maria Otilia Lucia', 'Flores', 'Rivera', 50, 100416344); 
INSERT INTO marcha_2 (nombre, app, apm, porcentaje, id_beneficiario) 
VALUES ('Magdiel', 'Ruiseco', 'Flores', 50, 100416344); 
INSERT INTO marcha_2 (nombre, app, apm, porcentaje, id_beneficiario) 
VALUES ('Anabel', 'Patiño', 'Flores', 50, 100416344); 
INSERT INTO gastos_1 (nombre, app, apm, porcentaje, id_beneficiario) 
VALUES ('Rafael', 'Torres', 'Montiel', 50, 100416344); 
INSERT INTO gastos_1 (nombre, app, apm, porcentaje, id_beneficiario) 
VALUES ('Maria Otilia Lucia', 'Flores', 'Rivera', 50, 100416344); 
INSERT INTO gastos_2 (nombre, app, apm, porcentaje, id_beneficiario) 
VALUES ('Magdiel', 'Ruiseco', 'Flores', 50, 100416344); 
INSERT INTO gastos_2 (nombre, app, apm, porcentaje, id_beneficiario) 
VALUES ('Anabel', 'Patiño', 'Flores', 50, 100416344);










