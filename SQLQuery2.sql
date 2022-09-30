CREATE TABLE Partnerek
(N�V Varchar(90) PRIMARY KEY,
IR�NY�T�SZ�M Int NOT NULL,
TELEP�L�S Varchar(90) NOT NULL,
UTCA Varchar(90) NOT NULL,
H�ZSZ�M Varchar(10) NOT NULL,
ENGEDM�NY Int DEFAULT 0
)
CREATE TABLE Term�kek
(CIKKSZ�M Int PRIMARY KEY,
MEGNEVEZ�S Varchar(90) NOT NULL,
�FA_KULCS Int NOT NULL,
ELAD�SI_EGYS�G�R Int NOT NULL
)
CREATE TABLE T�telek
(PARTNER Varchar(90) NOT NULL,
TERM�K Varchar(90) NOT NULL,
MENNYIS�G Int NOT NULL,
EGYS�G�R Int NOT NULL,
ENGEDM�NY Int DEFAULT 0,
MEGJEGYZ�S Varchar(256),
)
INSERT INTO Partnerek VALUES
('Teszt Partner 1', 1000, 'Teszt Telep�l�s 1', 'Teszt Utca 1', '1/A', NULL),
('Teszt Partner 2', 1000, 'Teszt Telep�l�s 1', 'Teszt Utca 2', '1/B', 10),
('Teszt Partner 3', 2000, 'Teszt Telep�l�s 2', 'Teszt Utca 3', '2', 20),
('Teszt Partner 4', 3000, 'Teszt Telep�l�s 3', 'Teszt Utca 4', '3', NULL),
('Teszt Partner 5', 4000, 'Teszt Telep�l�s 4', 'Teszt Utca 5', '4/C', 30)
INSERT INTO Term�kek VALUES
(1, 'Teszt Term�k 1', 27, 1000),
(2, 'Teszt Term�k 2', 25, 2000),
(3, 'Teszt Term�k 3', 18, 5000),
(4, 'Teszt Term�k 4', 27, 10000),
(5, 'Teszt Term�k 5', 27, 30000)