

Create Table Binalar(
bina_id int primary key,
bina_adi varchar(50),
bina_adres_no varchar(20)
)

insert into Binalar values(1,'Mühendislik','A blok no:1')
insert into Binalar values(2,'Edebiyat','B blok no:2')
insert into Binalar values(3,'Fen','A blok no:3')
insert into Binalar values(4,'Týp','A blok no:3')
insert into Binalar values(12,'Yemekhane-1','E blok no:1')
insert into Binalar values(13,'Kütüphane-1','E blok no:2')
insert into Binalar values(14,'Yemekhane-2','C blok no:1')
insert into Binalar values(15,'Yemekhane-3','D blok no:1')
insert into Binalar values(16,'Yemekhane-4','D blok no:1')
insert into Binalar values(17,'Kütüphane-2','D blok no:1')
insert into Binalar values(18,'Kütüphane-3','D blok no:1')
insert into Binalar values(19,'Kütüphane-4','D blok no:1')
insert into Binalar values(20,'Kütüphane-5','D blok no:1')

select*from Binalar

CREATE TABLE kampus(
kampus_id int primary key,
kampus_ad VARCHAR(30) NOT NULL,
kampus_adres VARCHAR(100) NOT NULL,
);
insert into kampus values(1,'Merkez Kampüs',' Erzene Mahallesi Ege Üniversitesi Merkez Yerleþkesi, 35040 Bornova/Ýzmir')
insert into kampus values(2,'Çeþme Edebiyat Fakültesi','  Dalyan, Üniversite, 4202. Sk. No:53, 35930 Çeþme/Ýzmir')
insert into kampus values(3,'Tire Fen Fakültesi',' Yeni, Adnan Menderes Blv., 35900 Tire/Ýzmir')

select*from kampus

CREATE TABLE fakulte(
fakulte_id INT PRIMARY KEY ,
kampus_id INT FOREIGN KEY  REFERENCES kampus(kampus_id) ,
fakulte_ad NVARCHAR(20) NOT NULL,
bina_id int not null,
FOREIGN KEY (bina_id) references Binalar(bina_id)
);
insert into fakulte values(1,1,'Mühendislik',1)
insert into fakulte values(2,2,'Edebiyat',2)
insert into fakulte values(3,3,'Fen',3)
insert into fakulte values(4,1,'Týp',4)

select * from fakulte

CREATE TABLE bolum(
bolum_id INT PRIMARY KEY ,
fakulte_id INT FOREIGN KEY REFERENCES fakulte(fakulte_id),
bolum_ad  NVARCHAR(20) NOT NULL,
bolum_aciklama NVARCHAR(30) NOT NULL,
bolum_nufus INT,
bolum_danisman_id INT ,
);
insert into bolum values(1,1,'Gýda Müh.','Gýda Mühendisliði',9,3)
insert into bolum values(2,1,'Bilg. Müh.','Bilgisayar Mühendisliði',9,1)
insert into bolum values(3,1,'Yzlm. Müh.','Yazýlým Mühendisliði',5,2)
insert into bolum values(4,2,'T.','Tarih',10,8)
insert into bolum values(5,2,'TDE','Türk Dili ve Edebiyatý',8,9)
insert into bolum values(6,3,'Biyo.','Biyokimya',9,6)
insert into bolum values(7,3,'Ýst.','Ýstatistik',10,5)
insert into bolum values(8,3,'Mat','Matematik',5,4)
insert into bolum values(9,4,'Nör.','Nöroloji',7,7)

select*from bolum

CREATE TABLE Sinif (
sinif_id INT PRIMARY KEY,
sinifno INT,
bolum_id INT FOREIGN KEY REFERENCES bolum(bolum_id),
fakulte_id INT FOREIGN KEY REFERENCES fakulte(fakulte_id),
);

INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (1, 1, 1, 1);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (2, 1, 1, 2);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (3, 1, 1, 3);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (4, 1, 1, 4);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (5, 1, 1, 5);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (6, 1, 2, 1);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (7, 1, 2, 2);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (8, 1, 2, 3);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (9, 1, 3, 1);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (10, 1, 3, 2);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (11, 2, 4, 1);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (12, 2, 4, 2);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (13, 2, 5, 1);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (14, 2, 5, 2);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (15, 3, 6, 1);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (16, 3, 7, 1);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (17, 3, 8, 1);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (18, 4, 9, 1);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (19, 4, 9, 2);
INSERT INTO Sinif (sinif_id, fakulte_id, bolum_id, sinifno) VALUES (20, 4, 9, 3);

select*from Sinif

create table kadro(
kadroid int primary key,
k_isim varchar(20) NOT NULL,---kiþi ismi
k_soyad varchar (25)  NOT NULL,---kiþi soyad
k_tel varchar (11) NOT NULL,---kiþi telefon
pozisyonad varchar (25) NOT NULL,
giristarihi date NOT NULL,
);
select*from kadro

insert into kadro values (1,'Necdet','BUDAK','05557869987','REKTÖR','2010/04/05');
insert into kadro values (2,'Selim','YALÇIN','05402366142','DEKAN','2012/10/22');
insert into kadro values (3,'Naci','BULUT','05222932536','DEKAN','2018/08/01');
insert into kadro values (4,'Selma','AKTAÞ','05911476313','DEKAN','2013/02/25');
insert into kadro values (5,'Cem','YILDIRIM','05904993840','DEKAN','2019/06/05');
insert into kadro values (6,'Pelin','KARA','05798994294','ÖÐRETÝM GÖREVLÝSÝ','2017/05/14');
insert into kadro values (7,'Nazlý','ÖZDEMÝR','05936267130','ÖÐRETÝM GÖREVLÝSÝ','2020/07/17');
insert into kadro values (8,'Oðuz','GÜR','05338596587','ÖÐRETÝM GÖREVLÝSÝ','2011/08/23');
insert into kadro values (9,'Leyla','UÇAR','05531603508','ÖÐRETÝM GÖREVLÝSÝ','2016/09/23');
insert into kadro values (10,'Görkem','EREN','05254692990','ÖÐRETÝM GÖREVLÝSÝ','2013/06/22');
insert into kadro values (11,'Gökhan','KORKMAZ','05470614185','ÖÐRETÝM GÖREVLÝSÝ','2017/12/16');
insert into kadro values (12,'Erdem','TURAN','05209644857','ÖÐRETÝM GÖREVLÝSÝ','2022/04/23');
insert into kadro values (13,'Kenan','ÇELÝK','05846637038','ÖÐRETÝM GÖREVLÝSÝ','2012/04/14');
insert into kadro values (14,'Þeyda','ÞAHÝN','05865632297','BÖLÜM BAÞKANI','2014/04/17');
insert into kadro values (15,'Efe','BOZAK','05836475851','BÖLÜM BAÞKANI','2019/09/03');
insert into kadro values (16,'Zeki','GÜLER','05658895651','BÖLÜM BAÞKANI','2019/04/27');
insert into kadro values (17,'Uygar','YILDIZ','05559722728','BÖLÜM BAÞKANI','2022/08/11');
insert into kadro values (18,'Yýlmaz','TUNÇ','05066815638','BÖLÜM BAÞKANI','2013/07/18');
insert into kadro values (19,'Recep','KURTULUÞ','05811431915','BÖLÜM BAÞKANI','2014/05/01');
insert into kadro values (20,'Taner','KILIÇ','05921536541','BÖLÜM BAÞKANI','2014/09/03');
insert into kadro values (21,'Faruk','DOÐAN','05766833380','BÖLÜM BAÞKANI','2011/09/20');
insert into kadro values (22,'Derya','DURU','05346012614','BÖLÜM BAÞKANI','2018/02/15');
insert into kadro values (23,'Çýnar','SARI','05303871144','BÖLÜM BAÞKANI','2023/08/11');
insert into kadro values (24,'Ülkü','ALKAN','05671746386','ARAÞTIRMA GÖREVLÝSÝ','2017/05/22');
insert into kadro values (25,'Zeynep','ÞEN','05951316081','ARAÞTIRMA GÖREVLÝSÝ','2015/05/07');
insert into kadro values (26,'Mehmet','TAÞ','05951845681','ARAÞTIRMA GÖREVLÝSÝ','2020/08/17');
insert into kadro values (27,'Sude','DURAK','05493272343','PROFESÖR','2010/07/06');
insert into kadro values (28,'Burcu','MAYA','05823386898','PROFESÖR','2015/02/28');
insert into kadro values (29,'Caner','UYGUN','05033470617','PROFESÖR','2015/05/22');
insert into kadro values (30,'Temel','DORUK','05710028987','PROFESÖR','2012/11/12');
insert into kadro values (31,'Dilek','SEFA','05955970147','ÖGRENCÝ ÝÞLERÝ UZMANI','2022/01/20');
insert into kadro values (32,'Deniz','KURT','05147870039','ÝLETÝÞÝM UZMANI','2023/12/21');
insert into kadro values (33,'Gülþah','GÜVEN','05576997635','KÜTÜPHANE GÖREVLÝSÝ','2017/11/03');
insert into kadro values (34,'Lale','SER','05388918034','ÝDARÝ PERSONEL','2012/06/18');
insert into kadro values (35,'Kemal','KOLCU','05339299301','ÝDARÝ PERSONEL','2011/03/19');
insert into kadro values (36,'Ömer','ALOÐLU','05767477725','ÝDARÝ PERSONEL','2018/04/11');
insert into kadro values (37,'Sabiha','ÇÝMEN','05641523240','BÝLGÝ ÝÞLEM UZMANI','2019/08/23');
insert into kadro values (38,'Sevda','NARLI','05291238894','DOÇENT','2011/07/19');
insert into kadro values (39,'ESRA','TARIK','05760202429','DOÇENT','2017/02/24');
insert into kadro values (40,'Ýsmet','CAHÝT','05544218917','GENEL SEKRETER','2018/05/17');
insert into kadro values (41,'Hakan','KESÝCÝ','05720359296','GENEL SEKRETER','2021/11/13');
insert into kadro values (42,'Mert','DEMÝR','05933217632','FÝNANS UZMANI','2012/11/24');




create table akademik_personel(
akd_id int primary key,
akd_adi varchar(20) not null,
akd_soyadi varchar(20) not null,
akd_dogum_tarihi date not null,
akd_tc varchar(11) not null,
kadroid int foreign key references kadro(kadroid)
);

insert into akademik_personel values (1,'Pelin','KARA','1982/07/24','48390238214',6);
insert into akademik_personel values (2,'Nazlý','ÖZDEMÝR','1980/08/17','63728394239',7);
insert into akademik_personel values (3,'Oðuz','GÜR','1974/08/24','64390362012',8);
insert into akademik_personel values (4,'Leyla','UÇAR','1988/10/23','72037617473',9);
insert into akademik_personel values (5,'Görkem','EREN','1973/11/22','83258492740',10);
insert into akademik_personel values (6,'Gökhan','KORKMAZ','1982/12/02','83268472537',11);
insert into akademik_personel values (7,'Erdem','TURAN','1970/06/23','12946549347',12);
insert into akademik_personel values (8,'Kenan','ÇELÝK','1984/05/14','43723047531',13);
insert into akademik_personel values (9,'Þeyda','ÞAHÝN','1990/04/22','54094729455',14);
insert into akademik_personel values (10,'Efe','BOZAK','1970/09/13','27490284628',15);
insert into akademik_personel values (11,'Zeki','GÜLER','1981/05/17','62803826845',16);
insert into akademik_personel values (12,'Uygar','YILDIZ','1988/08/14','18574023578',17);
insert into akademik_personel values (13,'Yýlmaz','TUNÇ','1977/07/18','53092658358',18);
insert into akademik_personel values (14,'Recep','KURTULUÞ','1984/01/12','12706037685',19);
insert into akademik_personel values (15,'Taner','KILIÇ','1976/06/03','85655274952',20);
insert into akademik_personel values (16,'Faruk','DOÐAN','1991/09/10','01745829574',21);
insert into akademik_personel values (17,'Derya','DURU','1985/10/15','73920462019',22);
insert into akademik_personel values (18,'Çýnar','SARI','1965/06/21','18342046382',23);
insert into akademik_personel values (19,'Ülkü','ALKAN','1982/04/02','17593021475',24);
insert into akademik_personel values (20,'Zeynep','ÞEN','1969/05/07','74032862177',25);
insert into akademik_personel values (21,'Mehmet','TAÞ','1975/01/17','29465830211',26);
insert into akademik_personel values (22,'Sude','DURAK','1962/08/16','08546384967',27);
insert into akademik_personel values (23,'Burcu','MAYA','1977/02/18','04916374483',28);
insert into akademik_personel values (24,'Caner','UYGUN','1963/02/02','40372918402',29);
insert into akademik_personel values (25,'Temel','DORUK','1971/03/25','57304771294',30);

select*from akademik_personel
UPDATE akademik_personel
SET akd_tc= '10745829574'
WHERE kadroid = 21

UPDATE akademik_personel
SET akd_tc= '80546384967'
WHERE kadroid = 27

UPDATE akademik_personel
SET akd_tc= '40916374483'
WHERE kadroid = 28


create table Akd_giris(
akd_id int primary key,
akd_sifre varchar(25) not null,
FOREIGN KEY (akd_id) REFERENCES akademik_personel(akd_id)
);
INSERT INTO Akd_giris VALUES (1,'aBcD1234');
INSERT INTO Akd_giris VALUES (2,'eFgH5678');
INSERT INTO Akd_giris VALUES (3,'iJkL9012');
INSERT INTO Akd_giris VALUES (4,'mNoP3456');
INSERT INTO Akd_giris VALUES (5,'qRsT7890');
INSERT INTO Akd_giris VALUES (6,'uVwX2345');
INSERT INTO Akd_giris VALUES (7,'yZaB6789');
INSERT INTO Akd_giris VALUES (8,'cDeF0123');
INSERT INTO Akd_giris VALUES (9,'gHiJ4567');
INSERT INTO Akd_giris VALUES (10,'kLmN8901');
INSERT INTO Akd_giris VALUES (11,'oPqR2345');
INSERT INTO Akd_giris VALUES (12,'sTuV6789');
INSERT INTO Akd_giris VALUES (13,'wXyZ0123');
INSERT INTO Akd_giris VALUES (14,'aBcD4567');
INSERT INTO Akd_giris VALUES (15,'eFgH8901');
INSERT INTO Akd_giris VALUES (16,'iJkL2345');
INSERT INTO Akd_giris VALUES (17,'mNoP6789');
INSERT INTO Akd_giris VALUES (18,'qRsT0123');
INSERT INTO Akd_giris VALUES (19,'uVwX4567');
INSERT INTO Akd_giris VALUES (20,'yZaB8901');
INSERT INTO Akd_giris VALUES (21,'cDeF2345');
INSERT INTO Akd_giris VALUES (22,'gHiJ6789');
INSERT INTO Akd_giris VALUES (23,'kLmN0123');
INSERT INTO Akd_giris VALUES (24,'oPqR4567');
INSERT INTO Akd_giris VALUES (25,'aslq7857');
select*from Akd_giris

