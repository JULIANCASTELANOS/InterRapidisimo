use master
go
IF NOT EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE NAME = 'DBPRUEBAS')
CREATE DATABASE DBPRUEBAS

GO 
USE DBPRUEBAS

GO

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'UNIVERSIDAD')
create table UNIVERSIDAD(
IdUniversidad int primary key identity(1,1),
Nombre varchar(60),
Programa varchar(60),
Direccion varchar(60),
Telefono varchar(60)
)
GO

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'USUARIO')
create table USUARIO(
IdUsuario int primary key identity(1,1),
DocumentoIdentidad varchar(60),
Nombres varchar(60),
Telefono varchar(60),
Correo varchar(60),
Ciudad varchar(60),
FechaRegistro datetime default getdate()
)
GO

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'MATERIAS')
create table MATERIAS(
IdMateria int primary key identity(1,1),
DocumentoIdentidad varchar(60),
Materia varchar(60),
Creditos varchar(60),
Profesor varchar(60)
)
GO

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'PROGRAMA')
create table PROGRAMA(
IdPrograma int primary key identity(1,1),
DocumentoIdentidad varchar(60),
Programa varchar(60),
Director_Programa varchar(60)
)
GO

select * from dbo.UNIVERSIDAD
select * from dbo.USUARIO
select * from dbo.MATERIAS
select * from dbo.PROGRAMA