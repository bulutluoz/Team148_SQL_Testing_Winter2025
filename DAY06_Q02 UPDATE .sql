
use Team148;

/* 
====================================== UPDATE ========================================
Tabloda varolan herhangi bir record'a ait verinin degistirilmesi icin kullanilir.

-----Syntax-----
UPDATE table_name
SET field1=''
WHERE condition;

UPDATE islemlerinin yapilabilmesi icin Ayarlar -> SQL Editor -> "Safe Updates" 
check box'indaki tik isaretini kaldirip kaydetmemiz gerekiyor, 
sonrasinda MySQL'i kapatip tekrar acmaliyiz.
========================================================================================
*/

/*
--------------------------------------------------------------------------------------
1) Bir firmalar tablosu olusturun icinde id,
isim ve iletisim_isim field'lari olsun. 
id ve isim field'lari PRIMARY KEY olsun.
---------------------------------------------------------------------------------------
*/

CREATE TABLE firmalar
(
id INT,
isim VARCHAR(30),
iletisim_isim VARCHAR(30),
CONSTRAINT id_isim_pk
PRIMARY KEY(id,isim)
);



/*
--------------------------------------------------------------------------------------
2) Firmalar tablosunun icine 3 kayit ekleyin :
---------------------------------------------------------------------------------------
*/

INSERT INTO firmalar VALUES
(1, 'ACB', 'Ali Can'), 
(2, 'RDB', 'Veli Gul'), 
(3, 'KMN', 'Ayse Gulmez');


SELECT * FROM firmalar;

-- Id'si 3 olan firmanin ismini 'KRM' olarak guncelleyiniz

UPDATE firmalar
SET isim = 'KRM'
WHERE id = 3;

/*
	Test yapacak olsak
    expected :  id'si 3 olan sirket ismi => KRM
    actual degeri alip expected ile karsilastirabiliriz
    asagidaki kod ile actual degeri alip sonucu test edebiliriz
*/

SELECT isim
FROM firmalar
WHERE id = 3;


-- Iletisim ismi Veli Gul olan firmanin id'sini 4, ismini FDS olarak guncelleyiniz.

UPDATE firmalar
SET id = 4 , isim = 'FDS'
WHERE iletisim_isim = 'Veli Gul';

-- Ismi ACB olan firmanin iletisim ismini 'Osman Can' olarak guncelleyiniz.

UPDATE firmalar
SET iletisim_isim = 'Osman Can'
WHERE isim = 'ACB';


/*
*******************************************************************
 							PK&FK UPDATE
*******************************************************************
	Tek basina kullandigimiz bir tabloda update islemi cok kolay
    
    EGER relational bir database'de update yapmak isterseniz
    daha dikkatli olmamiz gerekir
    
    CUNKU PRIMARY KEY ve FOREIGN KEY olarak kullanilan sutunlarda
    daha dikkatli olmaliyiz
    
    dikkat edecegimiz ana kural:
    PRIMARY KEY sutununda olmayan HIC BIR DATA
    FOREIGN KEY sutununda kullanilamaz
*/

-- id, isim ve irtibat fieldlarinin oldugu bir tedarik tablosu olusturun.
-- id field'ini Primary Key yapin.

CREATE TABLE tedarik
(
	id INT,
	isim VARCHAR(30), 
	irtibat VARCHAR(30),
	CONSTRAINT id_pk 
	PRIMARY KEY(id)
);

-- tedarikci_id, urun_id, urun_ismi, musteri_isim fieldlari olan urun
-- tablosu olusturun 
-- Bu tablodaki tedarikci_id fieldinin tedarik tablosunun PK si ile  
-- Foreign Key baglantisini kurun


CREATE TABLE urun
(
	tedarikci_id INT, 
	urun_id INT,
	urun_ismi VARCHAR(30),
	musteri_isim VARCHAR(30),
	CONSTRAINT td_id_fk 
	FOREIGN KEY(tedarikci_id)
	REFERENCES tedarik(id)
);

SELECT * FROM tedarik;
SELECT * FROM urun;

INSERT INTO tedarik VALUES(100, 'IBM', 'Ali Can'); 
INSERT INTO tedarik VALUES(101, 'APPLE', 'Merve Temiz'); 
INSERT INTO tedarik VALUES(102, 'SAMSUNG', 'Kemal Can'); 
INSERT INTO tedarik VALUES(103, 'LG', 'Ali Can');


INSERT INTO urun VALUES(100, 1001,'Laptop', 'Suleyman'); 
INSERT INTO urun VALUES(101, 1002,'iPad', 'Fatma'); 
INSERT INTO urun VALUES(102, 1003,'TV', 'Ramazan'); 
INSERT INTO urun VALUES(103, 1004,'Phone', 'Ali Can');


-- 'LG' firmasinda calisan 'Ali Can'in ismini 'Veli Can' 
-- olarak degistiriniz.

UPDATE tedarik
SET irtibat = 'Veli Can'
WHERE isim = 'LG' ;


































