
use Team148;

/*
===============================================
		  TABLOYA VERI GIRISI - INSERT
===============================================
*/

/*
-------------------- NOT -------------------------
   Degerleri girerken dikkat edilmesi gerekenler;
1- Tabloyu olustururken hangi data type belirlediysek o
   datatype cinsinden veri girisi yapmaliyiz
2- Metin ifadeleri 'tek tirnak' icinde yaziyoruz.
3- DATE data type'da 'tek tirnak' icinde yazilir.
4- MySQL'in default tarih formati YYYY-MM-DD seklindedir.
5- Eger kayit olustururken, tablodaki tum sutunlara deger girilecekse 
   sutun isimlerini tek tek yazmaya gerek olmadan degerleri girebiliriz
   ancak tum sutunlara degil belirli sutunlara giris yapacaksak
   hangi sutunlara giris yapacagimizi belirtmemiz gerekir.
--------------------------------------------------
*/

/*
*************** SYNTAX ***************
INSERT INTO table_name (columns)
	VALUES (
	std_id ,           
	std_name ,     
	std_age 				  
	);
*/

-- kitaplar tablosundaki her seyi goruntuleyin

SELECT * FROM kitaplar;

-- kitaplar tablosuna tum sutunlara deger girerek bir kayit ekleyelim

INSERT INTO kitaplar() 
VALUES (1,'Savaş ve Barış',	'Lev Tolstoy',	1869,	'Tarihi');

-- kitaplar tablosundaki her seyi yeniden goruntuleyin
-- SQL'de bir komutu calistirmak icin yeniden yazmak SART DEGILDIR
-- daha once yazdigimiz bir komutu secip calistirabiliriz


/*
	Query sayfasindaki komutlar, database'den bagimsizdir
    Bu komutlar HER CALISTIGINDA kendisine verilen gorevi yeniden yapar
    Query calisirken daha once Database'e kaydedilip kaydedilmemesine bakmaz
    ornegin 42.satirdaki kayit ekleme komutunu 2 kere tekrar calistiralim
*/

INSERT INTO kitaplar() 
VALUES (1,'Savaş ve Barış',	'Lev Tolstoy',	1869,	'Tarihi');

-- Eger tablo ile ilgili kitap_id UNIQUE olsun veya 
-- kitap_adi NULL OLMASIN gibi belirli sartlar koymak isterseniz
-- tablo olusturulurken bu sinirlamalari belirtmeliyiz


-- kitaplar tablosuna id'si 11 ve kitap_ismi 'Araba Sevdasi' olan bir kitap ekleyin

INSERT INTO kitaplar(kitap_id,kitap_adi) 
VALUES (11,'Araba Sevdasi');

SELECT * FROM kitaplar;

/*  
========================  SORU-2 ========================
 Kitaplar tablosuna null deger olmadan coklu veri girisi saglayiniz.
=========================================================
 */
 
INSERT INTO kitaplar ()
VALUES  (1,	'Savaş ve Barış',	'Lev Tolstoy',	1869,	'Tarihi' ),
		(2,	'Suç ve Ceza',	'Fyodor Dostoyevski',	1866, 	'Psikolojik'),
		(3,	'Anna Karenina',	'Lev Tolstoy',	1877,	'Aşk'),
		(4,	'1984',	'George Orwell',	1949,	'Politik'),
		(5,	'Büyük Umutlar',	'Charles Dickens',	1861,	'Dram'),
		(6,	'Don Kişot',	'Miguel de Cervantes',	1605,	'Macera'),
		(7,	'Gurur ve Önyargı',	'Jane Austen',	1813,	'Dram'),
		(8,	'Monte Kristo Kontu',	'Alexandre Dumas',	1844,	'Macera'),
		(9,	'Faust',	'Johann Wolfgang von Goethe',	1808,	'Felsefi'),
		(10,	'Ulysses',	'James Joyce',	1922,	'Modernist');


/*  
========================  SORU-3 ========================
 Personel tablosuna null deger olmadan coklu veri girisi saglayiniz.
=========================================================
 */

SELECT * FROM personel;

INSERT INTO personel() 
VALUES(1, 'Ahmet', 'CELİK', '1988-10-06', 'Muhasebeci', 45000),
	  (2, 'Ayse', 'DEMİR', '1988-12-06', 'Mudur', 55000);
      
INSERT INTO personel () 
VALUES ('1', 'Hamza' , 'KAVAS' , '1993-03-01' , 'QA' , '50000');      












