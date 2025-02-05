use Team148;

-- kitaplar tablosundaki herseyi goruntuleyin
SELECT * FROM kitaplar;


-- kitaplar tablosundaki kategori sutununu goruntuleyin
SELECT kategori FROM kitaplar;


-- kitaplar tablosundaki kategorisi macera olan kitaplarin
-- isimlerini ve yazarlarini listeleyin  

/*
===============================================
        TABLODAN SORGULAMA YAPMAK / SELECT
===============================================
*/

/*
Tüm Sütunları Seçme: Eğer tablodaki tüm sütunlardaki verilere ihtiyacınız varsa, 
yıldız işareti (*) kullanarak tüm sütunları seçebilirsiniz. Bu, tablodaki her bir
 sütundan veri getirir.
*/

/*
*************** SYNTAX ***************
SELECT * FROM table_name;

*/

/*
Belirli Sütunları Seçme: Eğer sadece tablonun belirli sütunlarındaki
 verilere ihtiyacınız varsa, bu sütunların adlarını SELECT komutundan
 sonra, FROM komutu ile belirtilen tablo adından önce sıralayabilirsiniz
*/

/*
*************** SYNTAX ***************
SELECT sütun1, sütun2 FROM tablo_adı;
*/

/*
 ===============================================
           WHERE ile Filtreleme
 ===============================================
 */
 
/*
 WHERE koşulu, SQL sorgularında belirli kriterlere göre verileri filtrelemek
 için kullanılır. WHERE ile birlikte karşılaştırma ve mantıksal operatörler,
 daha spesifik ve dinamik sorgular oluşturmak için kullanılabilir.
*/

/*
*************** SYNTAX ***************
SELECT * FROM tablo_adı WHERE sütun = “istenen değer”;
*/

SELECT kitap_adi, yazar_adi FROM kitaplar
WHERE kategori = "MACERA";

-- kitaplar tablosunda Lev Tolstoy'a ait kitaplarin
-- ismini, yayin tarihini ve kategorisini listeleyin






