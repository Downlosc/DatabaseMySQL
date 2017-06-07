/*1 Elenco di tutti i membri*/
SELECT * FROM Membri;

/*2 Elenco Nome e Cognome di tutti i membri privati di sesso maschile*/
SELECT Nome, Cognome FROM Privati WHERE Sesso = 1; /* Sesso 1 = maschio; */

/*3 Elenco di tutti gli Indirizzi di Roma*/
SELECT * FROM Indirizzi WHERE Citta = 'Roma';

/*4 Elenco degli indirizzi raggruppati per città*/
SELECT * FROM Indirizzi GROUP BY Citta;

/*5 Elenco delle competenze di tipo informatico*/
SELECT * FROM Competenze WHERE Nome IN ('PHP', 'C', 'C++', 'Java');

/*6 Elenco dei profili che hanno un sito web*/
SELECT * FROM Profili WHERE SitoWeb IS NOT NULL;

/*7 Elenco delle segnalazioni con giudizio buono*/
SELECT * FROM Segnalazioni
WHERE Giudizio = '1'; /* 0-> negativo 1-> buono 2-> ottimo*/

/*8 Elenco delle offerte contenenti nel titolo la parola "sviluppatore" */
SELECT * FROM Offerte
WHERE Titolo LIKE '%Sviluppatore%';

/*9 Elenco delle aziende di tipo S.p.A.*/
SELECT * FROM Aziende
WHERE RagioneSociale LIKE '%S.p.A.%';

/*10 Elenco di tutti i gruppi di Linux*/
SELECT * FROM Gruppi
WHERE Descrizione LIKE '%Linux%';

/*11 Elenco dei minorenni*/
SELECT * FROM Privati
WHERE DateDiff(NOW(), DataDiNascita) < 6574; /* 6574 è 18 anni in giorni*/

/*12 Elenco degli iscritti dell'ultima settimana*/
SELECT * FROM Profili
WHERE DateDiff(NOW(), DataIscrizione) < 7; /* 7 giorni settimana*/

/*13 Elenco campo indirizzi completo*/
SELECT M.Email, M.Password, I.Via, I.Citta, I.Provincia, I.Stato
FROM Membri AS M JOIN Indirizzi AS I ON M.IdIndirizzo = I.IdIndirizzo;

/*14 Elenco segnalazioni con informazioni relative ad azienda e citta*/
SELECT S.Giudizio, S.Commento, A.RagioneSociale,I.Citta, M.Email
FROM Segnalazioni AS S JOIN Profili AS P ON S.IdSegnalato = P.IdProfilo
JOIN Membri AS M ON P.IdMembro = M.IdMembro
JOIN Aziende AS A ON M.IdMembro = A.IdMembro
JOIN Indirizzi AS I ON M.IdIndirizzo = I.IdIndirizzo;

/*15 Elenco segnalazioni di Fano */
SELECT S.Giudizio, S.Commento, A.RagioneSociale,I.Citta, M.Email
FROM Segnalazioni AS S JOIN Profili AS P ON S.IdSegnalato = P.IdProfilo
JOIN Membri AS M ON P.IdMembro = M.IdMembro
JOIN Aziende AS A ON M.IdMembro = A.IdMembro
JOIN Indirizzi AS I ON M.IdIndirizzo = I.IdIndirizzo
WHERE I.Citta = 'Fano';

/*16 Elenco segnalazioni di Perugia con commento positivo*/
SELECT S.Giudizio, S.Commento, A.RagioneSociale,I.Citta, M.Email
FROM Segnalazioni AS S JOIN Profili AS P ON S.IdSegnalato = P.IdProfilo
JOIN Membri AS M ON P.IdMembro = M.IdMembro
JOIN Aziende AS A ON M.IdMembro = A.IdMembro
JOIN Indirizzi AS I ON M.IdIndirizzo = I.IdIndirizzo
WHERE I.Citta = 'Perugia' AND S.Giudizio >= '1';

/*17 Elenco membri che abitano a Palermo*/
SELECT M.Email, M.Password, I.Via, I.Citta, I.Provincia, I.Stato
FROM Membri AS M JOIN Indirizzi AS I ON M.IdIndirizzo = I.IdIndirizzo
WHERE I.Citta = 'Palermo';

/*18 Elenco segnalazioni fatte da privati donne di Fano*/
SELECT S.Giudizio, S.Commento, PR.Nome,PR.Cognome,I.Citta, M.Email
FROM Segnalazioni AS S JOIN Profili AS P ON S.IdSegnalato = P.IdProfilo
JOIN Membri AS M ON P.IdMembro = M.IdMembro
JOIN Privati AS PR ON M.IdMembro = PR.IdMembro
JOIN Indirizzi AS I ON M.IdIndirizzo = I.IdIndirizzo
WHERE I.Citta = 'Fano' AND PR.Sesso = '0';

/*19 Elenco segnalazioni fatte da privati maschi di Perugia con giudizio ottimo*/
SELECT S.Giudizio, S.Commento, PR.Nome,PR.Cognome,I.Citta, M.Email
FROM Segnalazioni AS S JOIN Profili AS P ON S.IdSegnalato = P.IdProfilo
JOIN Membri AS M ON P.IdMembro = M.IdMembro
JOIN Privati AS PR ON M.IdMembro = PR.IdMembro
JOIN Indirizzi AS I ON M.IdIndirizzo = I.IdIndirizzo
WHERE I.Citta = 'Perugia' AND PR.Sesso = '1' AND S.Giudizio = '2';

/*20 Elenco degli iscritti dell'ultimo mese che hanno 25 anni*/
SELECT M.Email, P.Biografia, PR.Nome, PR.Cognome, PR.DataDiNascita, DateDiff(NOW(),PR.DataDiNascita)/365 AS YEARS, P.DataIscrizione
FROM Membri AS M
JOIN Profili AS P ON M.IdMembro = P.IdMembro
JOIN Privati AS PR ON M.IdMembro = PR.IdMembro
WHERE DateDiff(NOW(),PR.DataDiNascita)/365 >= 25 AND
DateDiff(NOW(), P.DataIscrizione) < 30;
