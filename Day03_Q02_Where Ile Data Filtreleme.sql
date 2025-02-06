

-- kisiler tablosunu goruntuleyin
SELECT * FROM kisiler;

-- kisiler tablosundan id kolonunu silin
ALTER TABLE kisiler DROP COLUMN id;

/*  
========================  SORU-1 ========================
 Kisiler tablosundan isim ve soy isim bilgilerini listeleyiniz.
=========================================================
 */
 
 SELECT isim,soyisim FROM kisiler;
 
 /*
 ===============================================
           WHERE ile Filtreleme
 ===============================================
 */
 
/*
 WHERE koşulu, SQL sorgularında belirli kriterlere göre verileri filtrelemek
 için kullanılır. 
 WHERE ile birlikte karşılaştırma ve mantıksal operatörler,
 daha spesifik ve dinamik sorgular oluşturmak için kullanılabilir.
*/

/*
*************** SYNTAX ***************
SELECT * FROM tablo_adı WHERE sütun = “istenen değer”;
*/

/*  
========================  SORU-3 ========================
 Kisiler tablosundaki sehir= antalya olan kisileri listeleyiniz.
=========================================================
 */
 
 SELECT * FROM kisiler
 WHERE sehir = 'ANTALYA';
 
  /*  
 ========================  SORU-4 ========================
    Kisiler tablosundaki yasi 22 olan kisileri listeleyiniz.
 =========================================================
 */
 
 SELECT * FROM kisiler
 WHERE yas = 22;
 
  /*  
 ========================  SORU-5 ========================
    Kisiler tablosundaki sehri Ankara olanlarin yas, isim ve soyisim
    bilgilerini listeleyiniz.
 =========================================================
 */
 
 SELECT yas,isim,soyisim FROM kisiler
 WHERE sehir = 'Ankara';
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 