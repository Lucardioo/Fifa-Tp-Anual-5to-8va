DROP DATABASE IF EXISTS FIFA-TRANSACCIONES;

CREATE DATABASE FIFA-TRANSACCIONES;

USE FIFA-TRANSACCIONES;

CREATE TABLE Posicion --falta las uniones
(
    idPosicion  TINYINT     NOT NULL,
    nombre      VARCHAR(45) NOT NULL,
    numero      TINYINT     NOT NULL
);

CREATE TABLE Habilidad --falta las uniones
(
    idHabilidades   TINYINT     NOT NULL,
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
    fechaDeNacimiento   DATE    NOT NULL,
    velocidad           INT     NOT NULL,
    remate              INT     NOT NULL,
    pase                INT     NOT NULL,
    defensa             INT     NOT NULL

    PRIMARY KEY (idFutbolista)
    CONSTRAINT Posicion FOREIGN 
);

CREATE TABLE Jugador --falta las uniones
(
    idJugador       TINYINT NOT NULL,
    nombre          VARCHAR(45) NOT NULL,
    apellido        VARCHAR(45) NOT NULL,
    nombreDeUsuario VARCHAR(15) NOT NULL,
    contrasena      CHAR(64)    NOT NULL,
    monedas         MEDIUMINT   NOT NULL,

    PRIMARY KEY (idJugador)
    CONSTRAINT 
);

CREATE TABLE Posesion
(
    idJugador       TINYINT NOT NULL,
    idFutbolista    TINYINT NOT NULL,
    adquirido       BOOLEAN NOT NULL,
);

CREATE TABLE Transferencia
(
    idTransferencia     TINYINT     NOT NULL,
    idFutbolista        TINYINT     NOT NULL,
    fechaHora           DATETIME    NOT NULL,
    precio              MEDIUMINT   NOT NULL,
    monedas             MEDIUMINT   NOT NULL,
    fechaConcentracion  DATE        NOT NULL
);