create table akd_iletisim(
iletisim_id int primary key NOT NULL,
akd_eposta nvarchar (30) NOT NULL,
akd_ofis_no varchar (3),
akd_bolumbilgi varchar (40),
akd_id int foreign key references akademik_personel(akd_id)
);

insert into akd_iletisim values (1,'karapelin@gmail.com','A10','Bilgisayar Mühendisliði',1);
insert into akd_iletisim values (2,'nazlýozdmr@gmail.com','A11','Yazýlým Mühendisliði',2);
insert into akd_iletisim values (3,'guroguz@gmail.com','B12','Gýda Mühendisliði',3);
insert into akd_iletisim values (4,'leylaucar@gmail.com','A13','Matematik',4);
insert into akd_iletisim values (5,'gorkmern@gmail.com','B14','Ýstatistik',5);
insert into akd_iletisim values (6,'korkmazgökhan@gmail.com','B15','Biyokimya',6);
insert into akd_iletisim values (7,'erdemturan@gmail.com','A15','Nöroloji',7);
insert into akd_iletisim values (8,'kenanclk@gmail.com','A16','Tarih',8);
insert into akd_iletisim values (9,'sahinseyda@gmail.com','B16','Türk Dili ve Edebiyat',9);
insert into akd_iletisim values (10,'efebozakk@gmail.com','A12','Bilgisayar Mühendisliði',10);
insert into akd_iletisim values (11,'gulerzeki@gmail.com','A14','Yazýlým Mühendisliði',11);
insert into akd_iletisim values (12,'yýldýzuygar@gmail.com','B13','Gýda Mühendisliði',12);
insert into akd_iletisim values (13,'yýlmaztunc@gmail.com','A15','Matematik',13);
insert into akd_iletisim values (14,'recepkurtulus@gmail.com','B17','Ýstatistik',14);
insert into akd_iletisim values (15,'tanerkilic@gmail.com','A17','Biyokimya',15);
insert into akd_iletisim values (16,'farukdogann@gmail.com','A18','Nöroloji',16);
insert into akd_iletisim values (17,'duruuderya@gmail.com','A26','Tarih',17);
insert into akd_iletisim values (18,'cinarsari@gmail.com','B18','Türk Dili ve Edebiyat',18);
insert into akd_iletisim values (19,'alkannulku@gmail.com','A19','Bilgisayar Mühendisliði',19);
insert into akd_iletisim values (20,'zeynepsen@gmail.com','A20','Yazýlým Mühendisliði',20);
insert into akd_iletisim values (21,'tasmehmet@gmail.com','B19','Gýda Mühendisliði',21);
insert into akd_iletisim values (22,'duraksudee@gmail.com','A21','Matematik',22);
insert into akd_iletisim values (23,'burcumayay@gmail.com','B10','Ýstatistik',23);
insert into akd_iletisim values (24,'uyguncner@gmail.com','A22','Biyokimya',24);
insert into akd_iletisim values (25,'dorukktemell@gmail.com','A23','Nöroloji',25);

select*from akd_iletisim


create table Kutuphane(
kutuphane_id int not null,
kitap_id int primary key,
kitap_ad varchar(50) not null,
kitap_yazar varchar(50) not null,
kitap_sayfa int  not null,
kitap_yayinevi varchar(40) not null,
bina_id int FOREIGN KEY REFERENCES Binalar(bina_id)
);

-- Kütüphane 1
INSERT INTO Kutuphane VALUES (1, 1, 'Sis ve Gece', 'Ahmet Ümit', 350, 'Everest Yayýnlarý',13);
INSERT INTO Kutuphane VALUES (1, 2, 'Ýstanbul Hatýrasý', 'Ahmet Ümit', 280, 'Doðan Kitap',13);
INSERT INTO Kutuphane VALUES (1, 3, 'Kuyucaklý Yusuf', 'Sabahattin Ali', 220, 'Yapý Kredi Yayýnlarý',13);
INSERT INTO Kutuphane VALUES (1, 4, 'Beyaz Zambaklar Ülkesinde', 'Grigory Petrov', 200, 'Ýþ Bankasý Yayýnlarý',13);
INSERT INTO Kutuphane VALUES (1, 5, 'Beyaz Diþ', 'Jack London', 320, 'Can Yayýnlarý',13);
INSERT INTO Kutuphane VALUES (1, 6, 'Ýnsan Ne Ýle Yaþar', 'Lev Tolstoy', 180, 'Remzi Kitabevi',13);
INSERT INTO Kutuphane VALUES (1, 7, '1984', 'George Orwell', 250, 'Can Yayýnlarý',13);
INSERT INTO Kutuphane VALUES (1, 8, 'Suç ve Ceza', 'Fyodor Dostoyevski', 400, 'Ýþ Bankasý Yayýnlarý',13);
INSERT INTO Kutuphane VALUES (1, 9, 'Dönüþüm', 'Franz Kafka', 150, 'Ýthaki Yayýnlarý',13);
INSERT INTO Kutuphane VALUES (1, 10, 'Harry Potter ve Felsefe Taþý', 'J.K. Rowling', 350, 'Yapý Kredi Yayýnlarý',13);

-- Kütüphane 2
INSERT INTO Kutuphane VALUES (2, 11, 'Bir Ýdam Mahkûmunun Son Günü', 'Victor Hugo', 280, 'Can Yayýnlarý',17);
INSERT INTO Kutuphane VALUES (2, 12, 'Kürk Mantolu Madonna', 'Sabahattin Ali', 220, 'Yapý Kredi Yayýnlarý',17);
INSERT INTO Kutuphane VALUES (2, 13, 'Dava', 'Franz Kafka', 300, 'Ýþ Bankasý Yayýnlarý',17);
INSERT INTO Kutuphane VALUES (2, 14, 'Hayvan Çiftliði', 'George Orwell', 200, 'Can Yayýnlarý',17);
INSERT INTO Kutuphane VALUES (2, 15, 'Þeker Portakalý', 'José Mauro de Vasconcelos', 240, 'Ýþ Bankasý Yayýnlarý',17);
INSERT INTO Kutuphane VALUES (2, 16, 'Bülbülü Öldürmek', 'Harper Lee', 320, 'Türkiye Ýþ Bankasý Kültür Yayýnlarý',17);
INSERT INTO Kutuphane VALUES (2, 17, 'Göðü Delen Adam', 'Ahmet Ümit', 180, 'Everest Yayýnlarý',17);
INSERT INTO Kutuphane VALUES (2, 18, 'Yeraltýndan Notlar', 'Fyodor Dostoyevski', 250, 'Ýþ Bankasý Yayýnlarý',17);
INSERT INTO Kutuphane VALUES (2, 19, 'Sineklerin Tanrýsý', 'William Golding', 300, 'Can Yayýnlarý',17);
INSERT INTO Kutuphane VALUES (2, 20, 'Yabancý', 'Albert Camus', 220, 'Ýþ Bankasý Yayýnlarý',17);

-- Kütüphane 3
INSERT INTO Kutuphane VALUES (3, 21, 'Anna Karenina', 'Lev Tolstoy', 400, 'Remzi Kitabevi',18);
INSERT INTO Kutuphane VALUES (3, 22, 'Körlük', 'José Saramago', 150, 'Kýrmýzý Kedi Yayýnevi',18);
INSERT INTO Kutuphane VALUES (3, 23, 'Dönme Dolap', 'Yaþar Kemal', 250, 'Ýthaki Yayýnlarý',18);
INSERT INTO Kutuphane VALUES (3, 24, 'Çalýkuþu', 'Reþat Nuri Güntekin', 320, 'Türkiye Ýþ Bankasý Kültür Yayýnlarý',18);
INSERT INTO Kutuphane VALUES (3, 25, 'Ýnci', 'John Steinbeck', 280, 'Can Yayýnlarý',18);
INSERT INTO Kutuphane VALUES (3, 26, 'Bir Aþk Hikayesi', 'Erich Segal', 200, 'Ýþ Bankasý Yayýnlarý',18);
INSERT INTO Kutuphane VALUES (3, 27, 'Þeker Portakalý', 'José Mauro de Vasconcelos', 240, 'Ýþ Bankasý Yayýnlarý',18);
INSERT INTO Kutuphane VALUES (3, 28, 'Sefiller', 'Victor Hugo', 350, 'Can Yayýnlarý',18);
INSERT INTO Kutuphane VALUES (3, 29, 'Beyaz Diþ', 'Jack London', 180, 'Can Yayýnlarý',18);
INSERT INTO Kutuphane VALUES (3, 30, 'Küçük Prens', 'Antoine de Saint-Exupéry', 150, 'Ýþ Bankasý Yayýnlarý',18);

-- Kütüphane 4
INSERT INTO Kutuphane VALUES (4, 31, 'Bir Delinin Hatýra Defteri', 'Nikolai Gogol', 220, 'Everest Yayýnlarý',19);
INSERT INTO Kutuphane VALUES (4, 32, 'Martý', 'Richard Bach', 280, 'Doðan Kitap',19);
INSERT INTO Kutuphane VALUES (4, 33, 'Sokak Kedisi Bob', 'James Bowen', 200, 'Timaþ Yayýnlarý',19);
INSERT INTO Kutuphane VALUES (4, 34, 'Kýrmýzý Pazartesi', 'Gabriel Garcia Marquez', 250, 'Can Yayýnlarý',19);
INSERT INTO Kutuphane VALUES (4, 35, 'Ayný Yýldýzýn Altýnda', 'John Green', 320, 'Doðan Kitap',19);
INSERT INTO Kutuphane VALUES (4, 36, 'Dönüþ', 'Bernhard Schlink', 180, 'Can Yayýnlarý',19);
INSERT INTO Kutuphane VALUES (4, 37, 'Da Vinci Þifresi', 'Dan Brown', 400, 'Altýn Kitaplar',19);
INSERT INTO Kutuphane VALUES (4, 38, 'Baba', 'Mario Puzo', 300, 'Ýnkýlap Kitabevi',19);
INSERT INTO Kutuphane VALUES (4, 39, 'Bilinmeyen Bir Kadýnýn Mektubu', 'Stefan Zweig', 220, 'Yapý Kredi Yayýnlarý',19);
INSERT INTO Kutuphane VALUES (4, 40, 'Dracula', 'Bram Stoker', 250, 'Ýthaki Yayýnlarý',19);

-- Kütüphane 5
INSERT INTO Kutuphane VALUES (5, 41, 'Simru', 'Halide Edip Adývar', 180, 'Yapý Kredi Yayýnlarý',20);
INSERT INTO Kutuphane VALUES (5, 42, 'Cesur Yeni Dünya', 'Aldous Huxley', 320, 'Can Yayýnlarý',20);
INSERT INTO Kutuphane VALUES (5, 43, 'Ay Iþýðýnda Yasak Meyve', 'Haruki Murakami', 240, 'Doðan Kitap',20);
INSERT INTO Kutuphane VALUES (5, 44, 'Dünyanýn Merkezine Yolculuk', 'Jules Verne', 350, 'Ýþ Bankasý Yayýnlarý',20);
INSERT INTO Kutuphane VALUES (5, 45, 'Göçebe', 'Stephen King', 280, 'Altýn Kitaplar',20);
INSERT INTO Kutuphane VALUES (5, 46, 'Cennetin Doðusu', 'John Steinbeck', 200, 'Can Yayýnlarý',20);
INSERT INTO Kutuphane VALUES (5, 47, 'Uçurtma Avcýsý', 'Khaled Hosseini', 220, 'Doðan Kitap',20);
INSERT INTO Kutuphane VALUES (5, 48, 'Savaþ ve Barýþ', 'Lev Tolstoy', 400, 'Remzi Kitabevi',20);
INSERT INTO Kutuphane VALUES (5, 49, 'Maus', 'Art Spiegelman', 150, 'Ýthaki Yayýnlarý',20);
INSERT INTO Kutuphane VALUES (5, 50, 'Mürekkep Yürek', 'Charles Bukowski', 300, 'Everest Yayýnlarý',20);

select*from Kutuphane

CREATE TABLE Odunc(
 odunc_id int primary key not null,
 kitap_id int FOREIGN KEY REFERENCES Kutuphane(kitap_id),
 ogr_id varchar (11) foreign key references ogrenci(ogr_id),
 ogr_adi varchar(20) NOT NULL,
 ogr_soyadi varchar(20) NOT NULL,
 alma_tarihi DATE NOT NULL,
 iade_tarihi DATE NOT NULL,
 iade_durumu varchar (50),
 );

