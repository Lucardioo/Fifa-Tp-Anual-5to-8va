DROP DATABASE IF EXISTS FIFA-TRANSACCIONES;

CREATE DATABASE FIFA-TRANSACCIONES;

USE FIFA-TRANSACCIONES;

CREATE TABLE Posicion -- no tiene uniones
(
    idPosicion          TINYINT     NOT NULL,
    nombre              VARCHAR(45) NOT NULL,
    PRIMARY KEY (idPosicion)
);

CREATE TABLE Habilidad -- no tiene uniones
(
    idHabilidad       TINYINT     NOT NULL,
    descripcion         VARCHAR(45) NOT NULL,
    PRIMARY KEY (idhabilidad)
    constraint idhabilidad Foreign Key (idhabilidad) REFERENCES Futbolista-Habilidad (idhabilidad)

);

CREATE TABLE Futbolista-Habilidad
(
    idFutbolista        TINYINT NOT NULL,
    idHabilidad         TINYINT NOT NULL

    PRIMARY KEY (idFutbolista, idHabilidad)
);
CREATE TABLE Futbolista
(
    idFutbolista        TINYINT NOT NULL,
    idPosicion          TINYINT NOT NULL,
    nombre              VARCHAR(45),
    apellido            VARCHAR(45),
    fechaDeNacimiento   DATE    NOT NULL,
    velocidad           INT     NOT NULL,
    remate              INT     NOT NULL,
    pase                INT     NOT NULL,
    defensa             INT     NOT NULL,

    PRIMARY KEY (idFutbolista)
    CONSTRAINT idFutbolista FOREIGN KEY (idfutbolista) REFERENCES idfutbolista (Futbolista-Habilidad)
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
    adquirido           BOOLEAN NOT NULL,

    PRIMARY KEY (idJugador, IdFutbolista)
);

CREATE TABLE Transferencia
(
    idTransferencia     TINYINT     NOT NULL,
    idFutbolista        TINYINT     NOT NULL,
    fechaHora           DATETIME    NOT NULL,
    precio              MEDIUMINT   NOT NULL,
    monedas             MEDIUMINT   NOT NULL,
    fechaConcentracion  DATE        NOT NULL,

    PRIMARY KEY (idTransferencia)
);