
use Team148;

/*
===============================================
		TABLO OLUSTURMA (CRUD - Create)
===============================================
*/


/*
"CREATE TABLE" bir veritabanında yeni bir tablo oluşturmak için kullanılan 
bir SQL (Structured Query Language) ifadesidir. 

Bu komut, tablonun yapısını tanımlar.
yani tabloda bulunacak sütunların isimlerini, veri tiplerini ve diğer özelliklerini 
(örneğin, Primary Key, Unique, Not Null  vb.) belirtir. 

"CREATE TABLE" komutunu kullanırken, her bir sütun için uygun veri tipini ve 
boyutunu belirlemek ve gerektiğinde sütunlara kısıtlamalar eklemek önemlidir. 

Bu işlem, veri bütünlüğünü korumak ve veritabanı işlemlerinin doğru şekilde 
çalışmasını sağlamak için kritik öneme sahiptir.
*/

/*
*************** SYNTAX ***************
CREATE TABLE tablo_adi 
(
    sütun1_Adi veri_tipi1 ,
    sütun2_Adi veri_tipi2 ,
    ...
    sütunN_Adi veri_tipiN ,
);
*/

/*  
   ========================  SORU-1 ========================
   Icerisinde kitap id, kitap adi, yazar adi, yayin yili ve kategori columnlari
   olan bir kitaplar tablosu create ediniz. 
   =========================================================
 */


CREATE TABLE kitaplar ( 
	kitap_id INT,
    kitap_adi VARCHAR(50),
    yazar_adi VARCHAR(50),
    yayin_yili INT,
    kategori VARCHAR(30)
);

/*
	Select bir tablodan data cagirmak icin kullanilir
    bizim de en cok kullanacagimiz komuttur
    
    * hersey anlamina gelir
    asagidaki komut su anlama gelir
    
    Team148.kitaplar'dan herseyi getir
    
*/
SELECT * FROM Team148.kitaplar;


/*
    SQL komutlari ortak kabul olarak buyuk harf ile yazilir.
    SQL ifadeleri yine ortak kabul olarak alt alta yazilir. 
    SQL icerisinde snake_case yazimi uygulanir. 
 */
 
 /*  
    ========================  SORU-2 ========================
    Icerisinde personel id, adi, soyadi, dogum tarihi, pozisyon ve maas columnlari
    olan bir personel tablosu create ediniz. 
    =========================================================
 */
 
 