INSERT INTO Odunc VALUES ('300', '11', '50', 'Elif', 'Yýlmaz', '2023-08-09', '2023-09-09', 'iade edildi');
INSERT INTO Odunc VALUES ('301', '12', '51', 'Mert', 'Doðan', '2023-09-09', '2023-10-09', 'iade edilmedi');
INSERT INTO Odunc VALUES ('302', '33', '52', 'Ege', 'Yýlmaz', '2023-09-01', '2023-10-01', 'iade edilmedi');
INSERT INTO Odunc VALUES ('303', '40', '53', 'Sude', 'Kurt', '2023-09-05', '2023-10-05', 'iade edildi');
INSERT INTO Odunc VALUES ('304', '15', '54', 'Burak', 'Öztürk', '2023-07-15', '2023-08-15', 'iade edildi');
INSERT INTO Odunc VALUES ('305', '6', '55', 'Kerem', 'Yýlmaz', '2023-07-15', '2023-08-15', 'bekliyor');
INSERT INTO Odunc VALUES ('306', '7', '56', 'Aylin', 'Ateþ', '2023-06-15', '2023-07-15', 'iade edildi');
INSERT INTO Odunc VALUES ('307', '18', '57', 'Ezgi', 'Demir', '2023-10-10', '2023-11-11', 'iade edildi');
INSERT INTO Odunc VALUES ('308', '9', '58', 'Arda', 'Güler', '2023-09-12', '2023-10-01', 'iade edildi');
INSERT INTO Odunc VALUES ('309', '10', '59', 'Deniz', 'Aktaþ', '2023-09-21', '2023-10-22', 'bekliyor');
INSERT INTO Odunc VALUES ('310', '11', '60', 'Melike', 'Arslan', '2023-10-25', '2023-11-26', 'iade edilmedi');
INSERT INTO Odunc VALUES ('311', '12', '61', 'Enes', 'Kaya', '2023-07-20', '2023-08-19', 'bekliyor');
INSERT INTO Odunc VALUES ('312', '13', '62', 'Efe', 'Yýlmaz', '2023-10-23', '2023-11-23', 'iade edilmedi');
INSERT INTO Odunc VALUES ('313', '14', '63', 'Ezgi', 'Çetin', '2023-07-28', '2023-08-20', 'iade edildi');
INSERT INTO Odunc VALUES ('314', '25', '64', 'Yusuf', 'Taþkýn', '2023-07-28', '2023-08-20', 'iade edildi');
INSERT INTO Odunc VALUES ('315', '16', '65', 'Selin', 'Kurt', '2023-07-28', '2023-08-20', 'iade edildi');
INSERT INTO Odunc VALUES ('316', '17', '66', 'Ahmet', 'Aydýn', '2023-07-28', '2023-08-20', 'iade edildi');

create table ogrenci (
ogr_id varchar (11) primary key,
sinif_id int NOT NULL,
ogr_adi varchar(20) NOT NULL,
ogr_soyadi varchar(20) NOT NULL,
ogr_bolum varchar(50) NOT NULL,
ogr_tc varchar(11) NOT NULL,
ogr_dogum_yeri varchar(15) NOT NULL,
ogr_dogum_tarihi date NOT NULL,
danisman_id int NOT NULL
)

select * from ogrenci

insert into ogrenci values(60240000001, 4, 'Ali', 'Yýlmaz', 'Bilgisayar Mühendisliði', '77262293051', 'Samsun', '2000-03-05', 1)
insert into ogrenci values(60240000002, 3, 'Murat', 'Aslan', 'Gýda Mühendisliði', '35181479178', 'Ýstanbul', '2003-11-25', 3)
insert into ogrenci values(60240000003, 2, 'Sýla', 'Karagöz', 'Yazýlým Mühendisliði', '40553464568', 'Ýzmir', '2004-05-09', 2)
insert into ogrenci values(60240000004, 2, 'Ýsmail', 'Avcý', 'Biyokimya', '68744349790', 'Ýzmir', '2004-10-11', 6)
insert into ogrenci values(60240000005, 1, 'Murat Can', 'Bilgin', 'Ýstatistik', '38127003617', 'Eskiþehir', '2004-04-25', 5)
insert into ogrenci values(60240000006, 3, 'Mustafa', 'Þen', 'Bilgisayar Mühendisliði', '98935420047', 'Ýstanbul', '2003-06-13', 1)
insert into ogrenci values(60240000007, 1, 'Ayþe', 'Güneþ', 'Ýstatistik', '76971757445', 'Bursa', '2005-02-05', 5)
insert into ogrenci values(60240000008, 4, 'Ceren', 'Demir', 'Türk Dili ve Edebiyatý', '89489545579', 'Manisa', '2001-01-28', 9)
insert into ogrenci values(60240000009, 3, 'Furkan', 'Genç', 'Matematik', '60169277036', 'Ýzmir', '2000-03-09', 4)
insert into ogrenci values(60240000010, 4, 'Esma', 'Aktaþ', 'Yazýlým Mühendisliði', '15213890947', 'Balýkesir', '2000-07-22', 2)
insert into ogrenci values(60240000011, 3, 'Ahmet', 'Ünlü', 'Tarih', '92194978897', 'Konya', '2001-08-02', 8)
insert into ogrenci values(60240000012, 1, 'Emre', 'Aygün', 'Gýda Mühendisliði', '29463581019', 'Ýstanbul', '2003-04-26', 3)
insert into ogrenci values(60240000013, 2, 'Ayça', 'Yaman', 'Ýstatistik', '89592955172', 'Trabzon', '2002-01-24', 5)
insert into ogrenci values(60240000014, 1, 'Kemal', 'Mutlu', 'Türk Dili ve Edebiyatý', '37612863881', 'Samsun', '2004-05-15', 9)
insert into ogrenci values(60240000015, 3, 'Hasan', 'Gök', 'Biyokimya', '50497708380', 'Ankara', '2000-12-09', 6)
insert into ogrenci values(60240000016, 2, 'Leyla', 'Kýlýç', 'Ýstatistik', '13207052157', 'Ýzmir', '2002-07-30', 5)
insert into ogrenci values(60240000017, 4, 'Mehmet', 'Kuzey', 'Türk Dili ve Edebiyatý', '88052173923', 'Sivas', '2000-02-17', 9)
insert into ogrenci values(60240000018, 1, 'Selin', 'Çoban', 'Nöroloji', '51962661857', 'Ankara', '2004-03-08', 7)
insert into ogrenci values(60240000019, 2, 'Deniz', 'Taþ', 'Tarih', '72750113839', 'Aydýn', '2004-08-25', 8)
insert into ogrenci values(60240000020, 1, 'Sude', 'Þahin', 'Tarih', '93082281499', 'Ýstanbul', '2005-01-20', 8)
insert into ogrenci values(60240000021, 2, 'Onur', 'Kara', 'Nöroloji', '79076388959', 'Antalya', '2003-12-05', 7)
insert into ogrenci values(60240000022, 3, 'Ahmet', 'Yýldýrým', 'Matematik', '25153233647', 'Ýzmir', '2004-04-09', 4)
insert into ogrenci values(60240000023, 4, 'Duygu', 'Aksoy', 'Biyokimya', '48861440531', 'Çanakkale', '2000-11-10', 6)
insert into ogrenci values(60240000024, 3, 'Kaan', 'Doðan', 'Bilgisayar Mühendisliði', '56856735934', 'Erzurum', '2001-06-11', 1)
insert into ogrenci values(60240000025, 2, 'Aylin', 'Kaya', 'Ýstatistik', '93729549086', 'Eskiþehir', '2003-04-25', 5)
insert into ogrenci values(60240000026, 1, 'Barýþ', 'Gürsoy', 'Biyokimya', '84332452098', 'Ýzmir', '2004-11-01', 6)
insert into ogrenci values(60240000027, 4, 'Selin', 'Avcý', 'Türk Dili ve Edebiyatý', '73429044183', 'Trabzon', '2001-05-17', 9)
insert into ogrenci values(60240000028, 2, 'Yasemin', 'Doðan', 'Gýda Mühendisliði', '93026647231', 'Ýstanbul', '2004-03-22', 3)
insert into ogrenci values(60240000029, 1, 'Onur', 'Yýldýz', 'Tarih', '32932909746', 'Mersin', '2003-07-20', 8)
insert into ogrenci values(60240000030, 4, 'Tarýk', 'Can', 'Bilgisayar Mühendisliði', '80383275621', 'Ýstanbul', '2001-10-20', 1)
insert into ogrenci values(60240000031, 2, 'Derin', 'Öz', 'Gýda Mühendisliði', '79568388959', 'Bursa', '2003-02-05', 3)
insert into ogrenci values(60240000032, 1, 'Yaren', 'Uzun', 'Nöroloji', '91911543514', 'Ýzmir', '2003-08-30', 7)
insert into ogrenci values(60240000033, 1, 'Leyla', 'Bora', 'Tarih', '48213440531', 'Çanakkale', '2005-01-08', 8)
insert into ogrenci values(60240000034, 2, 'Ömer', 'Sevgi', 'Matematik', '68956735934', 'Uþak', '2004-08-11', 4)
insert into ogrenci values(60240000035, 3, 'Aysel', 'Budak', 'Gýda Mühendisliði', '15629549323', 'Trazbon', '2002-06-13', 3)
insert into ogrenci values(60240000036, 4, 'Kadir', 'Yalçýn', 'Yazýlým Mühendisliði', '65342152093', 'Aydýn', '2002-08-23', 2)
insert into ogrenci values(60240000037, 3, 'Murat', 'Yalýn', 'Biyokimya', '64429344183', 'Mardin', '2003-08-30', 6)
insert into ogrenci values(60240000038, 1, 'Yasemin', 'Eren', 'Bilgisayar Mühendisliði', '32696647231', 'Ýstanbul', '2004-05-12', 1)
insert into ogrenci values(60240000039, 3, 'Zehra', 'Akyüz', 'Tarih', '21632909746', 'Diyarbakýr', '2001-04-20', 3)
insert into ogrenci values(60240000040, 2, 'Tolga', 'Erden', 'Nöroloji', '63983275621', 'Denizli', '2002-09-10', 7)
insert into ogrenci values(60240000041, 4, 'Emir', 'Çelik', 'Bilgisayar Mühendisliði', '77262293051', 'Samsun', '2000-03-05', 1)
insert into ogrenci values(60240000042, 3, 'Melis', 'Kaya', 'Gýda Mühendisliði', '35181479178', 'Ýstanbul', '2003-11-25', 3)
insert into ogrenci values(60240000043, 2, 'Efe', 'Yýldýz', 'Yazýlým Mühendisliði', '40553464568', 'Ýzmir', '2004-05-09', 2)
insert into ogrenci values(60240000044, 2, 'Ýpek', 'Demir', 'Biyokimya', '68744349790', 'Ýzmir', '2004-10-11', 6)
insert into ogrenci values(60240000045, 1, 'Berk', 'Þen', 'Ýstatistik', '38127003617', 'Eskiþehir', '2004-04-25', 5)
insert into ogrenci values(60240000046, 3, 'Caner', 'Yýlmaz', 'Bilgisayar Mühendisliði', '98935420047', 'Ýstanbul', '2003-06-13', 1)
insert into ogrenci values(60240000047, 1, 'Yaðmur', 'Erdem', 'Ýstatistik', '76971757445', 'Bursa', '2005-02-05', 5)
insert into ogrenci values(60240000048, 4, 'Cemre', 'Kurt', 'Türk Dili ve Edebiyatý', '89489545579', 'Manisa', '2001-01-28', 9)
insert into ogrenci values(60240000049, 3, 'Can', 'Arslan', 'Matematik', '60169277036', 'Ýzmir', '2000-03-09', 4)
insert into ogrenci values(60240000050, 4, 'Elif', 'Yýlmaz', 'Yazýlým Mühendisliði', '15213890947', 'Balýkesir', '2000-07-22', 2)
insert into ogrenci values(60240000051, 3, 'Mert', 'Doðan', 'Tarih', '92194978897', 'Konya', '2001-08-02', 8)
insert into ogrenci values(60240000052, 1, 'Ege', 'Yýlmaz', 'Gýda Mühendisliði', '29463581019', 'Ýstanbul', '2003-04-26', 3)
insert into ogrenci values(60240000053, 2, 'Sude', 'Kurt', 'Ýstatistik', '89592955172', 'Trabzon', '2002-01-24', 5)
insert into ogrenci values(60240000054, 1, 'Burak', 'Öztürk', 'Türk Dili ve Edebiyatý', '37612863881', 'Samsun', '2004-05-15', 9)
insert into ogrenci values(60240000055, 3, 'Kerem', 'Yýlmaz', 'Biyokimya', '50497708380', 'Ankara', '2000-12-09', 6)
insert into ogrenci values(60240000056, 2, 'Aylin', 'Ateþ', 'Ýstatistik', '13207052157', 'Ýzmir', '2002-07-30', 5)
insert into ogrenci values(60240000057, 4, 'Ezgi', 'Demir', 'Türk Dili ve Edebiyatý', '88052173923', 'Sivas', '2000-02-17', 9)
insert into ogrenci values(60240000058, 1, 'Arda', 'Güler', 'Nöroloji', '51962661857', 'Ankara', '2004-03-08', 7)
insert into ogrenci values(60240000059, 2, 'Deniz', 'Aktaþ', 'Tarih', '72750113839', 'Aydýn', '2004-08-25', 8)
insert into ogrenci values(60240000060, 1, 'Melike', 'Arslan', 'Tarih', '93082281499', 'Ýstanbul', '2005-01-20', 8);
insert into ogrenci values(60240000061, 2, 'Enes', 'Kaya', 'Nöroloji', '79076388959', 'Antalya', '2003-12-05', 7)
insert into ogrenci values(60240000062, 3, 'Efe', 'Yýlmaz', 'Matematik', '25153233647', 'Ýzmir', '2004-04-09', 4)
insert into ogrenci values(60240000063, 4, 'Ezgi', 'Çetin', 'Biyokimya', '48861440531', 'Çanakkale', '2000-11-10', 6)
insert into ogrenci values(60240000064, 3, 'Yusuf', 'Taþkýn', 'Bilgisayar Mühendisliði', '56856735934', 'Erzurum', '2001-06-11', 1)
insert into ogrenci values(60240000065, 2, 'Selin', 'Kurt', 'Ýstatistik', '93729549086', 'Eskiþehir', '2003-04-25', 5)
insert into ogrenci values(60240000066, 1, 'Ahmet', 'Aydýn', 'Biyokimya', '84332452098', 'Ýzmir', '2004-11-01', 6)
insert into ogrenci values(60240000067, 4, 'Selin', 'Yýlmaz', 'Türk Dili ve Edebiyatý', '73429044183', 'Trabzon', '2001-05-17', 9)
insert into ogrenci values(60240000068, 2, 'Elif', 'Kara', 'Gýda Mühendisliði', '93026647231', 'Ýstanbul', '2004-03-22', 3)
insert into ogrenci values(60240000069, 1, 'Emre', 'Toprak', 'Tarih', '32932909746', 'Mersin', '2003-07-20', 9)
insert into ogrenci values(60240000070, 4, 'Tarýk', 'Can', 'Bilgisayar Mühendisliði', '80383275621', 'Ýstanbul', '2001-10-20', 1)
insert into ogrenci values(60240000071, 2, 'Aylin', 'Göktürk', 'Gýda Mühendisliði', '79568388959', 'Bursa', '2003-02-05', 3)
insert into ogrenci values(60240000072, 1, 'Yaren', 'Bilge', 'Nöroloji', '91911543514', 'Ýzmir', '2003-08-30', 7)



