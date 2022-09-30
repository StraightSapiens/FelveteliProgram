CREATE TABLE Partnerek
(NÉV Varchar(90) PRIMARY KEY,
IRÁNYÍTÓSZÁM Int NOT NULL,
TELEPÜLÉS Varchar(90) NOT NULL,
UTCA Varchar(90) NOT NULL,
HÁZSZÁM Varchar(10) NOT NULL,
ENGEDMÉNY Int DEFAULT 0
)
CREATE TABLE Termékek
(CIKKSZÁM Int PRIMARY KEY,
MEGNEVEZÉS Varchar(90) NOT NULL,
ÁFA_KULCS Int NOT NULL,
ELADÁSI_EGYSÉGÁR Int NOT NULL
)
CREATE TABLE Tételek
(PARTNER Varchar(90) NOT NULL,
TERMÉK Varchar(90) NOT NULL,
MENNYISÉG Int NOT NULL,
EGYSÉGÁR Int NOT NULL,
ENGEDMÉNY Int DEFAULT 0,
MEGJEGYZÉS Varchar(256),
)
INSERT INTO Partnerek VALUES
('Teszt Partner 1', 1000, 'Teszt Település 1', 'Teszt Utca 1', '1/A', NULL),
('Teszt Partner 2', 1000, 'Teszt Település 1', 'Teszt Utca 2', '1/B', 10),
('Teszt Partner 3', 2000, 'Teszt Település 2', 'Teszt Utca 3', '2', 20),
('Teszt Partner 4', 3000, 'Teszt Település 3', 'Teszt Utca 4', '3', NULL),
('Teszt Partner 5', 4000, 'Teszt Település 4', 'Teszt Utca 5', '4/C', 30)
INSERT INTO Termékek VALUES
(1, 'Teszt Termék 1', 27, 1000),
(2, 'Teszt Termék 2', 25, 2000),
(3, 'Teszt Termék 3', 18, 5000),
(4, 'Teszt Termék 4', 27, 10000),
(5, 'Teszt Termék 5', 27, 30000)