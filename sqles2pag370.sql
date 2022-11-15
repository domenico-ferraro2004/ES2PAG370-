--DOMENICO FERRARO    5^E     15/11/22    ES2PAG370

--PRIMA TABELLA
CREATE TABLE ATTORE(
  codice INT NOT NULL PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  cognome VARCHAR(20) NOT NULL,
  eta INT NOT NULL,
  citta VARCHAR(40) NOT NULL
  );
  
  --PRIMO RECORD
  INSERT INTO ATTORE(codice,nome,cognome,eta,citta)
  VALUES(1,'Massimo','Troisi',55,'Napoli');
  
   --SECONDO RECORD
  INSERT INTO ATTORE(codice,nome,cognome,eta,citta)
  VALUES(2,'Christian','De Sica',65,'Roma');
  
   --TERZO RECORD
  INSERT INTO ATTORE(codice,nome,cognome,eta,citta)
  VALUES(3,'Zac','Efron',35,'Miami');
  
  	--QUARTO RECORD
  INSERT INTO ATTORE(codice,nome,cognome,eta,citta)
  VALUES(4,'Billy' ,'Joe',25,'Scampia');
  
  
  --SECONDA TABELLA
  CREATE TABLE FILM(
    codice INT PRIMARY KEY NOT NULL,
    titolo VARCHAR(60) NOT NULL,
    anno INT NOT NULL,
    durata INT NOT NULL
    );
    
 --PRIMO RECORD
  INSERT INTO FILM(codice,titolo,anno,durata)
  VALUES(1,'Una notte da leoni',2010,120);
  
   --SECONDO RECORD
  INSERT INTO FILM(codice,titolo,anno,durata)
  VALUES(2,'Wonder',2018,150);
  
   --TERZO RECORD
  INSERT INTO FILM(codice,titolo,anno,durata)
  VALUES(3,'Matrix',1999,136);
  
  	--QUARTO RECORD
  INSERT INTO FILM(codice,titolo,anno,durata)
  VALUES(4,'Ricomincio da tre',1981,108);
    

--TERZA TABELLA
CREATE TABLE PRODUTTORE(
  codice INT PRIMARY KEY NOT NULL,
  nome VARCHAR(20) NOT NULL,
  indirizzo VARCHAR(40) NOT NULL
  );
  
  --PRIMO RECORD
  INSERT INTO PRODUTTORE(codice,nome,indirizzo)
  VALUES(1,'Warner Bros','Via dei Pini');
  
   --SECONDO RECORD
  INSERT INTO PRODUTTORE(codice,nome,indirizzo)
  VALUES(2,'The Walt Disney Studios','Via enrico de nicola');
  
   --TERZO RECORD
  INSERT INTO PRODUTTORE(codice,nome,indirizzo)
  VALUES(3,'Sony Pictures Entertainment','Via XV Aprile');
  
  	--QUARTO RECORD
  INSERT INTO PRODUTTORE(codice,nome,indirizzo)
  VALUES(4,'Columbia Pictures','Via Ada Negri');


  -- stampa nome e il cognome degli attori nati a Roma;

SELECT nome, cognome FROM ATTORE 
WHERE citta = "Roma";

-- stampa il titolo dei film prodotti prima del 2000;

SELECT  DISTINCT titolo FROM FILM 
WHERE anno < 2000
ORDER BY anno DESC;
-- stampa titolo e l'anno di produzione dei film che hanno una durata non inferiore a 90 minuti;

SELECT DISTINCT titolo, anno FROM FILM 
WHERE durata >= 90
ORDER BY titolo ASC;

-- visualizzare l'elenco delle città in cui sono nati gli attori

SELECT  DISTINCT citta FROM ATTORE--usiamo distinct cosi non ripete due valori nella tabella
ORDER BY citta ASC;