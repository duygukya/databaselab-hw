USE foy3;
INSERT INTO Birimler (birim_id, birim_ad) VALUES
(1, 'Yazılım'),
(2, 'Donanım'),
(3, 'Güvenlik');

INSERT INTO Calisanlar (calisan_id, ad, soyad, maas, katilmaTarihi, calisan_birim_id) VALUES
(1, 'İsmail', 'İşeri', 100000, '2014-02-20 00:00:00.000', 1),
(2, 'Hami', 'Satılmış', 80000, '2014-06-11 00:00:00.000', 1),
(3, 'Durmuş', 'Şahin', 300000, '2014-02-20 00:00:00.000', 2),
(4, 'Kağan', 'Yazar', 500000, '2014-02-20 00:00:00.000', 3),
(5, 'Meryem', 'Soydaldı', 500000, '2014-06-11 00:00:00.000', 3),
(6, 'Duygu', 'Akşehir', 200000, '2014-06-11 00:00:00.000', 2),
(7, 'Kübra', 'Seyhan', 75000, '2014-01-20 00:00:00.000', 1),
(8, 'Gülcan', 'Yıldız', 90000, '2014-04-11 00:00:00.000', 3);

INSERT INTO İkramiye (ikramiye_calisan_id, ikramiye_ucret, ikramiye_tarih) VALUES
(1, 5000, '2016-02-20 00:00:00.000'),
(2, 3000, '2016-06-11 00:00:00.000'),
(3, 4000, '2016-02-20 00:00:00.000'),
(1, 4500, '2016-02-20 00:00:00.000'),
(2, 3500, '2016-06-11 00:00:00.000')

INSERT INTO unvan (unvan_calisan_id, unvan_calisan, unvan_tarih) VALUES
(1, 'Yönetici', CAST('2016-02-20 00:00:00.000' AS DATETIME)),
(2, 'Personel', CAST('2016-06-11 00:00:00.000' AS DATETIME)),
(8, 'Personel', CAST('2016-06-11 00:00:00.000' AS DATETIME)),
(5, 'Müdür', CAST('2016-06-11 00:00:00.000' AS DATETIME)),
(4, 'Yönetici Yardımcısı', CAST('2016-06-11 00:00:00.000' AS DATETIME)),
(7, 'Personel', CAST('2016-06-11 00:00:00.000' AS DATETIME)),
(6, 'Takım Lideri', CAST('2016-06-11 00:00:00.000' AS DATETIME)),
(3, 'Takım Lideri', CAST('2016-06-11 00:00:00.000' AS DATETIME));