create table ogr_iletisim(
ogriletisim_id int primary key NOT NULL,
ogr_eposta nvarchar (30) NOT NULL,
ogr_telno varchar (11),
ogr_id varchar (11) not null

FOREIGN KEY (ogr_id) REFERENCES ogrenci(ogr_id)
);

select*from ogr_iletisim

insert into ogr_iletisim values (1,'aliyilmaz@gmail.com','05311145581',60240000001);
insert into ogr_iletisim values (2,'aslanmurat@gmail.com','05095696226',60240000002);
insert into ogr_iletisim values (3,'silakaragoz@gmail.com','05314618837',60240000003);
insert into ogr_iletisim values (4,'ismailavcii@gmail.com','05993780497',60240000004);
insert into ogr_iletisim values (5,'bilgincanmurat@gmail.com','05599985563',60240000005);
insert into ogr_iletisim values (6,'senmustafa@gmail.com','05412987834',60240000006);
insert into ogr_iletisim values (7,'ayseguness@gmail.com','05475951322',60240000007);
insert into ogr_iletisim values (8,'demirceren@gmail.com','05877236303',60240000008);
insert into ogr_iletisim values (9,'furkangencc@gmail.com','05841377767',60240000009);
insert into ogr_iletisim values (10,'esmaaaktas@gmail.com','05641608510',60240000010);
insert into ogr_iletisim values (11,'ahmetunlu@gmail.com','05145436400',60240000011);
insert into ogr_iletisim values (12,'emreaygunn@gmail.com','05510796106',60240000012);
insert into ogr_iletisim values (13,'yamannayca@gmail.com','05566320708',60240000013);
insert into ogr_iletisim values (14,'mutlukemall@gmail.com','05788105592',60240000014);
insert into ogr_iletisim values (15,'gokhasan@gmail.com','05500221871',60240000015);
insert into ogr_iletisim values (16,'kilicleyla@gmail.com','05502842049',60240000016);
insert into ogr_iletisim values (17,'mehmetkuzey@gmail.com','05953899641',60240000017);
insert into ogr_iletisim values (18,'cobanselin@gmail.com','05729683633',60240000018);
insert into ogr_iletisim values (19,'taasdeniz@gmail.com','05099792669',60240000019);
insert into ogr_iletisim values (20,'sahinsudeem@gmail.com','05633848106',60240000020);
insert into ogr_iletisim values (21,'karaonurr@gmail.com','05238181659',60240000021);
insert into ogr_iletisim values (22,'yildirimahmet@gmail.com','05196705870',60240000022);
insert into ogr_iletisim values (23,'duyguaksoyduygu@gmail.com','05793811933',60240000023);
insert into ogr_iletisim values (24,'kaandogan4@gmail.com','05307236499',60240000024);
insert into ogr_iletisim values (25,'aylinkaya54@gmail.com','05331988199',60240000025);
insert into ogr_iletisim values (26,'gursoybaris@gmail.com','05083904069',60240000026);
insert into ogr_iletisim values (27,'avciisellin@gmail.com','05210127344',60240000027);
insert into ogr_iletisim values (28,'yasemindogan2@gmail.com','05286391208',60240000028);
insert into ogr_iletisim values (29,'onuryildiz@gmail.com','05637932446',60240000029);
insert into ogr_iletisim values (30,'tarikcann45@gmail.com','05806219092',60240000030);
insert into ogr_iletisim values (31,'ozderinn@gmail.com','05417457968',60240000031);
insert into ogr_iletisim values (32,'yarenuzun78@gmail.com','05775890435',60240000032);
insert into ogr_iletisim values (33,'leylabora09@gmail.com','05321433496',60240000033);
insert into ogr_iletisim values (34,'omersevgii@gmail.com','05073237088',60240000034);
insert into ogr_iletisim values (35,'budakaysel@gmail.com','05756778545',60240000035);
insert into ogr_iletisim values (36,'yalcnkadir@gmail.com','05586834612',60240000036);
insert into ogr_iletisim values (37,'muratyalin@gmail.com','05159914936',60240000037);
insert into ogr_iletisim values (38,'yasemineren87@gmail.com','05282418670',60240000038);
insert into ogr_iletisim values (39,'32akyuzehra@gmail.com','05903994867',60240000039);
insert into ogr_iletisim values (40,'tolgaerden34@gmail.com','05001955865',60240000040);
insert into ogr_iletisim values (41,'celikemirr6@gmail.com','05097784825',60240000041);
insert into ogr_iletisim values (42,'yakamel01@gmail.com','05437328140',60240000042);
insert into ogr_iletisim values (43,'yildizefe@gmail.com','05673972093',60240000043);
insert into ogr_iletisim values (44,'demir2ipek@gmail.com','05106716750',60240000044);
insert into ogr_iletisim values (45,'senberk@gmail.com','05021223284',60240000045);
insert into ogr_iletisim values (46,'yilmazcaner@gmail.com','05783619684',60240000046);
insert into ogr_iletisim values (47,'yagmurerdem33@gmail.com','05108743824',60240000047);
insert into ogr_iletisim values (48,'kurtcemrem00@gmail.com','05435473253',60240000048);
insert into ogr_iletisim values (49,'can11arslan9@gmail.com','05445262547',60240000049);
insert into ogr_iletisim values (50,'eliffyilmaz@gmail.com','05924017864',60240000050);
insert into ogr_iletisim values (51,'doganmert@gmail.com','05290173829',60240000051);
insert into ogr_iletisim values (52,'ylmzege@gmail.com','05199615696',60240000052);
insert into ogr_iletisim values (53,'krtsde@gmail.com','05356020077',60240000053);
insert into ogr_iletisim values (54,'ozturkburakn@gmail.com','05442416123',60240000054);
insert into ogr_iletisim values (55,'kermeyilmaz@gmail.com','05876506677',60240000055);
insert into ogr_iletisim values (56,'aylinates@gmail.com','05572308163',60240000056);
insert into ogr_iletisim values (57,'ezdemir44@gmail.com','05809635360',60240000057);
insert into ogr_iletisim values (58,'ardaguler@gmail.com','05423033645',60240000058);
insert into ogr_iletisim values (59,'aktasdeniz198@gmail.com','05200169238',60240000059);
insert into ogr_iletisim values (60,'melikearlsan@gmail.com','05892309309',60240000060);
insert into ogr_iletisim values (61,'eneskayaa@gmail.com','05960613167',60240000061);
insert into ogr_iletisim values (62,'efyilmaz@gmail.com','05209947174',60240000062);
insert into ogr_iletisim values (63,'ezgicetin@gmail.com','05343563608',60240000063);
insert into ogr_iletisim values (64,'yusuf777taskin@gmail.com','05869282882',60240000064);
insert into ogr_iletisim values (65,'selkurt73@gmail.com','05469527936',60240000065);
insert into ogr_iletisim values (66,'aydinahmetaydin@gmail.com','05415065682',60240000066);
insert into ogr_iletisim values (67,'selinyilmaz1036@gmail.com','05629166726',60240000067);
insert into ogr_iletisim values (68,'elkaraif@gmail.com','05605909252',60240000068);
insert into ogr_iletisim values (69,'emretoprak@gmail.com','05193955030',60240000069);
insert into ogr_iletisim values (70,'tarikcann@gmail.com','05224953437',60240000070);
insert into ogr_iletisim values (71,'aylingokturk@gmail.com','05628377093',60240000071);
insert into ogr_iletisim values (72,'bilgeyaren65@gmail.com','05432392467',60240000072);


create table ogr_giris(
ogr_id varchar (11) primary key,
ogr_sifre varchar(25) not null
FOREIGN KEY (ogr_id) REFERENCES ogrenci(ogr_id)

);


insert into Ogr_giris values(60240000001, 'aB3cDfGh');
insert into Ogr_giris values(60240000002, '1iJkLmNp');
insert into Ogr_giris values(60240000003, 'oP2qRsTu');
insert into Ogr_giris values(60240000004, 'vW3xYz1A');
insert into Ogr_giris values(60240000005, 'B2cDeF4G');
insert into Ogr_giris values(60240000006, 'hI5jK6Lm');
insert into Ogr_giris values(60240000007, 'Np7qRsTu');
insert into Ogr_giris values(60240000008, 'vW8xYz1A');
insert into Ogr_giris values(60240000009, 'B3cDeF4G');
insert into Ogr_giris values(60240000010, 'hI4jK6Lm');
insert into Ogr_giris values(60240000011, 'Np5qRsTu');
insert into Ogr_giris values(60240000012, 'vW6xYz1A');
insert into Ogr_giris values(60240000013, 'B7cDeF4G');
insert into Ogr_giris values(60240000014, 'hI8jK6Lm');
insert into Ogr_giris values(60240000015, 'Np9qRsTu');
insert into Ogr_giris values(60240000016, 'vW0xYz1A');
insert into Ogr_giris values(60240000017, 'B2cDeF4G');
insert into Ogr_giris values(60240000018, 'hI3jK6Lm');
insert into Ogr_giris values(60240000019, 'Np4qRsTu');
insert into Ogr_giris values(60240000020, 'vW5xYz1A');
insert into Ogr_giris values(60240000021, 'B6cDeF4G');
insert into Ogr_giris values(60240000022, 'hI7jK6Lm');
insert into Ogr_giris values(60240000023, 'Np8qRsTu');
insert into Ogr_giris values(60240000024, 'vW9xYz1A');
insert into Ogr_giris values(60240000025, 'B0cDeF4G');
insert into Ogr_giris values(60240000026, 'hI1jK6Lm');
insert into Ogr_giris values(60240000027, 'Np2qRsTu');
insert into Ogr_giris values(60240000028, 'vW3xYz1A');
insert into Ogr_giris values(60240000029, 'B4cDeF4G');
insert into Ogr_giris values(60240000030, 'hI5jK6Lm');
insert into Ogr_giris values(60240000031, 'Np6qRsTu');
insert into Ogr_giris values(60240000032, 'vW7xYz1A');
insert into Ogr_giris values(60240000033, 'B8cDeF4G');
insert into Ogr_giris values(60240000034, 'hI9jK6Lm');
insert into Ogr_giris values(60240000035, 'Np0qRsTu');
insert into Ogr_giris values(60240000036, 'vW1xYz1A');
insert into Ogr_giris values(60240000037, 'B2cDeF4G');
insert into Ogr_giris values(60240000038, 'hI3jK6Lm');
insert into Ogr_giris values(60240000039, 'Np4qRsTu');
insert into Ogr_giris values(60240000040, 'vW5xYz1A');
insert into Ogr_giris values(60240000041, 'B6cDeF4G');
insert into Ogr_giris values(60240000042, 'hI7jK6Lm');
insert into Ogr_giris values(60240000043, 'Np8qRsTu');
insert into Ogr_giris values(60240000044, 'vW9xYz1A');
insert into Ogr_giris values(60240000045, 'B0cDeF4G');
insert into Ogr_giris values(60240000046, 'hI1jK6Lm');
insert into Ogr_giris values(60240000047, 'Np2qRsTu');
insert into Ogr_giris values(60240000048, 'vW3xYz1A');
insert into Ogr_giris values(60240000049, 'B4cDeF4G');
insert into Ogr_giris values(60240000050, 'hI5jK6Lm');
insert into Ogr_giris values(60240000051, 'Np6qRsTu');
insert into Ogr_giris values(60240000052, 'vW7xYz1A');
insert into Ogr_giris values(60240000053, 'B8cDeF4G');
insert into Ogr_giris values(60240000054, 'hI9jK6Lm');
insert into Ogr_giris values(60240000055, 'Np0qRsTu');
insert into Ogr_giris values(60240000056, 'vW1xYz1A');
insert into Ogr_giris values(60240000057, 'B2cDeF4G');
insert into Ogr_giris values(60240000058, 'hI3jK6Lm');
insert into Ogr_giris values(60240000059, 'Np4qRsTu');
insert into Ogr_giris values(60240000060, 'vW5xYz1A');
insert into Ogr_giris values(60240000061, 'B6cDeF4G');
insert into Ogr_giris values(60240000062, 'hI7jK6Lm');
insert into Ogr_giris values(60240000063, 'Np8qRsTu');
insert into Ogr_giris values(60240000064, 'vW9xYz1A');
insert into Ogr_giris values(60240000065, 'B0cDeF4G');
insert into Ogr_giris values(60240000066, 'hI1jK6Lm');
insert into Ogr_giris values(60240000067, 'Np2qRsTu');
insert into Ogr_giris values(60240000068, 'vW3xYz1A');
insert into Ogr_giris values(60240000069, 'B4cDeF4G');
insert into Ogr_giris values(60240000070, 'hI5jK6Lm');
insert into Ogr_giris values(60240000071, 'Np6qRsTu');
insert into Ogr_giris values(60240000072, 'vW7xYz1A');





create table not_tablo (
not_id int primary key,
ogr_id varchar (11) not null,
ders_id int not null,
vize int not null,
final int not null,
butunleme int,
proje int not null,

foreign key (ogr_id) references ogrenci(ogr_id),
foreign key (ders_id) references ders(ders_id)
)

