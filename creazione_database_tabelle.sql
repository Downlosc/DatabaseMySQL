/*Creazione del DB*/
CREATE DATABASE IF NOT EXISTS TrovaLavoro;

/*Creazione Tabella INDIRIZZI*/
CREATE TABLE IF NOT EXISTS `TrovaLavoro`.`Indirizzi`
(
  `IdIndirizzo` INT(8) NOT NULL AUTO_INCREMENT,
  `Via` VARCHAR (50) NOT NULL,
  `Citta` VARCHAR(40) NOT NULL,
  `Provincia` VARCHAR(255) NOT NULL,
  `Stato` VARCHAR (20) NOT NULL,
  `CAP` VARCHAR (5) NOT NULL,

  PRIMARY KEY (`IdIndirizzo`)
) ENGINE = InnoDB;

/*Creazione della tabella MEMBRI*/
CREATE TABLE IF NOT EXISTS `TrovaLavoro`.`Membri`
(
  `IdMembro` INT(8) NOT NULL AUTO_INCREMENT,
  `Email` VARCHAR(40) NOT NULL,
  `Password` VARCHAR(40) NOT NULL,

  `IdIndirizzo` INT(8) NOT NULL,

  PRIMARY KEY (`IdMembro`),

  CONSTRAINT `IdIndirizzoMembri`
    FOREIGN KEY(`IdIndirizzo`)
    REFERENCES `TrovaLavoro`.`Indirizzi`(`IdIndirizzo`)
    ON DELETE CASCADE ON UPDATE CASCADE,

  INDEX `IdIndirizzo` (`IdIndirizzo` ASC)
) ENGINE = InnoDB;

/*Creazione della tabella GRUPPI*/
CREATE TABLE IF NOT EXISTS `TrovaLavoro`.`Gruppi`
(
  `IdGruppo` INT(8) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(40) NOT NULL,
  `Descrizione` VARCHAR(255) NOT NULL,

  PRIMARY KEY (`IdGruppo`)
) ENGINE = InnoDB;

/*Creazione della tabella di appoggio per membri e gruppi*/
CREATE TABLE IF NOT EXISTS `TrovaLavoro`.`MembriGruppi`
(
  `IdMembriGruppi` INT(8) NOT NULL,

  `IdMembro` INT(8) NOT NULL,
  `IdGruppo` INT(8) NOT NULL,

  PRIMARY KEY (`IdMembriGruppi`),

 CONSTRAINT `IdMembroMembriGruppi`
    FOREIGN KEY(`IdMembro`)
    REFERENCES `TrovaLavoro`.`Membri`(`IdMembro`)
    ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `IdGruppoMembriGruppi`
    FOREIGN KEY(`IdGruppo`)
    REFERENCES `TrovaLavoro`.`Gruppi`(`IdGruppo`)
    ON DELETE CASCADE ON UPDATE CASCADE,

  INDEX `IdMembro` (`IdMembro` ASC),
  INDEX `IdGruppo` (`IdGruppo` ASC)
) ENGINE = InnoDB;

/*Creazione della tabella COMPETENZE*/
CREATE TABLE IF NOT EXISTS `TrovaLavoro`.`Competenze`
(
  `IdCompetenza` INT(8) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(40) NOT NULL,
  `Descrizione` VARCHAR(255) NOT NULL,

  PRIMARY KEY (`IdCompetenza`)
) ENGINE = InnoDB;

/*Creazione della tabella CURRICULUM*/
CREATE TABLE IF NOT EXISTS `TrovaLavoro`.`Curriculum`
(
  `IdCurriculum` INT (8) NOT NULL AUTO_INCREMENT,
  `Contenuto` VARCHAR (255) NOT NULL,

  `IdMembro` INT(8) NOT NULL,

  PRIMARY KEY (`IdCurriculum`),

  CONSTRAINT `IdMembroCurr`
     FOREIGN KEY(`IdMembro`)
     REFERENCES `TrovaLavoro`.`Membri`(`IdMembro`)
     ON DELETE CASCADE ON UPDATE CASCADE,

  INDEX `IdMembro` (`IdMembro` ASC)
) ENGINE = InnoDB;

/*Creazione della tabella PROFILO*/
CREATE TABLE IF NOT EXISTS `TrovaLavoro`.`Profili`
(
  `IdProfilo` INT(8) NOT NULL AUTO_INCREMENT,
  `DataIscrizione` DATE NOT NULL,
  `Biografia` VARCHAR(255) NOT NULL,
  `SitoWeb` VARCHAR(50) ,

  `IdCurriculum` INT(8) NOT NULL,
  `IdMembro` INT(8) NOT NULL,

  PRIMARY KEY(`IdProfilo`),

  CONSTRAINT `IdMembroProfilo`
     FOREIGN KEY(`IdMembro`)
     REFERENCES `TrovaLavoro`.`Membri`(`IdMembro`)
     ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `IdCurriculumProfilo`
    FOREIGN KEY(`IdCurriculum`)
    REFERENCES `TrovaLavoro`.`Curriculum`(`IdCurriculum`)
    ON DELETE CASCADE ON UPDATE CASCADE,

  INDEX `IdMembro` (`IdMembro` ASC),
  INDEX `IdCurriculum` (`IdMembro` ASC)
) ENGINE = InnoDB;

