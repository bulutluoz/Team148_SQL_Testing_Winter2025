
use Team148;

/*
================================== DELETE ============================================
DELETE FROM table_name komutu tablodaki tum recordlari siler.

Eger tum kayitlar silindikten sonra tabloyu gormek isterseniz size sadece bos bir tablo
gosterir. 

DELETE komutu sadece datalari siler, tabloyu silmez.
=======================================================================================
*/

-- DELETE FROM tablo_adi;  Tablonun tum icerigini siler.
-- Bu komut bir DML komutudur. Dolayisiyla devaminda WHERE gibi cumlecikler
-- kullanilabilir.

/*----------SYNTAX---------
	DELETE FROM tablo_adi
    WHERE field = veri;
*/

--    DELETE FROM satis_raporu;  satis_raporu tablosundaki tum verileri siler.

SELECT * FROM satis_raporu;

--    SAVEPOINT ABC; -- Verileri database'e yedekler..

--    ROLLBACK TO  ABC;  Yedeklenen verilerimizi geri getirir.

-- Bilgileri geri getirirken sikinti yasamamak icin 
-- ayarlar sql execution auto commit tiki kaldirin ve 
-- mySQL workbench'i kapatip acin.


CREATE TABLE kursiyer
(
id char(3),
isim varchar(50),
veli_isim varchar(50),
yazili_notu int,
CONSTRAINT kursiyer_pk
PRIMARY KEY (id)
);

INSERT INTO kursiyer VALUES(123, 'Ali Can', 'Hasan',75); 
INSERT INTO kursiyer VALUES(124, 'Merve Gul', 'Ayse',85); 
INSERT INTO kursiyer VALUES(125, 'Kemal Yasa', 'Ali',85);

SELECT * FROM kursiyer;

SAVEPOINT sabah;

-- isminde a harfi olan ogrencilerin yazili notunu 5 artirin























