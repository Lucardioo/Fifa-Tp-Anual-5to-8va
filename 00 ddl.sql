-- SQLBook: Code
DROP DATABASE IF EXISTS FIFA-TRANSACCIONES;

CREATE DATABASE FIFA-TRANSACCIONES;

USE FIFA-TRANSACCIONES;

CREATE TABLE Posicion
(
    idPosicion  TINYINT NOT NULL,
    nombre      VARCHAR(45) NOT NULL,
    numero      TINYINT NOT NULL
);

CREATE TABLE Habilidad
(
    idHabilidades   TINYINT NOT NULL,
    descripcion     VARCHAR(45) NOT NULL
);

CREATE TABLE Futbolista
(
    idFutbolista        TINYINT NOT NULL,
    idPosicion          TINYINT NOT NULL,
    idHabilidades       TINYINT NOT NULL,
    idjugador           TINYINT NOT NULL,
    nombre              VARCHAR(45),
    apellido            VARCHAR(45),
    fechaDeNacimiento   DATE,
    velocidad           INT,
    remate              INT,
    pase                INT,
    defensa             INT
    Primary key (idFutbolista)
    Constraint Posicion foreign 

);

CREATE TABLE Jugador
(
    idJugador       TINYINT NOT NULL,
    nombre          VARCHAR(45) NOT NULL,
    apellido        VARCHAR(45) NOT NULL,
    nombreDeUsuario VARCHAR(15) NOT NULL,
    contrasena      CHAR(64) NOT NULL,
    monedas         MEDIUMINT NOT NULL
);