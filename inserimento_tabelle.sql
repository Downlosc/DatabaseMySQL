
/*Inserimento valori tabella INDIRIZZI*/
INSERT INTO `TrovaLavoro`.`Indirizzi`(`Via`, `Citta`, `Provincia`, `Stato`, `CAP`) VALUES ('Via dell Arzilla 5b', 'Fano', 'PU', 'Italia', '61032');
INSERT INTO `TrovaLavoro`.`Indirizzi`(`Via`, `Citta`, `Provincia`, `Stato`, `CAP`) VALUES ('Viale 1 Maggio', 'Fano', 'PU', 'Italia', '61032');
INSERT INTO `TrovaLavoro`.`Indirizzi`(`Via`, `Citta`, `Provincia`, `Stato`, `CAP`) VALUES ('Via R.Sanzio', 'Pesaro', 'PU ', 'Italia', 'xxxxx');
INSERT INTO `TrovaLavoro`.`Indirizzi`(`Via`, `Citta`, `Provincia`, `Stato`, `CAP`) VALUES ('Via G. Da Fano', 'Fano', 'PU', 'Italia', '61032');
INSERT INTO `TrovaLavoro`.`Indirizzi`(`Via`, `Citta`, `Provincia`, `Stato`, `CAP`) VALUES ('Corso Umberto 1', 'Perugia', 'PG', 'Italia', 'xxxxx');
INSERT INTO `TrovaLavoro`.`Indirizzi`(`Via`, `Citta`, `Provincia`, `Stato`, `CAP`) VALUES ('Via V. Limuli', 'Palermo', 'PA', 'Italia', 'xxxxx');

/*Inserimento valori tabella MEMBRI*/
INSERT INTO `TrovaLavoro`.`Membri`(`Email`, `Password`, `IdIndirizzo`) VALUES ('oscarbene@hotmail.it', 'Password', '1');
INSERT INTO `TrovaLavoro`.`Membri`(`Email`, `Password`, `IdIndirizzo`) VALUES ('blabla@hotmail.it', 'Password123', '2');
INSERT INTO `TrovaLavoro`.`Membri`(`Email`, `Password`, `IdIndirizzo`) VALUES ('burro@hotmail.it', 'Passwordlunga', '3');
INSERT INTO `TrovaLavoro`.`Membri`(`Email`, `Password`, `IdIndirizzo`) VALUES ('rocky@hotmail.i', 'Password,1234', '4');
INSERT INTO `TrovaLavoro`.`Membri`(`Email`, `Password`, `IdIndirizzo`) VALUES ('oscarbene1993@hotmail.it', 'PasswordPassword', '5');
INSERT INTO `TrovaLavoro`.`Membri`(`Email`, `Password`, `IdIndirizzo`) VALUES ('oscarbene1993@hotmail.it', 'PasswordPassword', '6');

/*Inserimento valori tabella AZIENDA*/
INSERT INTO `TrovaLavoro`.`Aziende`(`RagioneSociale`, `PartitaIva`, `IdMembro`) VALUES ('Ciao s.r.l.', '12345678901', '1');
INSERT INTO `TrovaLavoro`.`Aziende`(`RagioneSociale`, `PartitaIva`, `IdMembro`) VALUES ('Prova s.r.l.', '10987654321', '2');
INSERT INTO `TrovaLavoro`.`Aziende`(`RagioneSociale`, `PartitaIva`, `IdMembro`) VALUES ('Ciao S.p.A.', '33334448983', '3');
INSERT INTO `TrovaLavoro`.`Aziende`(`RagioneSociale`, `PartitaIva`, `IdMembro`) VALUES ('Ciaoone s.r.l.', '33333333333', '5');
INSERT INTO `TrovaLavoro`.`Aziende`(`RagioneSociale`, `PartitaIva`, `IdMembro`) VALUES ('Provola s.r.l.', '44444444444', '4');
INSERT INTO `TrovaLavoro`.`Aziende`(`RagioneSociale`, `PartitaIva`, `IdMembro`) VALUES ('Azzura S.p.A.', '33346846101', '6');

/*Inserimento valori tabella OFFERTE*/
INSERT INTO `TrovaLavoro`.`Offerte`(`Titolo`, `Descrizione`, `IdMembro`) VALUES ('Cercasi programmatore', 'blablabla', `1`);
INSERT INTO `TrovaLavoro`.`Offerte`(`Titolo`, `Descrizione`, `IdMembro`) VALUES ('Cercasi chef', 'blablabla', `2`);
INSERT INTO `TrovaLavoro`.`Offerte`(`Titolo`, `Descrizione`, `IdMembro`) VALUES ('Cercasi infermiere', 'blablabla', `3`);
INSERT INTO `TrovaLavoro`.`Offerte`(`Titolo`, `Descrizione`, `IdMembro`) VALUES ('Cercasi manager', 'blablabla', `4`);
INSERT INTO `TrovaLavoro`.`Offerte`(`Titolo`, `Descrizione`, `IdMembro`) VALUES ('Cercasi commercialista', 'blablabla', `5`);
INSERT INTO `TrovaLavoro`.`Offerte`(`Titolo`, `Descrizione`, `IdMembro`) VALUES ('Cercasi casalinga', 'blablabla', `6`);

