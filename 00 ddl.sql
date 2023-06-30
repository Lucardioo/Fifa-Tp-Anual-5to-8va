--escribir las relaciones a lo ultimo


DROP DATABASE IF EXISTS FIFA-TRANSACCIONES;

CREATE DATABASE FIFA-TRANSACCIONES;

USE FIFA-TRANSACCIONES;

CREATE TABLE Posicion
(
    idPosicion          TINYINT PRIMARY KEY NOT NULL,
    nombre              VARCHAR(45) NOT NULL
);

CREATE TABLE Habilidad
(
    idHabilidad         TINYINT PRIMARY KEY NOT NULL,
    descripcion         VARCHAR(45) NOT NULL
);

CREATE TABLE Futbolista_Habilidad
(
    idFutbolista        TINYINT NOT NULL,
    idHabilidad         TINYINT NOT NULL,
    
    PRIMARY KEY (idHabilidad, idFutbolista),
    CONSTRAINT Fk_Habilidad FOREIGN KEY (idHabilidad) REFERENCES Habilidad (idHabilidad),
    CONSTRAINT Fk_Futbolista FOREIGN KEY (idFutbolista) REFERENCES Futbolista (idFutbolista)
);

CREATE TABLE Futbolista
(
    idFutbolista        TINYINT PRIMARY KEY NOT NOT NULL,
    idPosicion          TINYINT PRIMARY KEY NOT NOT NULL,
    nombre              VARCHAR(45),
    apellido            VARCHAR(45),
    fechaDeNacimiento   DATE    NOT NULL,
    velocidad           INT     NOT NULL,
    remate              INT     NOT NULL,
    pase                INT     NOT NULL,
    defensa             INT     NOT NULL,

    PRIMARY KEY (idFutbolista)
    CONSTRAINT idFutbolista FOREIGN KEY (idfutbolista) REFERENCES Futbolista-Habilidad (idfutbolista)
);

CREATE TABLE Jugador --falta las uniones
(
    idJugador           TINYINT NOT NULL,
    nombre              VARCHAR(45) NOT NULL,
    apellido            VARCHAR(45) NOT NULL,
    nombreDeUsuario     VARCHAR(15) NOT NULL,
    contrasena          CHAR(64)    NOT NULL,
    monedas             MEDIUMINT   NOT NULL,

    PRIMARY KEY (idJugador),
    CONSTRAINT idjugador Foreign Key (idjugador) REFERENCES posesion (idjugador)
);

CREATE TABLE Posesion
(
    idJugador           TINYINT NOT NULL,
    idFutbolista        TINYINT NOT NULL,
    adquirido           BOOLEAN NOT NULL
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