INSERT INTO not_tablo VALUES (1, 60240000001, 1, 85, 80, NULL, 50);
INSERT INTO not_tablo VALUES (2, 60240000001, 2, 70, 80, NULL, 75);
INSERT INTO not_tablo VALUES (3, 60240000001, 3, 100, 90, NULL, 60);
INSERT INTO not_tablo VALUES (4, 60240000001, 8, 50, 40, 90, 80);
INSERT INTO not_tablo VALUES (5, 60240000002, 1, 90, 70, NULL, 95);
INSERT INTO not_tablo VALUES (6, 60240000002, 2, 50, 80, NULL, 70);
INSERT INTO not_tablo VALUES (7, 60240000002, 3, 85, 90, NULL, 45);
INSERT INTO not_tablo VALUES (8, 60240000002, 13, 80, 80, NULL, 60);
INSERT INTO not_tablo VALUES (9, 60240000003, 1, 90, 90, NULL, 75);
INSERT INTO not_tablo VALUES (10, 60240000003, 2, 80, 80, NULL, 85);
INSERT INTO not_tablo VALUES (11, 60240000003, 3, 70, 80, NULL, 100);
INSERT INTO not_tablo VALUES (12, 60240000003, 16, 75, 80, NULL, 40);
INSERT INTO not_tablo VALUES (13, 60240000004, 1, 80, 60, NULL, 70);
INSERT INTO not_tablo VALUES (14, 60240000004, 2, 50, 75, NULL, 85);
INSERT INTO not_tablo VALUES (15, 60240000004, 3, 100, 80, NULL, 95);
INSERT INTO not_tablo VALUES (16, 60240000004, 19, 60, 80, NULL, 50);
INSERT INTO not_tablo VALUES (17, 60240000005, 1, 50, 40, 85, 70);
INSERT INTO not_tablo VALUES (18, 60240000005, 2, 85, 85, NULL, 80);
INSERT INTO not_tablo VALUES (19, 60240000005, 3, 85, 90, NULL, 90);
INSERT INTO not_tablo VALUES (20, 60240000005, 23, 70, 60, 80, 100);
INSERT INTO not_tablo VALUES (21, 60240000006, 1, 60, 60, NULL, 75);
INSERT INTO not_tablo VALUES (22, 60240000006, 2, 85, 70, NULL, 80);
INSERT INTO not_tablo VALUES (23, 60240000006, 3, 65, 80, NULL, 85);
INSERT INTO not_tablo VALUES (24, 60240000006, 8, 70, 80, NULL, 90);
INSERT INTO not_tablo VALUES (25, 60240000007, 1, 75, 80, NULL, 95);
INSERT INTO not_tablo VALUES (26, 60240000007, 2, 80, 90, NULL, 100);
INSERT INTO not_tablo VALUES (27, 60240000007, 3, 60, 80, NULL, 30);
INSERT INTO not_tablo VALUES (28, 60240000007, 23, 65, 80, NULL, 45);
INSERT INTO not_tablo VALUES (29, 60240000008, 1, 60, 70, NULL, 60);
INSERT INTO not_tablo VALUES (30, 60240000008, 2, 50, 50, 90, 75);
INSERT INTO not_tablo VALUES (31, 60240000008, 3, 85, 75, NULL, 85);
INSERT INTO not_tablo VALUES (32, 60240000008, 27, 70, 80, NULL, 100);
INSERT INTO not_tablo VALUES (33, 60240000009, 1, 60, 70, NULL, 50);
INSERT INTO not_tablo VALUES (34, 60240000009, 2, 80, 80, NULL, 70);
INSERT INTO not_tablo VALUES (35, 60240000009, 3, 85, 90, NULL, 90);
INSERT INTO not_tablo VALUES (36, 60240000009, 4, 70, 60, NULL, 80);
INSERT INTO not_tablo VALUES (37, 60240000010, 1, 55, 80, NULL, 100);
INSERT INTO not_tablo VALUES (38, 60240000010, 2, 90, 90, NULL, 80);
INSERT INTO not_tablo VALUES (39, 60240000010, 2, 85, 100, NULL, 60);
INSERT INTO not_tablo VALUES (40, 60240000010, 16, 70, 80, NULL, 50);
INSERT INTO not_tablo VALUES (41, 60240000010, 17, 65, 75, NULL, 30);
INSERT INTO not_tablo VALUES (42, 60240000011, 1, 55, 50, 90, 40);
INSERT INTO not_tablo VALUES (43, 60240000011, 2, 75, 60, NULL, 60);
INSERT INTO not_tablo VALUES (44, 60240000011, 3, 45, 50, 90, 80);
INSERT INTO not_tablo VALUES (45, 60240000011, 36, 65, 80, NULL, 100);
INSERT INTO not_tablo VALUES (46, 60240000012, 1, 65, 70, NULL, 80);
INSERT INTO not_tablo VALUES (47, 60240000012, 2, 80, 80, NULL, 60);
INSERT INTO not_tablo VALUES (48, 60240000012, 3, 70, 80, NULL, 40);
INSERT INTO not_tablo VALUES (49, 60240000012, 13, 55, 40, 80, 50);
INSERT INTO not_tablo VALUES (50, 60240000013, 1, 60, 70, NULL, 70);
INSERT INTO not_tablo VALUES (51, 60240000013, 2, 80, 85, NULL, 90);
INSERT INTO not_tablo VALUES (52, 60240000013, 3, 85, 85, NULL, 100);
INSERT INTO not_tablo VALUES (53, 60240000013, 23, 80, 70, NULL, 80);
INSERT INTO not_tablo VALUES (54, 60240000013, 24, 60, 60, 80, 60);
INSERT INTO not_tablo VALUES (55, 60240000014, 1, 50, 90, NULL, 40);
INSERT INTO not_tablo VALUES (56, 60240000014, 2, 70, 80, NULL, 60);
INSERT INTO not_tablo VALUES (57, 60240000014, 3, 80, 60, NULL, 80);
INSERT INTO not_tablo VALUES (58, 60240000014, 27, 100, 80, NULL, 100);
INSERT INTO not_tablo VALUES (59, 60240000015, 1, 80, 80, NULL, 80);
INSERT INTO not_tablo VALUES (60, 60240000015, 2, 70, 60, NULL, 60);
INSERT INTO not_tablo VALUES (61, 60240000015, 3, 40, 50, 90, 40);
INSERT INTO not_tablo VALUES (62, 60240000015, 19, 100, 100, NULL, 60);
INSERT INTO not_tablo VALUES (63, 60240000016, 1, 95, 80, NULL, 80);
INSERT INTO not_tablo VALUES (64, 60240000016, 2, 80, 80, NULL, 60);
INSERT INTO not_tablo VALUES (65, 60240000016, 3, 70, 70, NULL, 40);
INSERT INTO not_tablo VALUES (66, 60240000016, 23, 85, 90, NULL, 50);
INSERT INTO not_tablo VALUES (67, 60240000016, 24, 50, 80, NULL, 70);
INSERT INTO not_tablo VALUES (68, 60240000017, 1, 85, 80, NULL, 90);
INSERT INTO not_tablo VALUES (69, 60240000017, 2, 75, 70, NULL, 100);
INSERT INTO not_tablo VALUES (70, 60240000017, 3, 30, 0, 90, 80);
INSERT INTO not_tablo VALUES (71, 60240000017, 27, 95, 80, NULL, 60);
INSERT INTO not_tablo VALUES (72, 60240000017, 28, 55, 80, NULL, 40);
INSERT INTO not_tablo VALUES (73, 60240000018, 1, 85, 85, NULL, 50);
INSERT INTO not_tablo VALUES (74, 60240000018, 2, 70, 80, NULL, 70);
INSERT INTO not_tablo VALUES (75, 60240000018, 3, 60, 60, NULL, 90);
INSERT INTO not_tablo VALUES (76, 60240000018, 31, 60, 70, NULL, 100);
INSERT INTO not_tablo VALUES (77, 60240000019, 1, 40, 50, 70, 80);
INSERT INTO not_tablo VALUES (78, 60240000019, 2, 60, 80, NULL, 60);
INSERT INTO not_tablo VALUES (79, 60240000019, 3, 50, 90, NULL, 40);
INSERT INTO not_tablo VALUES (80, 60240000019, 36, 85, 85, NULL, 30);
INSERT INTO not_tablo VALUES (81, 60240000020, 1, 65, 50, 80, 90);
INSERT INTO not_tablo VALUES (82, 60240000020, 2, 80, 80, NULL, 100);
INSERT INTO not_tablo VALUES (83, 60240000020, 3, 70, 75, NULL, 80);
INSERT INTO not_tablo VALUES (84, 60240000020, 36, 80, 80, NULL, 60);
INSERT INTO not_tablo VALUES (85, 60240000021, 1, 85, 80, NULL, 40);
INSERT INTO not_tablo VALUES (86, 60240000021, 2, 95, 90, NULL, 50);
INSERT INTO not_tablo VALUES (87, 60240000021, 3, 100, 90, NULL, 60);
INSERT INTO not_tablo VALUES (88, 60240000021, 31, 80, 80, NULL, 70);
INSERT INTO not_tablo VALUES (89, 60240000022, 1, 80, 80, NULL, 80);
INSERT INTO not_tablo VALUES (90, 60240000022, 2, 70, 80, NULL, 90);
INSERT INTO not_tablo VALUES (91, 60240000022, 3, 60, 50, 70, 80);
INSERT INTO not_tablo VALUES (92, 60240000022, 4, 50, 50, 80, 100);
INSERT INTO not_tablo VALUES (93, 60240000022, 5, 80, 80, NULL, 60);
INSERT INTO not_tablo VALUES (94, 60240000023, 1, 60, 80, NULL, 70);
INSERT INTO not_tablo VALUES (95, 60240000023, 2, 70, 70, NULL, 80);
INSERT INTO not_tablo VALUES (96, 60240000023, 3, 85, 80, NULL, 90);
INSERT INTO not_tablo VALUES (97, 60240000023, 19, 80, 80, NULL, 100);
INSERT INTO not_tablo VALUES (98, 60240000023, 20, 70, 50, NULL, 30);
INSERT INTO not_tablo VALUES (99, 60240000024, 1, 60, 80, NULL, 40);
INSERT INTO not_tablo VALUES (100, 60240000024, 2, 100, 90, NULL, 50);
INSERT INTO not_tablo VALUES (101, 60240000024, 3, 95, 80, NULL, 60);
INSERT INTO not_tablo VALUES (102, 60240000024, 8, 75, 70, NULL, 70);
INSERT INTO not_tablo VALUES (103, 60240000024, 9, 80, 80, NULL, 80);
INSERT INTO not_tablo VALUES (104, 60240000025, 1, 60, 70, NULL, 90);
INSERT INTO not_tablo VALUES (105, 60240000025, 2, 75, 70, NULL, 100);
INSERT INTO not_tablo VALUES (106, 60240000025, 3, 95, 100, NULL, 80);
INSERT INTO not_tablo VALUES (107, 60240000025, 23, 85, 90, NULL, 60);
INSERT INTO not_tablo VALUES (108, 60240000025, 24, 85, 75, NULL, 40);
INSERT INTO not_tablo VALUES (109, 60240000026, 1, 100, 100, NULL, 50);
INSERT INTO not_tablo VALUES (110, 60240000026, 2, 55, 60, 80, 60);
INSERT INTO not_tablo VALUES (111, 60240000026, 3, 60, 60, NULL, 70);
INSERT INTO not_tablo VALUES (112, 60240000026, 19, 80, 80, NULL, 80);
INSERT INTO not_tablo VALUES (113, 60240000026, 20, 65, 70, NULL, 90);
INSERT INTO not_tablo VALUES (114, 60240000027, 1, 65, 60, NULL, 100);
INSERT INTO not_tablo VALUES (115, 60240000027, 2, 80, 80, NULL, 80);
INSERT INTO not_tablo VALUES (116, 60240000027, 3, 85, 90, NULL, 60);
INSERT INTO not_tablo VALUES (117, 60240000027, 27, 70, 70, NULL, 40);
INSERT INTO not_tablo VALUES (118, 60240000027, 28, 55, 55, 80, 30);
INSERT INTO not_tablo VALUES (119, 60240000028, 1, 80, 80, NULL, 40);
INSERT INTO not_tablo VALUES (120, 60240000028, 2, 85, 100, NULL, 50);
INSERT INTO not_tablo VALUES (121, 60240000028, 3, 95, 90, NULL, 60);
INSERT INTO not_tablo VALUES (122, 60240000028, 13, 75, 75, NULL, 70);
INSERT INTO not_tablo VALUES (123, 60240000029, 1, 60, 70, NULL, 80);
INSERT INTO not_tablo VALUES (124, 60240000029, 2, 85, 85, 80, 90);
INSERT INTO not_tablo VALUES (125, 60240000029, 3, 80, 80, NULL, 100);
INSERT INTO not_tablo VALUES (126, 60240000029, 36, 85, 80, NULL, 60);
INSERT INTO not_tablo VALUES (127, 60240000029, 37, 85, 80, NULL, 70);
INSERT INTO not_tablo VALUES (128, 60240000030, 1, 85, 80, NULL, 80);
INSERT INTO not_tablo VALUES (129, 60240000030, 2, 85, 80, NULL, 90);
INSERT INTO not_tablo VALUES (130, 60240000030, 3, 85, 80, NULL, 100);
INSERT INTO not_tablo VALUES (131, 60240000030, 8, 85, 80, NULL, 30);
INSERT INTO not_tablo VALUES (132, 60240000030, 9, 85, 80, NULL, 40);
INSERT INTO not_tablo VALUES (133, 60240000031, 1, 85, 80, NULL, 50);
INSERT INTO not_tablo VALUES (134, 60240000031, 2, 85, 80, NULL, 60);
INSERT INTO not_tablo VALUES (135, 60240000031, 3, 85, 80, NULL, 70);
INSERT INTO not_tablo VALUES (136, 60240000031, 13, 85, 80, NULL, 80);
INSERT INTO not_tablo VALUES (137, 60240000031, 14, 85, 80, NULL, 90);
INSERT INTO not_tablo VALUES (138, 60240000032, 1, 85, 80, NULL, 100);
INSERT INTO not_tablo VALUES (139, 60240000032, 2, 85, 80, NULL, 30);
INSERT INTO not_tablo VALUES (140, 60240000032, 3, 85, 80, NULL, 40);
INSERT INTO not_tablo VALUES (141, 60240000032, 31, 85, 80, NULL, 50);
INSERT INTO not_tablo VALUES (142, 60240000032, 32, 85, 80, 90, 60);
INSERT INTO not_tablo VALUES (143, 60240000033, 1, 85, 80, NULL, 70);
INSERT INTO not_tablo VALUES (144, 60240000033, 2, 85, 80, NULL, 80);
INSERT INTO not_tablo VALUES (145, 60240000033, 3, 85, 80, NULL, 90);
INSERT INTO not_tablo VALUES (146, 60240000033, 36, 85, 80, NULL, 100);
INSERT INTO not_tablo VALUES (147, 60240000033, 37, 85, 80, NULL, 60);
INSERT INTO not_tablo VALUES (148, 60240000034, 1, 85, 80, NULL, 70);
INSERT INTO not_tablo VALUES (149, 60240000034, 2, 85, 80, NULL, 80);
INSERT INTO not_tablo VALUES (150, 60240000034, 3, 85, 80, NULL, 90);
INSERT INTO not_tablo VALUES (151, 60240000034, 4, 85, 80, NULL, 100);
INSERT INTO not_tablo VALUES (152, 60240000034, 5, 85, 80, NULL, 30);
insert into not_tablo values(153, 60240000035, 1, 85, 80, null, 45);
insert into not_tablo values(154, 60240000035, 2, 85, 80, null, 62);
insert into not_tablo values(155, 60240000035, 3, 85, 80, null, 77);
insert into not_tablo values(156, 60240000035, 13, 85, 80, null, 50);
insert into not_tablo values(157, 60240000035, 14, 85, 80, null, 90);
insert into not_tablo values(158, 60240000036, 1, 85, 80, null, 55);
insert into not_tablo values(159, 60240000036, 2, 85, 80, null, 80);
insert into not_tablo values(160, 60240000036, 3, 40, 80, 100, 65);
insert into not_tablo values(161, 60240000036, 16, 85, 80, null, 92);
insert into not_tablo values(162, 60240000036, 17, 85, 80, null, 47);
insert into not_tablo values(163, 60240000036, 18, 85, 80, null, 72);
insert into not_tablo values(164, 60240000037, 1, 85, 80, null, 55);
insert into not_tablo values(165, 60240000037, 2, 85, 80, null, 88);
insert into not_tablo values(166, 60240000037, 3, 85, 80, null, 41);
insert into not_tablo values(167, 60240000037, 19, 85, 80, null, 78);
insert into not_tablo values(168, 60240000037, 20, 85, 80, null, 53);
insert into not_tablo values(169, 60240000037, 21, 85, 80, null, 69);
insert into not_tablo values(170, 60240000038, 1, 85, 80, null, 84);
insert into not_tablo values(171, 60240000038, 2, 85, 80, null, 47);
insert into not_tablo values(172, 60240000038, 3, 85, 80, null, 60);
insert into not_tablo values(173, 60240000038, 8, 85, 80, null, 95);
insert into not_tablo values(174, 60240000038, 9, 85, 80, null, 42);
insert into not_tablo values(175, 60240000039, 1, 85, 80, null, 75);
insert into not_tablo values(176, 60240000039, 2, 85, 80, null, 50);
insert into not_tablo values(177, 60240000039, 3, 85, 80, null, 87);
insert into not_tablo values(178, 60240000039, 36, 85, 80, null, 58);
insert into not_tablo values(179, 60240000039, 37, 85, 80, null, 79);
insert into not_tablo values(180, 60240000039, 38, 85, 80, null, 44);
insert into not_tablo values(181, 60240000040, 1, 85, 80, null, 63);
insert into not_tablo values(182, 60240000040, 2, 85, 80, null, 82);
insert into not_tablo values(183, 60240000040, 3, 85, 80, null, 46);
insert into not_tablo values(184, 60240000040, 31, 85, 80, null, 71);
insert into not_tablo values(185, 60240000040, 32, 85, 80, null, 94);
insert into not_tablo values(186, 60240000041, 1, 85, 80, null, 55);
insert into not_tablo values(187, 60240000041, 2, 85, 80, null, 88);
insert into not_tablo values(188, 60240000041, 3, 85, 80, null, 41);
insert into not_tablo values(189, 60240000041, 8, 85, 80, null, 78);
insert into not_tablo values(190, 60240000041, 9, 85, 80, null, 53);
insert into not_tablo values(191, 60240000041, 10, 85, 80, null, 69);
insert into not_tablo values(192, 60240000042, 1, 85, 80, null, 84);
insert into not_tablo values(193, 60240000042, 2, 85, 80, null, 47);
insert into not_tablo values(194, 60240000042, 3, 85, 80, null, 60);
insert into not_tablo values(195, 60240000042, 13, 85, 80, null, 95);
insert into not_tablo values(196, 60240000042, 14, 85, 80, null, 42);
insert into not_tablo values(197, 60240000042, 15, 85, 80, null, 75);
insert into not_tablo values(198, 60240000043, 1, 85, 80, null, 92);
insert into not_tablo values(199, 60240000043, 2, 85, 80, null, 78);
insert into not_tablo values(200, 60240000043, 3, 85, 80, null, 55);
insert into not_tablo values(201, 60240000043, 16, 85, 80, null, 63);
insert into not_tablo values(202, 60240000043, 17, 85, 80, null, 85);
insert into not_tablo values(203, 60240000043, 18, 85, 80, null, 70);
insert into not_tablo values(204, 60240000044, 1, 85, 80, null, 42);
insert into not_tablo values(205, 60240000044, 2, 85, 80, null, 90);
insert into not_tablo values(206, 60240000044, 3, 85, 80, null, 57);
insert into not_tablo values(207, 60240000044, 19, 85, 80, null, 80);
insert into not_tablo values(208, 60240000044, 20, 85, 80, null, 68);
insert into not_tablo values(209, 60240000044, 21, 85, 80, null, 74);
insert into not_tablo values(210, 60240000045, 1, 85, 80, null, 48);
insert into not_tablo values(211, 60240000045, 2, 85, 80, null, 72);
insert into not_tablo values(212, 60240000045, 3, 85, 80, null, 89);
insert into not_tablo values(213, 60240000045, 23, 85, 80, null, 53);
insert into not_tablo values(214, 60240000045, 24, 85, 80, null, 61);
insert into not_tablo values(215, 60240000045, 25, 85, 80, null, 98);
insert into not_tablo values(216, 60240000046, 1, 85, 80, null, 79);
insert into not_tablo values(217, 60240000046, 2, 85, 80, null, 45);
insert into not_tablo values(218, 60240000046, 3, 85, 80, null, 66);
insert into not_tablo values(219, 60240000046, 8, 85, 80, null, 88);
insert into not_tablo values(220, 60240000046, 9, 85, 80, null, 52);
insert into not_tablo values(221, 60240000046, 10, 85, 80, null, 71);
insert into not_tablo values(222, 60240000047, 1, 85, 80, null, 75);
insert into not_tablo values(223, 60240000047, 2, 85, 80, null, 86);
insert into not_tablo values(224, 60240000047, 3, 85, 80, null, 60);
insert into not_tablo values(225, 60240000047, 23, 85, 80, null, 91);
insert into not_tablo values(226, 60240000047, 24, 85, 80, null, 50);
insert into not_tablo values(227, 60240000047, 25, 85, 80, null, 74);
insert into not_tablo values(228, 60240000048, 1, 85, 80, null, 82);
insert into not_tablo values(229, 60240000048, 2, 85, 80, null, 46);
insert into not_tablo values(230, 60240000048, 3, 85, 80, null, 68);
insert into not_tablo values(231, 60240000048, 27, 85, 80, null, 93);
insert into not_tablo values(232, 60240000048, 28, 85, 80, null, 56);
insert into not_tablo values(233, 60240000048, 29, 85, 80, null, 77);
insert into not_tablo values(234, 60240000049, 1, 85, 80, null, 89);
insert into not_tablo values(235, 60240000049, 2, 85, 80, null, 63);
insert into not_tablo values(236, 60240000049, 3, 85, 80, null, 55);
insert into not_tablo values(237, 60240000049, 4, 85, 80, null, 71);
insert into not_tablo values(238, 60240000049, 5, 85, 80, null, 92);
insert into not_tablo values(239, 60240000049, 6, 85, 80, null, 80);
insert into not_tablo values(240, 60240000050, 1, 85, 80, null, 65);
insert into not_tablo values(241, 60240000050, 2, 85, 80, null, 84);
insert into not_tablo values(242, 60240000050, 3, 85, 80, null, 47);
insert into not_tablo values(243, 60240000050, 16, 85, 80, null, 59);
insert into not_tablo values(244, 60240000050, 17, 85, 80, null, 73);
insert into not_tablo values(245, 60240000050, 18, 85, 80, null, 97);
insert into not_tablo values(246, 60240000050, 12, 85, 80, null, 52);
insert into not_tablo values(247, 60240000051, 1, 85, 80, null, 68);
insert into not_tablo values(248, 60240000051, 2, 85, 80, null, 81);
insert into not_tablo values(249, 60240000051, 3, 85, 80, null, 45);
insert into not_tablo values(250, 60240000051, 36, 85, 80, null, 64);
insert into not_tablo values(251, 60240000051, 37, 85, 80, null, 88);
insert into not_tablo values(252, 60240000051, 38, 85, 80, null, 50);
insert into not_tablo values(253, 60240000052, 1, 85, 80, null, 75);
insert into not_tablo values(254, 60240000052, 2, 85, 80, null, 92);
insert into not_tablo values(255, 60240000052, 3, 85, 80, null, 67);
insert into not_tablo values(256, 60240000052, 13, 85, 80, null, 78);
insert into not_tablo values(257, 60240000052, 14, 85, 80, null, 59);
insert into not_tablo values(258, 60240000052, 15, 85, 80, null, 84);
insert into not_tablo values(259, 60240000053, 1, 85, 80, null, 94);
insert into not_tablo values(260, 60240000053, 2, 85, 80, null, 50);
insert into not_tablo values(261, 60240000053, 3, 85, 80, null, 66);
insert into not_tablo values(262, 60240000053, 19, 85, 80, null, 81);
insert into not_tablo values(263, 60240000053, 20, 85, 80, null, 57);
insert into not_tablo values(264, 60240000053, 21, 85, 80, null, 73);
insert into not_tablo values(265, 60240000053, 22, 85, 80, null, 89);
insert into not_tablo values(266, 60240000054, 1, 85, 80, null, 92);
insert into not_tablo values(267, 60240000054, 2, 85, 80, null, 61);
insert into not_tablo values(268, 60240000054, 3, 85, 80, null, 74);
insert into not_tablo values(269, 60240000054, 27, 85, 80, null, 48);
insert into not_tablo values(270, 60240000054, 28, 85, 80, null, 70);
insert into not_tablo values(271, 60240000054, 29, 85, 80, null, 85);
insert into not_tablo values(272, 60240000055, 1, 85, 80, null, 57);
insert into not_tablo values(273, 60240000055, 2, 85, 80, null, 79);
insert into not_tablo values(274, 60240000055, 3, 85, 80, null, 93);
insert into not_tablo values(275, 60240000055,23, 85, 80, null, 62);
insert into not_tablo values(276, 60240000055, 24, 85, 80, null, 88);
insert into not_tablo values(277, 60240000055, 25, 85, 80, null, 55);
insert into not_tablo values(278, 60240000056, 1, 85, 80, null, 76);
insert into not_tablo values(279, 60240000056, 2, 85, 80, null, 49);
insert into not_tablo values(280, 60240000056, 3, 85, 80, null, 67);
insert into not_tablo values(281, 60240000056, 19, 85, 80, null, 82);
insert into not_tablo values(282, 60240000056, 20, 85, 80, null, 59);
insert into not_tablo values(283, 60240000056, 21, 85, 80, null, 70);
insert into not_tablo values(284, 60240000056, 22, 85, 80, null, 90);
insert into not_tablo values(285, 60240000057, 1, 85, 80, null, 53);
insert into not_tablo values(286, 60240000057, 2, 85, 80, null, 68);
insert into not_tablo values(289, 60240000057, 3, 85, 80, null, 87);
insert into not_tablo values(290, 60240000057, 27, 85, 80, null, 79);
insert into not_tablo values(291, 60240000057, 28, 85, 80, null, 62);
insert into not_tablo values(292, 60240000057, 29, 85, 80, null, 91);
insert into not_tablo values(293, 60240000057, 30, 85, 80, null, 46);
insert into not_tablo values(294, 60240000058, 1, 85, 80, null, 65);
insert into not_tablo values(295, 60240000058, 2, 85, 80, null, 84);
insert into not_tablo values(296, 60240000058, 3, 85, 80, null, 57);
insert into not_tablo values(297, 60240000058, 31, 85, 80, null, 71);
insert into not_tablo values(298, 60240000058, 32, 85, 80, null, 67);
insert into not_tablo values(299, 60240000058, 33, 85, 80, null, 88);
insert into not_tablo values(300, 60240000059, 1, 85, 80, null, 74);
insert into not_tablo values(301, 60240000059, 2, 85, 80, null, 92);
insert into not_tablo values(302, 60240000059, 3, 85, 80, null, 78);
insert into not_tablo values(303, 60240000059, 36, 85, 80, null, 85);
insert into not_tablo values(304, 60240000059, 37, 85, 80, null, 60);
insert into not_tablo values(305, 60240000059, 38, 85, 80, null, 94);
insert into not_tablo values(306, 60240000059, 39, 85, 80, null, 72);
insert into not_tablo values(307, 60240000059, 40, 85, 80, null, 89);
insert into not_tablo values(308, 60240000060, 36, 85, 80, null, 81);
insert into not_tablo values(309, 60240000060, 37, 85, 80, null, 70);
insert into not_tablo values(310, 60240000060, 38, 85, 80, null, 83);
insert into not_tablo values(311, 60240000060, 39, 85, 80, null, 76);
insert into not_tablo values(312, 60240000060, 40, 85, 80, null, 90);
insert into not_tablo values(313, 60240000061, 1, 85, 80, null, 68);
insert into not_tablo values(314, 60240000061, 2, 85, 80, null, 87);
insert into not_tablo values(315, 60240000061, 3, 85, 80, null, 79);
insert into not_tablo values(316, 60240000061, 31, 85, 80, null, 91);
insert into not_tablo values(317, 60240000061, 32, 85, 80, null, 65);
insert into not_tablo values(318, 60240000061, 33, 85, 80, null, 82);
insert into not_tablo values(319, 60240000061, 34, 85, 80, null, 75);
insert into not_tablo values(320, 60240000062, 1, 85, 80, null, 93);
insert into not_tablo values(321, 60240000062, 2, 85, 80, null, 77);
insert into not_tablo values(322, 60240000062, 3, 85, 80, null, 86);
insert into not_tablo values(323, 60240000062, 4, 85, 80, null, 69);
insert into not_tablo values(324, 60240000062, 5, 85, 80, null, 80);
insert into not_tablo values(325, 60240000062, 6, 85, 80, null, 73);
insert into not_tablo values(326, 60240000062, 7, 85, 80, null, 84);
insert into not_tablo values(327, 60240000063, 1, 85, 80, null, 66);
insert into not_tablo values(328, 60240000063, 2, 85, 80, null, 89);
insert into not_tablo values(329, 60240000063, 3, 85, 80, null, 77);
insert into not_tablo values(330, 60240000063, 23, 85, 80, null, 91);
insert into not_tablo values(331, 60240000063, 24, 85, 80, null, 68);
insert into not_tablo values(332, 60240000063, 25, 85, 80, null, 82);
insert into not_tablo values(333, 60240000063, 26, 85, 80, null, 75);
insert into not_tablo values(334, 60240000064, 1, 85, 80, null, 94);
insert into not_tablo values(335, 60240000064, 2, 85, 80, null, 72);
insert into not_tablo values(336, 60240000064, 3, 85, 80, null, 89);
insert into not_tablo values(337, 60240000064, 8, 85, 80, null, 81);
insert into not_tablo values(338, 60240000064, 9, 85, 80, null, 70);
insert into not_tablo values(339, 60240000064, 10, 85, 80, null, 83);
insert into not_tablo values(340, 60240000064, 11, 85, 80, null, 76);
insert into not_tablo values(341, 60240000064, 12, 85, 80, null, 90);
insert into not_tablo values(342, 60240000065, 1, 85, 80, null, 68);
insert into not_tablo values(343, 60240000065, 2, 85, 80, null, 87);
insert into not_tablo values(344, 60240000065, 3, 85, 80, null, 79);
insert into not_tablo values(345, 60240000065, 19, 85, 80, null, 91);
insert into not_tablo values(346, 60240000065, 20, 85, 80, null, 65);
insert into not_tablo values(347, 60240000065, 21, 85, 80, null, 82);
insert into not_tablo values(348, 60240000065, 22, 85, 80, null, 75);
insert into not_tablo values(349, 60240000066, 1, 85, 80, null, 93);
insert into not_tablo values(350, 60240000066, 2, 85, 80, null, 77);
insert into not_tablo values(351, 60240000066, 3, 85, 80, null, 15);
insert into not_tablo values(352, 60240000066, 23, 85, 80, null, 42);
insert into not_tablo values(353, 60240000066, 24, 85, 80, null, 7);
insert into not_tablo values(354, 60240000066, 25, 85, 80, null, 29);
insert into not_tablo values(355, 60240000066, 26, 85, 80, null, 18);
insert into not_tablo values(356, 60240000067, 1, 85, 80, null, 3);
insert into not_tablo values(357, 60240000067, 2, 85, 80, null, 36);
insert into not_tablo values(358, 60240000067, 3, 85, 80, null, 10);
insert into not_tablo values(359, 60240000067, 27, 85, 80, null, 48);
insert into not_tablo values(360, 60240000067, 28, 85, 80, null, 1);
insert into not_tablo values(361, 60240000067, 29, 85, 80, null, 20);
insert into not_tablo values(362, 60240000067, 30, 85, 80, null, 45);
insert into not_tablo values(363, 60240000068, 1, 85, 80, null, 14);
insert into not_tablo values(364, 60240000068, 2, 85, 80, null, 33);
insert into not_tablo values(365, 60240000068, 3, 85, 80, null, 5);
insert into not_tablo values(366, 60240000068, 13, 85, 80, null, 22);
insert into not_tablo values(367, 60240000068, 14, 85, 80, null, 39);
insert into not_tablo values(368, 60240000068, 15, 85, 80, null, 11);
insert into not_tablo values(369, 60240000068, 19, 85, 80, null, 26);
insert into not_tablo values(370, 60240000069, 1, 85, 80, null, 40);
insert into not_tablo values(371, 60240000069, 2, 85, 80, null, 2);
insert into not_tablo values(372, 60240000069, 3, 85, 80, null, 37);
insert into not_tablo values(373, 60240000069, 36, 85, 80, null, 8);
insert into not_tablo values(374, 60240000069, 37, 85, 80, null, 21);
insert into not_tablo values(375, 60240000069, 38, 85, 80, null, 46);
insert into not_tablo values(376, 60240000069, 39, 85, 80, null, 19);
insert into not_tablo values(377, 60240000069, 40, 85, 80, null, 13);
insert into not_tablo values(378, 60240000070, 0, 85, 80, null, 35);
insert into not_tablo values(379, 60240000070, 2, 85, 80, null, 9);
insert into not_tablo values(380, 60240000070, 3, 85, 80, null, 28);
insert into not_tablo values(381, 60240000070, 8, 85, 80, null, 49);
insert into not_tablo values(382, 60240000070, 9, 85, 80, null, 4);
insert into not_tablo values(383, 60240000070, 10, 85, 80, null, 30);
insert into not_tablo values(384, 60240000070, 11, 85, 80, null, 47);
insert into not_tablo values(385, 60240000070, 12, 85, 80, null, 6);
insert into not_tablo values(386, 60240000071, 1, 85, 80, null, 41);
insert into not_tablo values(387, 60240000071, 2, 85, 80, null, 16);
insert into not_tablo values(388, 60240000071, 3, 85, 80, null, 34);
insert into not_tablo values(389, 60240000071, 13, 85, 80, null, 12);
insert into not_tablo values(390, 60240000071, 14, 85, 80, null, 27);
insert into not_tablo values(391, 60240000071, 15, 85, 80, null, 50);
insert into not_tablo values(392, 60240000071, 19, 85, 80, null, 23);
insert into not_tablo values(393, 60240000072, 1, 85, 80, null, 38);
insert into not_tablo values(394, 60240000072, 2, 85, 80, null, 17);
insert into not_tablo values(395, 60240000072, 3, 85, 80, null, 44);
insert into not_tablo values(396, 60240000072, 31, 85, 80, null, 24);
insert into not_tablo values(397, 60240000072, 32, 85, 80, null, 43);
insert into not_tablo values(398, 60240000072, 33, 85, 80, null, 32);
insert into not_tablo values(399, 60240000072, 34, 85, 80, null, 25);