/*Inserimento valori tabella Privati*/
INSERT INTO `TrovaLavoro`.`Privati`(`Nome`, `Cognome`, `DataDiNascita`, `Sesso`, `IdMembro`) VALUES ('Mario', 'Rossi', '1993-01-01', '1', '1');
INSERT INTO `TrovaLavoro`.`Privati`(`Nome`, `Cognome`, `DataDiNascita`, `Sesso`, `IdMembro`) VALUES ('Massimiliano', 'Verdi', '1994-01-01', '1', '2');
INSERT INTO `TrovaLavoro`.`Privati`(`Nome`, `Cognome`, `DataDiNascita`, `Sesso`, `IdMembro`) VALUES ('Maurizio', 'Blu', '1984-01-01', '1', '3');
INSERT INTO `TrovaLavoro`.`Privati`(`Nome`, `Cognome`, `DataDiNascita`, `Sesso`, `IdMembro`) VALUES ('Maria', 'Gialli', '2004-01-01', '0', '4');
INSERT INTO `TrovaLavoro`.`Privati`(`Nome`, `Cognome`, `DataDiNascita`, `Sesso`, `IdMembro`) VALUES ('Paola', 'Bianchi', '1975-01-01', '0', '5');
INSERT INTO `TrovaLavoro`.`Privati`(`Nome`, `Cognome`, `DataDiNascita`, `Sesso`, `IdMembro`) VALUES ('Daniela', 'Neri', '1964-01-01', '0', '6');

/*Inserimento valori tabella Competenze*/
INSERT INTO `TrovaLavoro`.`Competenze`(`Nome`, `Descrizione`) VALUES ('PHP', 'blablabla');
INSERT INTO `TrovaLavoro`.`Competenze`(`Nome`, `Descrizione`) VALUES ('Java', 'blablabla');
INSERT INTO `TrovaLavoro`.`Competenze`(`Nome`, `Descrizione`) VALUES ('C++', 'blablabla');
INSERT INTO `TrovaLavoro`.`Competenze`(`Nome`, `Descrizione`) VALUES ('Inglese', 'blablabla');
INSERT INTO `TrovaLavoro`.`Competenze`(`Nome`, `Descrizione`) VALUES ('Cucina', 'blablabla');
INSERT INTO `TrovaLavoro`.`Competenze`(`Nome`, `Descrizione`) VALUES ('Film', 'blablabla');

/*Inserimento valori tabella Gruppi*/
INSERT INTO `TrovaLavoro`.`Gruppi`(`Nome`, `Descrizione`) VALUES ('Linux', 'blablabla');
INSERT INTO `TrovaLavoro`.`Gruppi`(`Nome`, `Descrizione`) VALUES ('Cucina Fusion', 'blablabla');
INSERT INTO `TrovaLavoro`.`Gruppi`(`Nome`, `Descrizione`) VALUES ('Management', 'blablabla');
INSERT INTO `TrovaLavoro`.`Gruppi`(`Nome`, `Descrizione`) VALUES ('Registi', 'blablabla');
INSERT INTO `TrovaLavoro`.`Gruppi`(`Nome`, `Descrizione`) VALUES ('Medici', 'blablabla');
INSERT INTO `TrovaLavoro`.`Gruppi`(`Nome`, `Descrizione`) VALUES ('Insegnamento', 'blablabla');

/*Inserimento valori tabella MembriGruppi*/
INSERT INTO `TrovaLavoro`.`MembriGruppi`(`IdMembro`, `IdGruppo`) VALUES ('1', '1');
INSERT INTO `TrovaLavoro`.`MembriGruppi`(`IdMembro`, `IdGruppo`) VALUES ('2', '2');
INSERT INTO `TrovaLavoro`.`MembriGruppi`(`IdMembro`, `IdGruppo`) VALUES ('3', '3');
INSERT INTO `TrovaLavoro`.`MembriGruppi`(`IdMembro`, `IdGruppo`) VALUES ('4', '4');
INSERT INTO `TrovaLavoro`.`MembriGruppi`(`IdMembro`, `IdGruppo`) VALUES ('5', '5');
INSERT INTO `TrovaLavoro`.`MembriGruppi`(`IdMembro`, `IdGruppo`) VALUES ('6', '6');

