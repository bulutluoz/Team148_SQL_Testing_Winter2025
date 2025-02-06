
CREATE TABLE maaslar(
id CHAR(5),
isim VARCHAR(50),
maas INT
);

INSERT INTO maaslar VALUES('10001','Ahmet Aslan',7000);
INSERT INTO maaslar VALUES('10002','Mehmet Yilmaz',12000);
INSERT INTO maaslar VALUES('10003','Meryem',7215);
INSERT INTO maaslar VALUES('10004','Veli Han',5000);
INSERT INTO maaslar VALUES('10005','Mustafa Ali',5500);
INSERT INTO maaslar VALUES('10006','Ayse Can',5600);
INSERT INTO maaslar VALUES('10010','Ayse',4700);
INSERT INTO maaslar VALUES('10009','Ayse Cemile',4000);
INSERT INTO maaslar VALUES('10008','Ayse Fatma',4300);
INSERT INTO maaslar VALUES('10007','Beyza Ayse',7700);
INSERT INTO maaslar VALUES('10011','Yeliz Alina',12700);

SELECT * FROM maaslar;

-- ismi Ayse olan kisinin maasini yazdirin

SELECT maas FROM maaslar
WHERE isim = 'Ayse';

/*
===============================================
		LIKE OPERATORU 
===============================================
*/

/*
1- "LIKE" operatörü, belirli bir patern veya düzene uyan verileri bulmak için kullanılır.
2- Genellikle "%" (yüzde) ve "_" (alt çizgi) olmak üzere iki joker karakterle kullanılır.
3- "%" karakteri, sıfır veya daha fazla karakterin yerini tutar.
4- "_" karakteri ise tek bir karakterin yerini tutar.

Örneğin, "LIKE '%son'" ifadesi "son" ile biten tüm metin değerlerini bulur 
(örn. "Jason", "Wilson").
*/


/*
*************** SYNTAX ***************
SELECT sütun_adları
FROM tablo_adı
WHERE sütun_adı 
LIKE 'patern';
*/

/*  
=============================  SORU-1 =============================
    Personel tablosundan dort harfli personeli listeleyiniz.
===================================================================
 */
 
 SELECT * FROM maaslar
 WHERE isim LIKE  '____';
 
 
 /*  
=============================  SORU-1 =============================
    Personel tablosundan isminde a bulunan personeli listeleyiniz.
===================================================================
 */
 
 SELECT * FROM maaslar
 WHERE isim LIKE '%a%';
 
 
  /*  
=============================  SORU-1 =============================
    Personel tablosundan ismi Ayse olan personeli listeleyiniz.
===================================================================
 */

SELECT * FROM maaslar
WHERE isim LIKE '%Ayse%'; 


/*  
=============================  SORU-3 =============================
    Personel tablosundan ismi 'a' ile biten personeli listeleyiniz.
===================================================================
 */
 
SELECT * FROM maaslar
WHERE isim LIKE '%A';


/*  
=============================  SORU-4 =============================
    Personel tablosundan isminin 2. harfi 'e' olan personeli listeleyiniz
===================================================================
 */ 
 
SELECT * FROM maaslar
WHERE isim LIKE '_e%';
 
 
 
 














