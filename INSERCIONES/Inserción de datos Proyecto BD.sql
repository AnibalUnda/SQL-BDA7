use bd_proyecto_indicadores_financieros
go

-- Insertadmos datos de la tabla 'analista_responsable'

insert into analista_responsable (cod_analista_origen, 
				cod_analista_actual, 
				categoria_analista_origen,
				categoria_analista_actual, 
				nombre_analista_actual, 
				nombre_analista_origen)
values 
('A0000001','A0000101','Junior','Senior','Luis Pérez','Carlos Gómez'),
('A0000002','A0000102','Junior','Semi-Senior','Ana Torres','Juan León'),
('A0000003','A0000103','Semi-Senior','Senior','Marco Sánchez','Laura Ríos'),
('A0000004','A0000104','Junior','Senior','Diana Morales','Pedro Núñez'),
('A0000005','A0000105','Senior','Senior','Mario Herrera','Mario Herrera'),
('A0000006','A0000106','Junior','Semi-Senior','Claudia Rivas','Eduardo Díaz'),
('A0000007','A0000107','Senior','Senior','Elena Suárez','Elena Suárez'),
('A0000008','A0000108','Junior','Senior','Alfredo Lima','Gloria Ruiz'),
('A0000009','A0000109','Semi-Senior','Senior','Beatriz Soto','Fernando Rojas'),
('A0000010','A0000110','Junior','Junior','Andrea Lozano','Andrés Salas'),
('A0000011','A0000111','Junior','Senior','Esteban García','Rosa Vargas'),
('A0000012','A0000112','Semi-Senior','Senior','Lucas Aguirre','Marta Mendoza'),
('A0000013','A0000113','Junior','Semi-Senior','Tatiana Flores','Ramón Vera'),
('A0000014','A0000114','Senior','Senior','Ricardo Peña','Ricardo Peña'),
('A0000015','A0000115','Junior','Senior','Juliana López','Óscar Méndez');

select * from analista_responsable

-- Insertadmos datos de la tabla 'agencia'
insert into agencia (cod_agencia, nombre, departamento, region, estado)
values
('AG001','Agencia Central','Lima','Costa','Activa'),
('AG002','Agencia Norte','Piura','Costa','Activa'),
('AG003','Agencia Sur','Arequipa','Sierra','Activa'),
('AG004','Agencia Este','Iquitos','Selva','Activa'),
('AG005','Agencia Oeste','Callao','Costa','Activa'),
('AG006','Agencia Altiplano','Puno','Sierra','Activa'),
('AG007','Agencia Selva','Tarapoto','Selva','Activa'),
('AG008','Agencia Valle','Cusco','Sierra','Activa'),
('AG009','Agencia Mar','Chiclayo','Costa','Activa'),
('AG010','Agencia Centro','Huancayo','Sierra','Activa'),
('AG011','Agencia Noreste','Tumbes','Costa','Activa'),
('AG012','Agencia Frontera','Tacna','Sierra','Activa'),
('AG013','Agencia Metropolitana','Lima','Costa','Activa'),
('AG014','Agencia Central Sur','Ayacucho','Sierra','Activa'),
('AG015','Agencia Río','Ucayali','Selva','Activa');

select * from agencia

-- Insertamos datos en la tabla 'gerente_agencia'

insert into gerente_agencia (agencia_id, nombre_gerente, categoria_gerente, fecha_inicio, fecha_cese)
values
(1,'Javier Prado','A', '2022-01-01', null),
(2,'Ana Martínez','B', '2021-05-10', null),
(3,'Luis Ramos','A', '2020-03-15', '2023-12-31'),
(4,'Sofía Delgado','C', '2023-01-20', null),
(5,'Mario Lazo','B', '2021-11-30', null),
(6,'Elena Dávila','A', '2022-07-01', null),
(7,'Carlos Medina','B', '2020-09-01', null),
(8,'Tatiana Quispe','A', '2021-01-01', '2023-08-10'),
(9,'Daniel Pinto','C', '2023-03-05', null),
(10,'Marta Vera','B', '2020-12-12', null),
(11,'Rosa Paredes','A', '2022-04-04', null),
(12,'Andrés Alfaro','B', '2021-10-10', null),
(13,'Iván Tello','C', '2023-06-01', null),
(14,'César Luján','A', '2022-08-08', null),
(15,'Natalia Ruiz','B', '2023-02-14', null);

select * from gerente_agencia

-- Insertamos datos de la tabla 'fecha'

insert into fecha (agencia_id, fecha_reporte)
values
(1, '2024-01-01'), (2, '2024-01-02'), (3, '2024-01-03'), (4, '2024-01-04'), (5, '2024-01-05'),
(6, '2024-01-06'), (7, '2024-01-07'), (8, '2024-01-08'), (9, '2024-01-09'), (10, '2024-01-10'),
(11, '2024-01-11'), (12, '2024-01-12'), (13, '2024-01-13'), (14, '2024-01-14'), (15, '2024-01-15');

