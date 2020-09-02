--Fabian Olarte / Santiago Fernández / Mateo Rosero / Andrés Vásquez 
--Laboratorio SQL 4 2020-3 Bases de Datos

create table Clientes(
codigoCliente number(3,0),
nombre varchar2(60),
apellido varchar2(60),
fecha_nacimiento date,
fecha_vinculacion date,
genero char(1),
primary key (codigoCliente));

create table Oficinas(
codigo_oficina number(3,0),
nombre varchar2(60),
primary key (codigo_oficina));

create table Cuentas(
numero_cuenta number(3,0),
tipo char(2),
codigo_oficina number(3,0),
saldo number(12,2),
valor_apertura number(12,2),
foreign key (codigo_oficina) references Oficinas,
primary key (numero_cuenta));

create table Titulares(
codigo_cliente number(3,0),
numero_cuenta number(3,0),
porcentaje_titularidad number(3,0),
foreign key (codigo_cliente) references Clientes,
foreign key (numero_cuenta) references Cuentas,
primary key (codigo_cliente, numero_cuenta));

create table Movimiento(
numero_cuenta number(3,0),
numero number(3,0),
tipo char(1),
valor number(10,2),
fecha_movimiento date,
foreign key (numero_cuenta) references Cuentas,
primary key (numero));
             

insert into cuentas values (100, 'A', 10, null, 0);
insert into cuentas values (200, 'A', 10, null, 100);
insert into cuentas values (300, 'C', 10, null, 500);
insert into cuentas values (400, 'C', 10, null, 1000);
insert into cuentas values (500, 'A', 10, null, 100);
insert into cuentas values (600, 'A', 10, null, 50);
             
insert into Clientes values (1, 'Pedro', 'Perez', TO_DATE('18/01/1980', 'DD/MM/YYYY'), TO_DATE('18/01/1990','DD/MM/YYYY'), 'M');
insert into Clientes values (2, 'Maria', 'Restrepo', TO_DATE('18/02/1970', 'DD/MM/YYYY'), TO_DATE('18/02/1990','DD/MM/YYYY'), 'F');
insert into Clientes values (3, 'Juana', 'Arias', TO_DATE('18/03/1990', 'DD/MM/YYYY'), TO_DATE('18/03/1990','DD/MM/YYYY'), 'F');
insert into Clientes values (4, 'Carlos', 'Lozano', TO_DATE('18/04/2000', 'DD/MM/YYYY'), TO_DATE('18/04/2000','DD/MM/YYYY'), 'M');
insert into Clientes values (5, 'Esteban', 'Gonzalez', TO_DATE('18/02/2001', 'DD/MM/YYYY'), TO_DATE('18/02/2001','DD/MM/YYYY'), 'M');
insert into Clientes values (6, 'John', 'Hurtado', TO_DATE('20/02/1970', 'DD/MM/YYYY'), TO_DATE('20/02/1990','DD/MM/YYYY'), 'M');
insert into Clientes values (7, 'Juana', 'Perez', TO_DATE('08/08/1950', 'DD/MM/YYYY'), TO_DATE('08/08/1990','DD/MM/YYYY'), 'F');

insert into Movimientos values(100, 1, D, 10000, TO_DATE('01-01-2000','DD-MM-YYYY', '10:00:23', 'HH:MI:SS'));
insert into Movimientos values(100, 2, D, 25000, TO_DATE('01-02-2000','DD-MM-YYYY', '10:05:23', 'HH:MI:SS'));
insert into Movimientos values(100, 3, C, 5000, TO_DATE('01-02-2000','DD-MM-YYYY', '10:10:23', 'HH:MI:SS'));
insert into Movimientos values(400, 1, D, 58000, TO_DATE('01-02-2000','DD-MM-YYYY', '10:15:23', 'HH:MI:SS'));
insert into Movimientos values(400, 2, I, 2500, TO_DATE('01-01-2000','DD-MM-YYYY', '10:00:23', 'HH:MI:SS'));

