create table Account (id identity,
						username varchar unique,
						password varchar not null,
						firstName varchar not null, 
						lastName varchar not null,
						primary key (id));

create table Backlog (idBacklog identity,
						nome varchar not null,
						descricao varchar,
						primary key (id),
						idAccount foreign key references Account(id));
						
create table Tema (idTema identify,
					nome varchar not null,
					primary key (id),
					idBacklog foreign key references Backlog(idBacklog));
					
create table Item (idItem identify,
					descricao varchar not null,
					escala int not null,
					idTema foreign key references Tema(idTema));
