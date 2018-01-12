DROP TABLE IF EXISTS eksamen;
DROP TABLE IF EXISTS fag;
DROP TABLE IF EXISTS student;

CREATE TABLE student
(
  snr     INT(4),
  navn    VARCHAR(12),
  adresse VARCHAR(12),
  fdato   DATE,
  CONSTRAINT student_snr_pk PRIMARY KEY (snr)
) ENGINE = InnoDB;

CREATE TABLE fag
(
  fnr      INT(4),
  fnavn    VARCHAR(10),
  poeng    DECIMAL(3,1),
  CONSTRAINT fag_fnr_pk PRIMARY KEY (fnr)
) ENGINE = InnoDB;

CREATE TABLE eksamen
(
  snr      INT(4),
  fnr      INT(4),
  dato     DATE,
  karakter SMALLINT NOT NULL,
  CONSTRAINT eksamen_snr_fnr_dato_pk PRIMARY KEY (snr, fnr, dato),
  CONSTRAINT eksamen_snr_fk FOREIGN KEY (snr) REFERENCES student (snr),
  CONSTRAINT eksamen_fnr_fk FOREIGN KEY (fnr) REFERENCES fag (fnr)
) ENGINE = InnoDB;

START TRANSACTION;

INSERT INTO student VALUES(1, 'EVA',   'AVEIEN 1', STR_TO_DATE('01-01-1993','%e-%c-%Y'));
INSERT INTO student VALUES(3, 'OLA',   NULL,       STR_TO_DATE('10-02-1995','%e-%c-%Y'));
INSERT INTO student VALUES(5, 'KARI',  'BVEIEN 2', STR_TO_DATE('05-06-1988','%e-%c-%Y'));
INSERT INTO student VALUES(7, 'PER',   'AVEIEN 4', STR_TO_DATE('02-10-1992','%e-%c-%Y'));
INSERT INTO student VALUES(9, 'GURI',  'CVEIEN 5', STR_TO_DATE('15-11-1992','%e-%c-%Y'));
INSERT INTO student VALUES(10, 'OLAV', 'CVEIEN 5', STR_TO_DATE('15-10-1991','%e-%c-%Y'));

INSERT INTO fag VALUES(1, 'PROG',  7.5);
INSERT INTO fag VALUES(2, 'SYS',  15.0);
INSERT INTO fag VALUES(3, 'DB I',  7.5);
INSERT INTO fag VALUES(4, 'MAT',   7.5);
INSERT INTO fag VALUES(5, 'DB II', 7.5);

INSERT INTO eksamen VALUES(1, 1, STR_TO_DATE('20-05-2013','%e-%c-%Y'), 4);
INSERT INTO eksamen VALUES(3, 1, STR_TO_DATE('20-05-2013','%e-%c-%Y'), 2);
INSERT INTO eksamen VALUES(7, 1, STR_TO_DATE('20-05-2013','%e-%c-%Y'), 1);
INSERT INTO eksamen VALUES(9, 1, STR_TO_DATE('20-05-2013','%e-%c-%Y'), 6);

INSERT INTO eksamen VALUES(1, 2, STR_TO_DATE('10-12-2013','%e-%c-%Y'), 3);
INSERT INTO eksamen VALUES(5, 2, STR_TO_DATE('10-12-2013','%e-%c-%Y'), 2);
INSERT INTO eksamen VALUES(7, 2, STR_TO_DATE('10-12-2013','%e-%c-%Y'), 4);

INSERT INTO eksamen VALUES(3, 3, STR_TO_DATE('01-06-2014','%e-%c-%Y'), 3);
INSERT INTO eksamen VALUES(5, 3, STR_TO_DATE('01-06-2014','%e-%c-%Y'), 6);
INSERT INTO eksamen VALUES(7, 3, STR_TO_DATE('01-06-2014','%e-%c-%Y'), 2);
INSERT INTO eksamen VALUES(9, 3, STR_TO_DATE('01-06-2014','%e-%c-%Y'), 3);

INSERT INTO eksamen VALUES(1, 4, STR_TO_DATE('05-12-2014','%e-%c-%Y'), 5);
INSERT INTO eksamen VALUES(7, 4, STR_TO_DATE('05-12-2014','%e-%c-%Y'), 1);
INSERT INTO eksamen VALUES(9, 4, STR_TO_DATE('05-12-2014','%e-%c-%Y'), 2);

INSERT INTO eksamen VALUES(5, 1, STR_TO_DATE('01-12-2014','%e-%c-%Y'), 2);
INSERT INTO eksamen VALUES(9, 1, STR_TO_DATE('01-12-2014','%e-%c-%Y'), 3);

INSERT INTO eksamen VALUES(1, 3, STR_TO_DATE('25-08-2014','%e-%c-%Y'), 3);
INSERT INTO eksamen VALUES(3, 3, STR_TO_DATE('25-08-2014','%e-%c-%Y'), 2);
INSERT INTO eksamen VALUES(5, 3, STR_TO_DATE('25-08-2014','%e-%c-%Y'), 5);

INSERT INTO eksamen VALUES(1, 1, STR_TO_DATE('10-06-2015','%e-%c-%Y'), 3);
INSERT INTO eksamen VALUES(1, 1, STR_TO_DATE('12-12-2015','%e-%c-%Y'), 1);
INSERT INTO eksamen VALUES(1, 1, STR_TO_DATE('08-08-2015','%e-%c-%Y'), 1);

INSERT INTO eksamen VALUES(3, 2, STR_TO_DATE('10-12-2015','%e-%c-%Y'), 2);
INSERT INTO eksamen VALUES(3, 2, STR_TO_DATE('12-05-2015','%e-%c-%Y'), 4);

COMMIT;

hei 
dette er en test