create table devamsýzlýk(
devamsýzlýk_id int primary key NOT NULL,
ogr_id varchar (11) NOT NULL,
ogr_ad varchar(20) NOT NULL,
ogr_soyad varchar(20)NOT NULL,
d_sayýsý int NOT NULL,

FOREIGN KEY (ogr_id) REFERENCES Ogrenci(ogr_id)
);

select *from devamsýzlýk
insert into devamsýzlýk values(1,60240000001,'ali','yýlmaz',2)
insert into devamsýzlýk values(2,60240000002,'murat','aslan',3)
insert into devamsýzlýk values(3,60240000003,'sýla','karagöz',4)
insert into devamsýzlýk values(4,60240000004,'ismail','avcý',1)
insert into devamsýzlýk values(5,60240000005,'muratcan','bilgin',1)
insert into devamsýzlýk values(6,60240000006,'mustafa','þen',10)
insert into devamsýzlýk values(7,60240000007,'ayþe','güneþ',6)
insert into devamsýzlýk values(8,60240000008,'ceren','demir',1)
insert into devamsýzlýk values(9,60240000009,'furkan','genç',1)
insert into devamsýzlýk values(10,60240000010,'esma','aktaþ',2)
insert into devamsýzlýk values(11,60240000011,'ahmet','ünlü',11)
insert into devamsýzlýk values(12,60240000012,'emre','aygün',5)
insert into devamsýzlýk values(13,60240000013,'ayça','yaman',2)
insert into devamsýzlýk values(14,60240000014,'kemal','mutlu',10)
insert into devamsýzlýk values(15,60240000015,'hasan','gök',2)
insert into devamsýzlýk values(16,60240000016,'leyla','kýlýç',3)
insert into devamsýzlýk values(17,60240000017,'mehmet','kuzey',4)
insert into devamsýzlýk values(18,60240000018,'selin','çoban',3)
insert into devamsýzlýk values(19,60240000019,'deniz','taþ',2)
insert into devamsýzlýk values(20,60240000020,'sude','þahin',5)
insert into devamsýzlýk values(21,60240000021,'onur','kara',6)
insert into devamsýzlýk values(22,60240000022,'ahmet','yýldýrým',7)
insert into devamsýzlýk values(23,60240000023,'duygu','aksoy',9)
insert into devamsýzlýk values(24,60240000024,'kaan','doðan',8)
insert into devamsýzlýk values(25,60240000025,'aylin','kaya',8)
insert into devamsýzlýk values(26,60240000026,'barýþ','gürsoy',9)
insert into devamsýzlýk values(27,60240000027,'selin','avcý',1)
insert into devamsýzlýk values(28,60240000028,'yasemin','doðan',10)
insert into devamsýzlýk values(29,60240000029,'onur','yýldýz',2)
insert into devamsýzlýk values(30,60240000030,'tarýk','can',10)
insert into devamsýzlýk values(31,60240000031,'derin','öz',10)
insert into devamsýzlýk values(32,60240000032,'yaren','uzun',2)
insert into devamsýzlýk values(33,60240000033,'leyla','bora',10)
insert into devamsýzlýk values(34,60240000034,'ömer','sevgi',3)
insert into devamsýzlýk values(35,60240000035,'aysel','budak',4)
insert into devamsýzlýk values(36,60240000036,'kadir','yalçýn',11)
insert into devamsýzlýk values(37,60240000037,'murat','yalýn',12)
insert into devamsýzlýk values(38,60240000038,'yasemin','eren',5)
insert into devamsýzlýk values(39,60240000039,'zehra','akyüz',5)
insert into devamsýzlýk values(40,60240000040,'tolga','erden',15)
insert into devamsýzlýk values(41,60240000041,'emir','çelik',6)
insert into devamsýzlýk values(42,60240000042,'melis','kaya',8)
insert into devamsýzlýk values(43,60240000043,'efe','yýldýz',10)
insert into devamsýzlýk values(44,60240000044,'ipek','demir',12)
insert into devamsýzlýk values(45,60240000045,'berk','þen',11)
insert into devamsýzlýk values(46,60240000046,'caner','yýlmaz',9)
insert into devamsýzlýk values(47,60240000047,'yaðmur','erdem',9)
insert into devamsýzlýk values(48,60240000048,'cemre','kurt',8)
insert into devamsýzlýk values(49,60240000049,'can','arslan',5)
insert into devamsýzlýk values(50,60240000050,'elif','yýlmaz',4)
insert into devamsýzlýk values(51,60240000051,'mert','doðan',1)
insert into devamsýzlýk values(52,60240000052,'ege','yýlmaz',3)
insert into devamsýzlýk values(53,60240000053,'sude','kurt',1)
insert into devamsýzlýk values(54,60240000054,'burak','öztürk',5)
insert into devamsýzlýk values(55,60240000055,'kerem','yýlmaz',5)
insert into devamsýzlýk values(56,60240000056,'aylin','ateþ',1)
insert into devamsýzlýk values(57,60240000057,'ezgi','demir',3)
insert into devamsýzlýk values(58,60240000058,'arda','güler',2)
insert into devamsýzlýk values(59,60240000059,'deniz','aktaþ',1)
insert into devamsýzlýk values(60,60240000060,'melike','arslan',10)
insert into devamsýzlýk values(61,60240000061,'enes','kaya',2)
insert into devamsýzlýk values(62,60240000062,'efe','yýlmaz',20)
insert into devamsýzlýk values(63,60240000063,'ezgi','çetin',3)
insert into devamsýzlýk values(64,60240000064,'yusuf','taþkýn',6)
insert into devamsýzlýk values(65,60240000065,'selin','kurt',7)
insert into devamsýzlýk values(66,60240000066,'ahmet','aydýn',6)
insert into devamsýzlýk values(67,60240000067,'selin','yýlmaz',4)
insert into devamsýzlýk values(68,60240000068,'elif','kara',3)
insert into devamsýzlýk values(69,60240000069,'emre','toprak',1)
insert into devamsýzlýk values(70,60240000070,'tarýk','can',2)
insert into devamsýzlýk values(71,60240000071,'aylin','göktürk',2)
insert into devamsýzlýk values(72,60240000072,'yaren','bilge',1)




