USE foy3
CREATE TABLE birimler (
    birim_id INT PRIMARY KEY,
    birim_ad CHAR(25) NOT NULL
);
CREATE TABLE calisanlar (
    calisan_id INT PRIMARY KEY,
    ad CHAR(25) NOT NULL,
    soyad CHAR(25) NOT NULL,
    maas INT,
    katilmaTarihi DATETIME,
    calisan_birim_id INT,
    FOREIGN KEY (calisan_birim_id) REFERENCES birimler(birim_id) ON DELETE SET NULL
);
CREATE TABLE unvan (
    unvan_calisan_id INT,
    unvan_calisan CHAR(25) NOT NULL,
    unvan_tarih DATETIME,
    PRIMARY KEY (unvan_calisan_id),
    FOREIGN KEY (unvan_calisan_id) REFERENCES calisanlar(calisan_id) ON DELETE CASCADE
);

CREATE TABLE ikramiye (
    ikramiye_calisan_id INT,
    ikramiye_ucret INT,
    ikramiye_tarih DATETIME,
    PRIMARY KEY (ikramiye_calisan_id, ikramiye_tarih),
    FOREIGN KEY (ikramiye_calisan_id) REFERENCES calisanlar(calisan_id) ON DELETE CASCADE
);
