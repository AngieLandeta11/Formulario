create database if not exists beneficiarios;
use BENEFICIARIOS;

create table unidad(
id_unidad int primary key not null auto_increment,
nombre varchar(200)
);

create table beneficiario(
id_beneficiario int primary key not null auto_increment,
nombre varchar(100),
app varchar(100),
apm varchar(100),
testigo_1 varchar(500),
testigo_2 varchar(500),
aspabuap varchar(100),
buap varchar(100),
id_unidad int,
archivo varchar(200),
foreign key (id_unidad) references unidad(id_unidad)
);

create table marcha_1(
nombre varchar(100),
app varchar(100),
apm varchar(100),
porcentaje varchar(100),
id_beneficiario int,
foreign key (id_beneficiario) references beneficiario(id_beneficiario)
);

create table marcha_2(
nombre varchar(100),
app varchar(100),
apm varchar(100),
porcentaje varchar(100),
id_beneficiario int,
foreign key (id_beneficiario) references beneficiario(id_beneficiario)
);

create table gastos_1(
nombre varchar(100),
app varchar(100),
apm varchar(100),
porcentaje varchar(100),
id_beneficiario int,
foreign key (id_beneficiario) references beneficiario(id_beneficiario)
);

create table gastos_2(
nombre varchar(100),
app varchar(100),
apm varchar(100),
porcentaje varchar(100),
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
porcentaje varchar(100),
id_beneficiario int,
foreign key (id_beneficiario) references beneficiario(id_beneficiario)
);