create table ders (
ders_id int primary key,
ders_adi varchar(30) not null,
ders_kredi int not null,
akd_id int not null,

foreign key (akd_id) references akademik_personel(akd_id)
)

insert into ders values (1, 'Türk Dili', 2, 1)
insert into ders values (2, 'Atatürk Ýlkeleri ve Tarihi', 2, 2)
insert into ders values (3, 'Ýngilizce', 2, 3)

insert into ders values (4, 'Genel Matematik', 4, 4)
insert into ders values (5, 'Olasýlýk', 3, 4)
insert into ders values (6, 'Geometri', 4, 4)
insert into ders values (7, 'Kalkülüs', 3, 4)

insert into ders values (8, 'Veri Yapýlarý', 2, 5)
insert into ders values (9, 'Programlamaya Giriþ', 4, 6)
insert into ders values (10, 'Algoritma', 3, 8)
insert into ders values (11, 'Yazýlým Mimarisi', 4, 9)
insert into ders values (12, 'Veritabaný', 3, 9)

insert into ders values (13, 'Gýda Kimyasý', 2, 10)
insert into ders values (14, 'Gýda Analizi', 3, 10)
insert into ders values (15, 'Gýda Teknolojisi', 4, 11)

insert into ders values (16, 'Bilgisayar Aðlarý', 3, 12)
insert into ders values (17, 'Siber Güvenlik', 2, 12)
insert into ders values (18, 'Ýnternet Programlama', 3, 13)

insert into ders values (19, 'Genel Kimya', 3, 14)
insert into ders values (20, 'Organik Kimya', 4, 15)
insert into ders values (21, 'Biyoistatistik', 4, 15)
insert into ders values (22, 'Biyoteknoloji', 3, 16)

insert into ders values (23, 'Ýstatistiðe Giriþ', 2, 17)
insert into ders values (24, 'Lineer Cebir', 3, 17)
insert into ders values (25, 'Finans', 4, 17)
insert into ders values (26, 'Risk Analizi', 3, 18)

insert into ders values (27, 'Tanzimat Edebiyatý', 3, 19)
insert into ders values (28, 'Göktürkçe', 3, 20)
insert into ders values (29, 'Osmanlý Türkçesi', 4, 20)
insert into ders values (30, 'Eski Uygarca', 4, 20)

insert into ders values (31, 'Nörolojiye Giriþ', 2, 21)
insert into ders values (32, 'Duyu Sistemi', 3, 22)
insert into ders values (33, 'Sinir Sistemi', 4, 22)
insert into ders values (34, 'Kas ve Sinir', 4,23)
insert into ders values (35, 'Sinir Sistemi', 4, 23)

insert into ders values (36, 'Ýlkçað Tarihi', 3, 24)
insert into ders values (37, 'Bizans Tarihi', 4, 24)
insert into ders values (38, 'Roma Tarihi', 3, 24)
insert into ders values (39, 'Avrupa Tarihi', 4, 25)
insert into ders values (40, 'Tarihi Coðrafya', 3, 25)









