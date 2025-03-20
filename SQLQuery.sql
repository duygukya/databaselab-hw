USE foy3;

-- MADDE 3
SELECT 
    c.ad, 
    c.soyad, 
    c.maas
FROM 
    calisanlar c
JOIN 
    birimler b
ON 
    c.calisan_birim_id = b.birim_id
WHERE 
    b.birim_ad IN ('Yazılım', 'Donanım');

-- MADDE 4
SELECT 
    ad, 
    soyad, 
    maas
FROM 
    calisanlar
WHERE 
    maas = (SELECT MAX(maas) FROM calisanlar);

-- MADDE 5
SELECT 
    b.birim_ad, 
    COUNT(c.calisan_id) AS calisan_sayisi
FROM 
    birimler b
LEFT JOIN 
    calisanlar c
ON 
    b.birim_id = c.calisan_birim_id
GROUP BY 
    b.birim_ad;

--MADDE 6
SELECT 
    unvan_calisan, 
    COUNT(unvan_calisan_id) AS calisan_sayisi
FROM 
    unvan
GROUP BY 
    unvan_calisan
HAVING 
    COUNT(unvan_calisan_id) > 1;

-- MADDE 7
SELECT 
    ad, 
    soyad, 
    maas
FROM 
    calisanlar
WHERE 
    maas BETWEEN 50000 AND 100000;

-- MADDE 8
SELECT 
    c.ad, 
    c.soyad, 
    b.birim_ad, 
    u.unvan_calisan, 
    i.ikramiye_ucret
FROM 
    ikramiye i
JOIN 
    calisanlar c ON i.ikramiye_calisan_id = c.calisan_id
JOIN 
    birimler b ON c.calisan_birim_id = b.birim_id
JOIN 
    unvan u ON c.calisan_id = u.unvan_calisan_id;

--MADDE 9
SELECT 
    c.ad, 
    c.soyad, 
    u.unvan_calisan
FROM 
    unvan u
JOIN 
    calisanlar c ON u.unvan_calisan_id = c.calisan_id
WHERE 
    u.unvan_calisan IN ('Yönetici', 'Müdür');

-- MADDE10
SELECT 
    c.ad, 
    c.soyad, 
    c.maas, 
    b.birim_ad
FROM 
    calisanlar c
JOIN 
    birimler b ON c.calisan_birim_id = b.birim_id
WHERE 
    c.maas = (
        SELECT MAX(c2.maas)
        FROM calisanlar c2
        WHERE c2.calisan_birim_id = c.calisan_birim_id
    );
