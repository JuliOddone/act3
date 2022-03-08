use act3;

create table Cliente(
Cli_ID int unsigned not null auto_increment,
Cli_Nombre varchar(120) not null,
Cli_Apellido varchar(120) not null,
Cli_Telefono int not null,
Cli_Vta_ID int unsigned not null,

primary key(Cli_ID),
foreign key(Cli_Vta_ID) references Ventas(Vta_ID)
);

create table Ventas(
Vta_ID int unsigned not null auto_increment,
Vta_Veh_ID int unsigned not null,
Vta_Precio int not null,
Vta_Fecha date not null,

primary key(Vta_ID),
foreign key(Vta_Veh_ID) references Vehiculo(Veh_ID)
);

create table Vehiculo(
Veh_ID int unsigned not null auto_increment,
Veh_Marca varchar(120) not null,
Veh_Modelo varchar(120) not null,
Veh_Version varchar(80) not null,
Veh_Año year not null,
Veh_Color varchar(100) not null,

primary key(Veh_ID)
);

insert into Vehiculo values(null, "Volkswagen", "Gol", "Trend", 2015, "Rojo");
insert into Vehiculo values(null, "Dodge", "Challenger", "SRT8", 2020, "Negro");
insert into Vehiculo values(null, "Ford", "MUstang", "GT500", 1969, "Blanco");
insert into Vehiculo values(null, "Toyota", "Etios", "XLS", 2016, "Blanco");
insert into Vehiculo values(null, "Dodge RAM", "2500", "Laramie", 2015, "Negro");

insert into Ventas values(null, 1, 500000, '2015-12-30');
insert into Ventas values(null, 2, 2000000, '2021-04-17');
insert into Ventas values(null, 3, 1500000, '2017-08-03');
insert into Ventas values(null, 4, 650000, '2022-01-27');
insert into Ventas values(null, 5, 3000000, '2018-03-21');

insert into Cliente values(null, "Jose", "Gomez", 42387472, 1);
insert into Cliente values(null, "Claudio", "Estevez", 42991142, 2);
insert into Cliente values(null, "David", "Diaz", 1151668794, 3);
insert into Cliente values(null, "Erica", "Rodriguez", 1145987621, 4);
insert into Cliente values(null, "Sol", "Pfeifer", 42319874, 5);