create table harc(
harc_id int primary key NOT NULL,
ogr_id varchar (11) NOT NULL,
öðrenci_ad varchar(25) NOT NULL,
öðrenci_soyad varchar(30) NOT NULL,
dönem varchar(20) NOT NULL,
miktar int NOT NULL,
ödeme_tarihi date NOT NULL,
FOREIGN KEY (ogr_id) REFERENCES Ogrenci(ogr_id)

);

select *from harc
insert into harc values(1,60240000001,'ali','yýlmaz','güz',550,'2023-09-02');
insert into harc values(2,60240000002,'murat','aslan','güz',550,'2023-09-02');
insert into harc values(3,60240000003,'sýla','karagöz','güz',550,'2023-09-02');
insert into harc values(4,60240000004,'ismail','avcý','güz',550,'2023-09-02');
insert into harc values(5,60240000005,'muratcan','bilgin','güz',550,'2023-09-02');
insert into harc values(6,60240000006,'mustafa','þen','güz',550,'2023-09-02');
insert into harc values(7,60240000007,'ayþe','güneþ','güz',550,'2023-09-02');
insert into harc values(8,60240000008,'ceren','demir','güz',550,'2023-09-02');
insert into harc values(9,60240000009,'furkan','genç','güz',550,'2023-09-02');
insert into harc values(10,60240000010,'esma','aktaþ','güz',550,'2023-09-02');
insert into harc values(11,60240000011,'ahmet','ünlü','güz',550,'2023-09-02');
insert into harc values(12,60240000012,'emre','aygün','güz',550,'2023-09-02');
insert into harc values(13,60240000013,'ayça','yaman','güz',550,'2023-09-02');
insert into harc values(14,60240000014,'kemal','mutlu','güz',550,'2023-09-02');
insert into harc values(15,60240000015,'hasan','gök','güz',550,'2023-09-02');
insert into harc values(16,60240000016,'leyla','kýlýç','güz',550,'2023-09-02');
insert into harc values(17,60240000017,'mehmet','kuzey','güz',550,'2023-09-02');
insert into harc values(18,60240000018,'selin','çoban','güz',550,'2023-09-02');
insert into harc values(19,60240000019,'deniz','taþ','güz',550,'2023-09-02');
insert into harc values(20,60240000020,'sude','þahin','güz',550,'2023-09-02');
insert into harc values(21,60240000021,'onur','kara','güz',550,'2023-09-02');
insert into harc values(22,60240000022,'ahmet','yýldýrým','güz',550,'2023-09-02');
insert into harc values(23,60240000023,'duygu','aksoy','güz',550,'2023-09-02');
insert into harc values(24,60240000024,'kaan','doðan','güz',550,'2023-09-02');
insert into harc values(25,60240000025,'aylin','kara','güz',550,'2023-09-02');
insert into harc values(26,60240000026,'barýþ','gürsoy','güz',550,'2023-09-02');
insert into harc values(27,60240000027,'selin','avcý','güz',550,'2023-09-02');
insert into harc values(28,60240000028,'yasemin','doðan','güz',550,'2023-09-02');
insert into harc values(29,60240000029,'onur','yýldýz','güz',550,'2023-09-02');
insert into harc values(30,60240000030,'tarýk','can','güz',550,'2023-09-02');
insert into harc values(31,60240000031,'derin','öz','güz',550,'2023-09-02');
insert into harc values(32,60240000032,'yaren','uzun','güz',550,'2023-09-02');
insert into harc values(33,60240000033,'leyla','bora','güz',550,'2023-09-02');
insert into harc values(34,60240000034,'ömer','sevgi','güz',550,'2023-09-02');
insert into harc values(35,60240000035,'aysel','budak','güz',550,'2023-09-02');



insert into harc values(36,60240000001,'ali','yýlmaz','bahar',900,'2024-01-24');
insert into harc values(37,60240000002,'murat','aslan','bahar',900,'2024-01-24');
insert into harc values(38,60240000003,'sýla','karagöz','bahar',900,'2024-01-24');
insert into harc values(39,60240000004,'ismail','avcý','bahar',900,'2024-01-24');
insert into harc values(40,60240000005,'muratcan','bilgin','bahar',900,'2024-01-24');
insert into harc values(41,60240000006,'mustafa','þen','bahar',900,'2024-01-24');
insert into harc values(42,60240000007,'ayþe','güneþ','bahar',900,'2024-01-24');
insert into harc values(43,60240000009,'furkan','genç','bahar',900,'2024-01-24');
insert into harc values(44,60240000010,'esma','aktaþ','bahar',900,'2024-01-24');
insert into harc values(45,60240000011,'ahmet','ünlü','bahar',900,'2024-01-24');
insert into harc values(46,60240000012,'emre','aygün','bahar',900,'2024-01-24');
insert into harc values(47,60240000013,'ayça','yaman','bahar',900,'2024-01-24');
insert into harc values(48,60240000014,'kemal','mutlu','bahar',900,'2024-01-24');
insert into harc values(49,60240000015,'hasan','gök','bahar',900,'2024-01-24');
insert into harc values(50,60240000016,'leyla','kýlýç','bahar',900,'2024-01-24');
insert into harc values(51,60240000017,'mehmet','kuzey','bahar',900,'2024-01-24');
insert into harc values(52,60240000018,'selin','çoban','bahar',900,'2024-01-24');
insert into harc values(53,60240000019,'deniz','taþ','bahar',900,'2024-01-24');
insert into harc values(54,60240000020,'sude','þahin','bahar',900,'2024-01-24');
insert into harc values(55,60240000021,'onur','kara','bahar',900,'2024-01-24');
insert into harc values(56,60240000022,'ahmet','yýldýrým','bahar',900,'2024-01-24');
insert into harc values(57,60240000023,'duygu','aksoy','bahar',900,'2024-01-24');
insert into harc values(58,60240000024,'kaan','doðan','bahar',900,'2024-01-24');
insert into harc values(59,60240000025,'aylin','kara','bahar',900,'2024-01-24');
insert into harc values(60,60240000026,'barýþ','gürsoy','bahar',900,'2024-01-24');
insert into harc values(61,60240000027,'selin','avcý','bahar',900,'2024-01-24');
insert into harc values(62,60240000028,'yasemin','doðan','bahar',900,'2024-01-24');
insert into harc values(63,60240000029,'onur','yýldýz','bahar',900,'2024-01-24');
insert into harc values(64,60240000030,'tarýk','can','bahar',900,'2024-01-24');
insert into harc values(65,60240000031,'derin','öz','bahar',900,'2024-01-24');
insert into harc values(66,60240000032,'yaren','uzun','bahar',900,'2024-01-24');
insert into harc values(67,60240000033,'leyla','bora','bahar',900,'2024-01-24');
insert into harc values(68,60240000034,'ömer','sevgi','bahar',900,'2024-01-24');
insert into harc values(69,60240000035,'aysel','budak','bahar',900,'2024-01-24');



CREATE TABLE Disiplin(
disiplin_id INT NOT NULL,
ogr_id varchar (11) NOT NULL,
ihlal_turu varchar(100) NOT NULL,
ihlal_tarihi DATE NOT NULL,
uygulanan_ceza_turu varchar(100),
ceza_tarihi DATE NOT NULL,
PRIMARY KEY (disiplin_id),
FOREIGN KEY (ogr_id) REFERENCES Ogrenci(ogr_id)
);


INSERT INTO Disiplin VALUES ('2', '60240000005', 'istismar', '2023-09-06', 'okuldan atýlma', '2023-10-01');
INSERT INTO Disiplin VALUES ('3', '60240000022', 'hakaret', '2023-10-06', 'ihtar', '2023-10-08');
INSERT INTO Disiplin VALUES ('4', '60240000043', 'zorbalýk', '2023-07-08', 'uzaklaþtýrma', '2023-10-11');
INSERT INTO Disiplin VALUES ('5', '60240000053', 'kavga', '2023-07-09', 'uzaklaþtýrma', '2023-10-11');
INSERT INTO Disiplin VALUES ('6', '60240000014', 'istismar', '2023-09-05', 'okuldan atýlma', '2023-10-01');
INSERT INTO Disiplin VALUES ('7', '60240000035', 'kavga', '2023-07-07', 'uzaklaþtýrma', '2023-10-15');
INSERT INTO Disiplin VALUES ('8', '60240000056', 'zorbalýk', '2023-07-10', 'para cezasý', '2023-10-11');
INSERT INTO Disiplin VALUES ('9', '60240000047', 'kavga', '2023-07-05', 'uzaklaþtýrma', '2023-10-11');
INSERT INTO Disiplin VALUES ('10', '60240000058', 'küfür', '2023-11-06', 'ihtar', '2023-11-07');
INSERT INTO Disiplin VALUES ('11', '60240000059', 'torpil patlatma', '2023-09-07', 'uzaklaþtýrma', '2023-09-10');
INSERT INTO Disiplin VALUES ('12', '60240000006', 'terör propagandasý yapmak', '2023-08-08', 'uzaklaþtýrma', '2023-08-09');
INSERT INTO Disiplin VALUES ('13', '60240000019', 'baðýþ toplamak', '2023-10-09', 'para cezasý', '2023-10-11');

create table danisman_t(
danisman_id int primary key,
danisman_ad varchar (20) not null,
danisman_eposta nvarchar(30) not null,
akd_id int ,
FOREIGN KEY (akd_id) REFERENCES akademik_personel(akd_id)
);

select*from danisman_t;

insert into danisman_t values (1,'Pelin','karapelin@gmail.com',1);
insert into danisman_t values (2,'Nazlý','nazlýozdmr@gmail.com',2);
insert into danisman_t values (3,'Oðuz','guroguz@gmail.com',3);
insert into danisman_t values (4,'Leyla','leylaucar@gmail.com',4);
insert into danisman_t values (5,'Görkem','gorkmern@gmail.com',5);
insert into danisman_t values (6,'Gökhan','korkmazgökhan@gmail.com',6);
insert into danisman_t values (7,'Erdem','erdemturan@gmail.com',7);
insert into danisman_t values (8,'Kenan','kenanclk@gmail.com',8);
insert into danisman_t values (9,'Þeyda','sahinseyda@gmail.com',9);



CREATE TABLE Staj(
 staj_id INT NOT NULL,
 ogr_id varchar (11) NOT NULL,
 is_pozisyonu varchar(50) NOT NULL,
 baslama_tarihi DATE NOT NULL,
 bitirme_tarihi DATE NOT NULL,
 staj_durumu varchar(100),
 PRIMARY KEY (staj_id),
FOREIGN KEY (ogr_id) REFERENCES Ogrenci(ogr_id)
 );

INSERT INTO Staj VALUES ('200', '60240000035', 'veri bilimi stajyeri', '2023-07-10', '2023-09-01', 'baþarýlý');
INSERT INTO Staj VALUES ('201', '60240000051', 'Tarih araþtýmacýsý', '2023-07-20', '2023-09-10', 'baþarýlý');
INSERT INTO Staj VALUES ('202', '60240000022', 'Kalite kontrol', '2023-08-11', '2023-10-01', 'baþarýlý');
INSERT INTO Staj VALUES ('203', '60240000013', 'veri analisti', '2023-08-11', '2023-10-02', 'baþarýlý');
INSERT INTO Staj VALUES ('204', '60240000054', 'stajyer öðretmen', '2023-07-15', '2023-09-05', 'baþarýlý');
INSERT INTO Staj VALUES ('205', '60240000065', 'Temizlik ve hijyen', '2023-08-20', '2023-09-15', 'baþarýlý');
INSERT INTO Staj VALUES ('206', '60240000056', 'veri ayrýþtýrma', '2023-08-11', '2023-09-30', 'baþarýlý');
INSERT INTO Staj VALUES ('207', '60240000037', 'Araþtýrma asistaný', '2023-08-11', '2023-10-04', 'baþarýlý');
INSERT INTO Staj VALUES ('208', '60240000038', 'Klinik araþtýrma asistaný', '2023-08-11', '2023-10-05', 'baþarýlý');
INSERT INTO Staj VALUES ('209', '60240000059', 'Araþtýrmacý', '2023-08-11', '2023-10-01', 'baþarýlý');
INSERT INTO Staj VALUES ('210', '60240000060', 'araþtýrma asistaný', '2023-07-15', '2023-09-05', 'baþarýlý');
INSERT INTO Staj VALUES ('211', '60240000011', 'Öðretim asistaný', '2023-08-20', '2023-09-15', 'baþarýlý');
INSERT INTO Staj VALUES ('212', '60240000062', 'Eðitmen', '2023-07-10', '2023-09-03', 'baþarýlý');
INSERT INTO Staj VALUES ('213', '60240000039', 'Kalite kontrol', '2023-07-20', '2023-09-10', 'baþarýlý');
INSERT INTO Staj VALUES ('214', '60240000064', 'yazýlým geliþtirme stajyeri', '2023-08-11', '2023-10-02', 'baþarýlý');
INSERT INTO Staj VALUES ('215', '60240000015', 'veri bilimi stajyeri', '2023-08-11', '2023-10-05', 'baþarýlý');
INSERT INTO Staj VALUES ('216', '60240000026', 'Araþtýrmacý', '2023-07-15', '2023-09-05', 'baþarýlý');





create table burslar(
burs_id int primary key,
ogr_id varchar (11) not null,
burs_miktar int not null,
FOREIGN KEY (ogr_id) REFERENCES Ogrenci(ogr_id)
)

insert into burslar values(1,60240000012,2000)
insert into burslar values(2,60240000013,3000)
insert into burslar values(3,60240000016,2200)
insert into burslar values(4,60240000017,2300)
insert into burslar values(5,60240000028,2400)
insert into burslar values(6,60240000029,2500)
insert into burslar values(7,60240000031,2300)
insert into burslar values(8,60240000033,2600)
insert into burslar values(9,60240000035,2400)
insert into burslar values(10,60240000036,2700)
insert into burslar values(11,60240000038,3000)
insert into burslar values(12,60240000040,3200)
insert into burslar values(13,60240000042,1900)
insert into burslar values(14,60240000044,2900)
insert into burslar values(15,60240000045,2700)
insert into burslar values(16,60240000060,2600)
insert into burslar values(17,60240000062,2500)
insert into burslar values(18,60240000064,2030)
insert into burslar values(19,60240000066,2320)
insert into burslar values(20,60240000068,2330)
insert into burslar values(21,60240000001,2000)
insert into burslar values(22,60240000069,4000)
insert into burslar values(23,60240000070,4400)
insert into burslar values(24,60240000071,4400)
insert into burslar values(25,60240000072,5000)



