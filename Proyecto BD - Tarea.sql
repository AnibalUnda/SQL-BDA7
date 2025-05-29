-- Creación de la base de datos

create database bd_proyecto_indicadores_financieros;
go

-- Seleccionar la base de datos
use bd_proyecto_indicadores_financieros;
go

-- Creamos la tabla analista_responsable

create table analista_responsable (
id int identity(1,1) primary key,
cod_analista_origen char(8) unique not null,
cod_analista_actual char(8) not null,
categoria_analista_origen varchar(100) not null,
categoria_analista_actual varchar(100) not null,
nombre_analista_actual varchar(100) not null,
nombre_analista_origen varchar(100) not null
);

-- Creamos la tabla agencia
create table agencia(
id int identity(1,1) primary key,
cod_agencia char(5) unique not null,
nombre varchar(100) not null,
departamento varchar(100) not null,
region varchar(100) not null,
estado varchar(25) not null
);

-- Creamos la tabla gerente_agencia

create table gerente_agencia (
id int identity (1,1) primary key,
agencia_id int not null,
nombre_gerente varchar (100) not null,
categoria_gerente varchar(55),
fecha_inicio date not null,
fecha_cese date null
foreign key (agencia_id) references agencia(id)
);

-- Creamos la tabla fecha

create table fecha (
id int identity (1,1) primary key,
agencia_id int not null,
fecha_reporte datetime default getdate() not null,
foreign key (agencia_id) references agencia(id)
);

-- Creamos la tabal creditos

create table creditos (
id int identity (1,1) primary key,
titular varchar (100) not null,
agencia_id int  not null,
saldo_capital decimal (9,2) not null,
estado_credito varchar (100) not null,
saldo_otorgado decimal (9,2) not null,
foreign key (agencia_id) references agencia(id)
);


-- Creamos la tabla sistema_fuente
create table sistema_fuente(
id int identity (1,1) primary key,
creditos_id int not null,
analista_responsable_id int not null,
agencia_id int not null,
foreign key (creditos_id) references creditos(id),
foreign key (analista_responsable_id) references analista_responsable(id),
foreign key (agencia_id) references agencia(id)
);

-- Creamos la tabla indicador
create table indicador(
id int identity (1,1) primary key,
sistema_fuente_id int not null,
nombre_indicador varchar (100)  not null,
unidad_medida varchar (100) not null,
foreign key (sistema_fuente_id) references sistema_fuente(id)
);

-- Creamos la tabla indicador_diario
create table indicador_diario(
id int identity (1,1) primary key,
indicador_id int not null,
fecha_id int  not null,
foreign key (indicador_id) references indicador(id),
foreign key (fecha_id) references fecha(id)
);

-- Creamos la tabla indicador_diario_sf

create table indicador_diario_sf(id int identity(1,1) primary key,indicador_id int not null,agencia_id int not null,valor_meta VARCHAR (255) NOT NULL,valor_real decimal (9,2) NOT NULL,fecha_id int not null,foreign key (indicador_id) references indicador(id),foreign key (agencia_id) references agencia(id),foreign key (fecha_id) references fecha(id));

-- Creamos la tabla desviaciones_indicador

create table desviaciones_indicador(id INT IDENTITY(1,1) PRIMARY KEY,indicador_diario_sf_id INT NOT NULL,diferencia_absoluta DECIMAL(9,2) NOT NULL,diferencia_porcentual DECIMAL(9,2)NOT NULL,FOREIGN KEY (indicador_diario_sf_id) REFERENCES indicador_diario_sf(id),);