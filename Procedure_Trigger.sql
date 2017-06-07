/* PROCEDURE */

/*1 Ricerca delle segnalazioni di una certa città e con un certo commento */
CREATE PROCEDURE ricercaSegnalazioni (IN citta VARCHAR(40), IN giudizio INT(1))
SELECT S.Giudizio, S.Commento, A.RagioneSociale,I.Citta, M.Email
FROM Segnalazioni AS S JOIN Profili AS P ON S.IdSegnalato = P.IdProfilo
JOIN Membri AS M ON P.IdMembro = M.IdMembro
JOIN Aziende AS A ON M.IdMembro = A.IdMembro
JOIN Indirizzi AS I ON M.IdIndirizzo = I.IdIndirizzo
WHERE I.Citta = citta AND S.Giudizio >= giudizio;

CALL ricercaSegnalazioni('Palermo', '1');

/*2 Ricerca delle aziende per nome*/
CREATE PROCEDURE ricercaIndirizzi(IN c VARCHAR(40))
SELECT * FROM Indirizzi WHERE Citta = c;

CALL ricercaIndirizzi('Fano');

/* Controllo che il campo nome sia almeno lungo 2 caratteri*/
DELIMITER //
CREATE TRIGGER controlla_nome BEFORE INSERT ON Privati
FOR EACH ROW
BEGIN
      IF LENGTH(NEW.Nome) < 2 THEN
          SET NEW.NOME = 'Unkown';
      END IF;
END; //
DELIMITER ;

/* Se l'età è minore di 16 --> errore*/
DELIMITER //
CREATE TRIGGER controlla_eta BEFORE INSERT ON Privati
FOR EACH ROW BEGIN
      IF DateDiff(NOW(), NEW.DataDiNascita) < 5840 THEN
          SIGNAL SQLSTATE '01000' SET MESSAGE_TEXT = 'You are too young for us!', MYSQL_ERRNO = 1000;
      END IF;
END//
DELIMITER ;

DELIMITER $$
CREATE TRIGGER calcola_eta
BEFORE INSERT ON Privati
FOR EACH ROW
BEGIN
    IF DATEDIFF(NOW(), NEW.DataDiNascita) < 5840 THEN /* 16 years old */
        SIGNAL SQLSTATE '45000' SET message_text = 'You are too young for us!';
    END IF;
END$$
DELIMITER ;
