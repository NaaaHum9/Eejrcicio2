/*-------------------------------------------------------------*/
/*                          Ejercicio 2                        */
/*-------------------------------------------------------------*/
CREATE DATABASE ejercicio2;
use ejercicio2

CREATE TABLE AEROPUERTO(
    CodAeropuerto INT NOT NULL PRIMARY KEY,
    Ciudad VARCHAR(45),
    Prov VARCHAR(45),
    Nombre VARCHAR(45)
)ENGINE = InnoDB;

CREATE TABLE TIPO_AVION(
    NombreTipo INT NOT NULL PRIMARY KEY,
    MaxAsientos VARCHAR(45),
    Compania VARCHAR(45)
)ENGINE = InnoDB;

CREATE TABLE AVION(
    idAvion INT NOT NULL,
    NombreTipo INT NOT NULL
    NumTotalAsientos VARCHAR(45),
    PRIMARY KEY (NombreTipo),
    FOREIGN KEY (NombreTipo) REFERENCES TIPO_AVION (NombreTipo)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE INSTANCIA_PLAN(
    NumPlan INT NOT NULL,
    idAvion INT NOT NULL,
    
)