/*Inserimento valori tabella CURRICULUM*/
INSERT INTO `TrovaLavoro`.`Curriculum`(`Contenuto`,`IdMembro` ) VALUES ('blablabla','1');
INSERT INTO `TrovaLavoro`.`Curriculum`(`Contenuto`,`IdMembro` ) VALUES ('blablabla','2');
INSERT INTO `TrovaLavoro`.`Curriculum`(`Contenuto`,`IdMembro` ) VALUES ('blablabla','3');
INSERT INTO `TrovaLavoro`.`Curriculum`(`Contenuto`,`IdMembro` ) VALUES ('blablabla','4');
INSERT INTO `TrovaLavoro`.`Curriculum`(`Contenuto`,`IdMembro` ) VALUES ('blablabla','5');
INSERT INTO `TrovaLavoro`.`Curriculum`(`Contenuto`,`IdMembro` ) VALUES ('blablabla','6');

/*Inserimento valori tabella ProfiliCompetenze*/
INSERT INTO `TrovaLavoro`.`ProfiliCompetenze`(`IdProfilo`, `IdCompetenza`) VALUES ('1', '1');
INSERT INTO `TrovaLavoro`.`ProfiliCompetenze`(`IdProfilo`, `IdCompetenza`) VALUES ('2', '2');
INSERT INTO `TrovaLavoro`.`ProfiliCompetenze`(`IdProfilo`, `IdCompetenza`) VALUES ('3', '3');
INSERT INTO `TrovaLavoro`.`ProfiliCompetenze`(`IdProfilo`, `IdCompetenza`) VALUES ('4', '4');
INSERT INTO `TrovaLavoro`.`ProfiliCompetenze`(`IdProfilo`, `IdCompetenza`) VALUES ('5', '5');
INSERT INTO `TrovaLavoro`.`ProfiliCompetenze`(`IdProfilo`, `IdCompetenza`) VALUES ('6', '6');

/*Inserimento valori tabella PROFILI*/
INSERT INTO `TrovaLavoro`.`Profili`(`DataIscrizione`, `Biografia`, `SitoWeb`, `IdCurriculum`, `IdMembro`) VALUES (NOW(), 'blablabla', NULL, '1', '1');
INSERT INTO `TrovaLavoro`.`Profili`(`DataIscrizione`, `Biografia`, `SitoWeb`, `IdCurriculum`, `IdMembro`) VALUES (NOW(), 'blablabla', NULL, '2', '2');
INSERT INTO `TrovaLavoro`.`Profili`(`DataIscrizione`, `Biografia`, `SitoWeb`, `IdCurriculum`, `IdMembro`) VALUES (NOW(), 'blablabla', NULL, '3', '3');
INSERT INTO `TrovaLavoro`.`Profili`(`DataIscrizione`, `Biografia`, `SitoWeb`, `IdCurriculum`, `IdMembro`) VALUES (NOW(), 'blablabla', NULL, '4', '4');
INSERT INTO `TrovaLavoro`.`Profili`(`DataIscrizione`, `Biografia`, `SitoWeb`, `IdCurriculum`, `IdMembro`) VALUES (NOW(), 'blablabla', NULL, '5', '5');
INSERT INTO `TrovaLavoro`.`Profili`(`DataIscrizione`, `Biografia`, `SitoWeb`, `IdCurriculum`, `IdMembro`) VALUES (NOW(), 'blablabla', NULL, '6', '6');

/*Inderimento valori tabella SEGNALAZIONI*/
INSERT INTO `TrovaLavoro`.`Segnalazioni`(`Giudizio`, `Commento`, `IdSegnalatore`, `IdSegnalato`) VALUES ('0', 'blablabla','1', '6');
INSERT INTO `TrovaLavoro`.`Segnalazioni`(`Giudizio`, `Commento`, `IdSegnalatore`, `IdSegnalato`) VALUES ('0', 'blablabla','2', '5');
INSERT INTO `TrovaLavoro`.`Segnalazioni`(`Giudizio`, `Commento`, `IdSegnalatore`, `IdSegnalato`) VALUES ('1', 'blablabla','3', '4');
INSERT INTO `TrovaLavoro`.`Segnalazioni`(`Giudizio`, `Commento`, `IdSegnalatore`, `IdSegnalato`) VALUES ('1', 'blablabla','4', '3');
INSERT INTO `TrovaLavoro`.`Segnalazioni`(`Giudizio`, `Commento`, `IdSegnalatore`, `IdSegnalato`) VALUES ('2', 'blablabla','5', '2');
INSERT INTO `TrovaLavoro`.`Segnalazioni`(`Giudizio`, `Commento`, `IdSegnalatore`, `IdSegnalato`) VALUES ('2', 'blablabla','6', '1');