select * from fecha

-- Insertamos datos de la tabla 'créditos'
insert into creditos (titular, agencia_id, saldo_capital, estado_credito, saldo_otorgado)
values
('Juan Pérez', 1, 10000.00, 'Activo', 15000.00),
('Lucía Ramos', 2, 5000.00, 'Activo', 7000.00),
('Carlos Díaz', 3, 8000.00, 'Moroso', 10000.00),
('Marta Salas', 4, 6000.00, 'Activo', 6000.00),
('Pedro Yupanqui', 5, 2000.00, 'Cancelado', 2500.00),
('Laura Ríos', 6, 3000.00, 'Activo', 4000.00),
('Miguel Torres', 7, 9000.00, 'Activo', 11000.00),
('Andrea Vega', 8, 4000.00, 'Activo', 4500.00),
('Luis Méndez', 9, 7000.00, 'Moroso', 9000.00),
('Ana Flores', 10, 5500.00, 'Activo', 6000.00),
('Eduardo Reyes', 11, 6200.00, 'Activo', 8000.00),
('Tatiana León', 12, 1000.00, 'Cancelado', 1200.00),
('Fernando Ramos', 13, 15000.00, 'Activo', 16000.00),
('Elena García', 14, 4700.00, 'Activo', 5000.00),
('Ramón Torres', 15, 20000.00, 'Moroso', 22000.00);

select * from creditos

-- Insertamos datos en la tabla 'sistema_fuente'

insert into sistema_fuente (creditos_id, analista_responsable_id, agencia_id)
values
(1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5),
(6, 6, 6), (7, 7, 7), (8, 8, 8), (9, 9, 9), (10, 10, 10),
(11, 11, 11), (12, 12, 12), (13, 13, 13), (14, 14, 14), (15, 15, 15);

select * from sistema_fuente

-- Insertamos datos en la tabla 'indicador'

insert into indicador (sistema_fuente_id, nombre_indicador, unidad_medida)
values
(1, 'Mora Crediticia', '%'),
(2, 'Rentabilidad Neta', '%'),
(3, 'Cartera Vigente', 'S/'),
(4, 'Clientes Nuevos', 'Unidades'),
(5, 'Clientes Recuperados', 'Unidades'),
(6, 'Cartera Vencida', 'S/'),
(7, 'Nuevos Créditos', 'S/'),
(8, 'Créditos Cancelados', 'S/'),
(9, 'Monto Otorgado', 'S/'),
(10, 'Saldo Capital Promedio', 'S/'),
(11, 'Ingresos Financieros', 'S/'),
(12, 'Créditos Refinanciados', 'Unidades'),
(13, 'Clientes Activos', 'Unidades'),
(14, 'Costos Operativos', 'S/'),
(15, 'Rotación de Cartera', '%');

select * from indicador

-- Insertamos datos en la tabla 'indicador_diario'
insert into indicador_diario (indicador_id, fecha_id)
values
(1,1), (2,2), (3,3), (4,4), (5,5),
(6,6), (7,7), (8,8), (9,9), (10,10),
(11,11), (12,12), (13,13), (14,14), (15,15);

select * from indicador_diario

-- Insertamos datos en la tabla 'indicador_diario_sf'

alter table indicador_diario_sf
alter column valor_meta decimal(9,2) not null; -- hubo un problema en la especificación de la columna valor meta (varchar)
-- se realizó el cambio con alter table y alter column


insert into indicador_diario_sf (indicador_id, agencia_id, valor_meta, valor_real, fecha_id)
values
(1,1,5.00, 4.80, 1),
(2,2,10.00, 9.50, 2),
(3,3,100000.00, 95000.00, 3),
(4,4,150, 140, 4),
(5,5,50, 48, 5),
(6,6,80000.00, 79000.00, 6),
(7,7,120000.00, 125000.00, 7),
(8,8,40000.00, 42000.00, 8),
(9,9,130000.00, 129000.00, 9),
(10,10,50000.00, 48000.00, 10),
(11,11,60000.00, 61000.00, 11),
(12,12,30, 28, 12),
(13,13,300, 310, 13),
(14,14,35000.00, 34000.00, 14),
(15,15,7.5, 7.0, 15);

select * from indicador_diario_sf

-- Insertamos datos en la tabla 'desviaciones_indicador'

insert into desviaciones_indicador (indicador_diario_sf_id, diferencia_absoluta, diferencia_porcentual)
select 
    id as indicador_diario_sf_id,
    abs(valor_real - valor_meta) as diferencia_absoluta,
    case 
        when valor_meta = 0 then 0
        else abs(valor_real - valor_meta) / valor_meta * 100
    end as diferencia_porcentual
from indicador_diario_sf;


select * from desviaciones_indicador