/*Creazione tabella di appoggio per profilo e skills*/
CREATE TABLE IF NOT EXISTS `TrovaLavoro`.`ProfiliCompetenze`
(
  `IdProfiliCompetenze` INT(8) NOT NULL,

  `IdProfilo` INT(8) NOT NULL,
  `IdCompetenza` INT(8) NOT NULL,

  PRIMARY KEY (`IdProfiliCompetenze`),

 CONSTRAINT `IdProfiloProfiliCompetenze`
    FOREIGN KEY(`IdProfilo`)
    REFERENCES `TrovaLavoro`.`Profili`(`IdProfilo`)
    ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `IdCompetenzaProfiliCompetenze`
    FOREIGN KEY(`IdCompetenza`)
    REFERENCES `TrovaLavoro`.`Competenze`(`IdCompetenza`)
    ON DELETE CASCADE ON UPDATE CASCADE,

  INDEX `IdProfilo` (`IdProfilo` ASC),
  INDEX `IdCompetenza` (`IdCompetenza` ASC)
) ENGINE = InnoDB;

/*Creazione della tabella PRIVATI*/
CREATE TABLE IF NOT EXISTS `TrovaLavoro`.`Privati`
(
  `IdPrivato` INT(8) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(40) NOT NULL,
  `Cognome` VARCHAR(40) NOT NULL,
  `DataDiNascita` DATE NOT NULL,
  `Sesso` INT(1) NOT NULL,

  `IdMembro` INT(8) NOT NULL,

  PRIMARY KEY (`IdPrivato`),

  CONSTRAINT `IdMembroPrivati`
    FOREIGN KEY(`IdMembro`)
    REFERENCES `TrovaLavoro`.`Membri`(`IdMembro`)
    ON DELETE CASCADE ON UPDATE CASCADE,

  INDEX `IdMembro`(`IdMembro` ASC)
)ENGINE = InnoDB;

/*Creazione della tabelle AZIENDE*/
CREATE TABLE IF NOT EXISTS `TrovaLavoro`.`Aziende`
(
  `IdAzienda` INT(8) NOT NULL AUTO_INCREMENT,
  `RagioneSociale` VARCHAR(80) NOT NULL,
  `PartitaIva` VARCHAR(20) NOT NULL,

  `IdMembro` INT(8) NOT NULL,

  PRIMARY KEY(`IdAzienda`),

  CONSTRAINT `IdMembroAziende`
    FOREIGN KEY(`IdMembro`)
    REFERENCES `TrovaLavoro`.`Membri`(`IdMembro`)
    ON DELETE CASCADE ON UPDATE CASCADE,

  INDEX `IdMembro`(`IdMembro` ASC)
) ENGINE = InnoDB;

/*Creazione della tabella OFFERTE*/
CREATE TABLE IF NOT EXISTS `TrovaLavoro`.`Offerte`
(
  `IdOfferta` INT(8) NOT NULL AUTO_INCREMENT,
  `Titolo` VARCHAR (30) NOT NULL,
  `Descrizione` VARCHAR(255) NOT NULL,

  `IdAzienda` INT(8) NOT NULL,

  PRIMARY KEY(`IdOfferta`),

  CONSTRAINT `IdAziendaOfferte`
    FOREIGN KEY(`IdAzienda`)
    REFERENCES `TrovaLavoro`.`Aziende`(`IdAzienda`)
    ON DELETE CASCADE ON UPDATE CASCADE,

  INDEX `IdAzienda`(`IdAzienda` ASC)
) ENGINE = InnoDB;

/*Creazione della tabella SEGNALAZIONI*/
CREATE TABLE IF NOT EXISTS `TrovaLavoro`.`Segnalazioni`
(
  `IdSegnalazione` INT(8) NOT NULL AUTO_INCREMENT,
  `Giudizio` INT(1) NOT NULL,
  `Commento` VARCHAR(255) NOT NULL,

  `IdSegnalatore` INT(8) NOT NULL,
  `IdSegnalato` INT(8) NOT NULL,

  PRIMARY KEY(`IdSegnalazione`),

  CONSTRAINT `IdSegnalatoreSegnalazioni`
    FOREIGN KEY(`IdSegnalatore`)
    REFERENCES `TrovaLavoro`.`Profili`(`IdProfilo`)
    ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `IdSegnalatoSegnalazioni`
    FOREIGN KEY(`IdSegnalato`)
    REFERENCES `TrovaLavoro`.`Profili`(`IdProfilo`)
    ON DELETE CASCADE ON UPDATE CASCADE,

  INDEX `IdSegnalatore`(`IdSegnalatore` ASC),
  INDEX `IdSegnalato`(`IdSegnalato` ASC)
) ENGINE = InnoDB;
