USE foy3
CREATE TABLE Birimler (
birim_id INT  PRIMARY KEY,
birim_ad CHAR(25) NOT NULL
)

CREATE TABLE Calisanlar(
calisan_id INT PRIMARY KEY,
ad CHAR(25) NOT NULL,
soyad CHAR(25) NOT NULL,
maas INT ,
katilmaTarihi DATETIME,
calisan_birim_id INT,
FOREIGN KEY (calisan_birim_id) REFERENCES Birimler(birim_id) ON DELETE SET NULL
)

CREATE TABLE İkramiye (
ikramiye_calisan_id INT ,
ikramiye_ucret INT,
ikramiye_tarih DATETIME,
FOREIGN KEY (ikramiye_calisan_id) REFERENCES Calisanlar(calisan_id) ON DELETE CASCADE
)

CREATE TABLE Unvan(
unvan_calisan_id INT,
unvan_calisan CHAR(25) NOT NULL,
unvan_tarih DATETIME,
FOREIGN KEY (unvan_calisan_id) REFERENCES Calisanlar(calisan_id) ON DELETE CASCADE 
)
