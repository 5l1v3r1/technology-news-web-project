-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- �retim Zaman�: 14 Haz 2017, 22:17:45
-- Sunucu s�r�m�: 5.7.11-log
-- PHP S�r�m�: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritaban�: `teknoloji`
--

-- --------------------------------------------------------

--
-- Tablo i�in tablo yap�s� `aktiviteler`
--

CREATE TABLE `aktiviteler` (
  `aktiviteId` int(11) NOT NULL,
  `ipAdresi` varchar(50) NOT NULL,
  `tarih` varchar(50) NOT NULL,
  `aktiviteAd` text NOT NULL,
  `uyeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo d�k�m verisi `aktiviteler`
--


-- --------------------------------------------------------

--
-- Tablo i�in tablo yap�s� `icerikler`
--

CREATE TABLE `icerikler` (
  `icerikId` int(11) NOT NULL,
  `icerikBaslik` text NOT NULL,
  `icerik` text NOT NULL,
  `turId` int(11) DEFAULT NULL,
  `icerikslider` varchar(10) NOT NULL,
  `videoUrl` varchar(100) NOT NULL,
  `onay` int(11) NOT NULL DEFAULT '0',
  `icerikTarih` varchar(50) NOT NULL,
  `izlenme` int(11) DEFAULT NULL,
  `icerikResim` varchar(100) NOT NULL,
  `icerikBDetay` varchar(400) NOT NULL,
  `seoKey` varchar(50) NOT NULL,
  `icerikYazar` varchar(50) NOT NULL,
  `kod1` text NOT NULL,
  `kod2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo d�k�m verisi `icerikler`
--

CREATE TABLE `iletisim` (
  `iletisimId` int(11) NOT NULL,
  `iletisimAd` varchar(100) NOT NULL,
  `iletisimMail` varchar(50) NOT NULL,
  `iletisimBaslik` varchar(50) NOT NULL,
  `iletisimMesaj` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Tablo i�in tablo yap�s� `reyting`
--

CREATE TABLE `reyting` (
  `reytingId` int(11) NOT NULL,
  `ipAdresi` varchar(100) NOT NULL,
  `tarih` varchar(50) NOT NULL,
  `icerikId` int(11) NOT NULL,
  `saat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo i�in tablo yap�s� `scevapyorum`
--

CREATE TABLE `scevapyorum` (
  `scevapId` int(11) NOT NULL,
  `soruId` int(11) NOT NULL,
  `cevap` text NOT NULL,
  `uyeId` int(11) NOT NULL,
  `uyeAdSoyad` varchar(100) NOT NULL,
  `cevapTarih` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo d�k�m verisi `scevapyorum`
--



-- --------------------------------------------------------

--
-- Tablo i�in tablo yap�s� `seokelimeler`
--

CREATE TABLE `seokelimeler` (
  `seoId` int(11) NOT NULL,
  `seo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo d�k�m verisi `seokelimeler`
--


-- --------------------------------------------------------

--
-- Tablo i�in tablo yap�s� `sorucevap`
--

CREATE TABLE `sorucevap` (
  `uyeId` int(11) NOT NULL,
  `uyeAdSoyad` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `baslik` varchar(50) NOT NULL,
  `soru` text NOT NULL,
  `cevap` text NOT NULL,
  `soruId` int(11) NOT NULL,
  `tur�cerik` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo d�k�m verisi `sorucevap`
--

CREATE TABLE `turler` (
  `turId` int(11) NOT NULL,
  `tur�cerik` varchar(100) NOT NULL,
  `turUrlseo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Tablo i�in tablo yap�s� `uyeler`
--

CREATE TABLE `uyeler` (
  `uyeId` int(11) NOT NULL,
  `uyeAdsoyad` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `sifre` varchar(50) NOT NULL,
  `uyeTarih` varchar(50) NOT NULL,
  `md5Id` varchar(50) NOT NULL,
  `uyeResimurl` varchar(50) NOT NULL,
  `tip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo d�k�m verisi `uyeler`
--


CREATE TABLE `yorumlar` (
  `yorumId` int(11) NOT NULL,
  `yorum` text NOT NULL,
  `uyeId` int(11) NOT NULL,
  `yorumTarih` varchar(50) NOT NULL,
  `icerikId` int(11) NOT NULL,
  `uyeAdsoyad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo d�k�m verisi `yorumlar`
--


ALTER TABLE `aktiviteler`
  ADD PRIMARY KEY (`aktiviteId`);

--
-- Tablo i�in indeksler `icerikler`
--
ALTER TABLE `icerikler`
  ADD PRIMARY KEY (`icerikId`);

--
-- Tablo i�in indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`iletisimId`);

--
-- Tablo i�in indeksler `reyting`
--
ALTER TABLE `reyting`
  ADD PRIMARY KEY (`reytingId`);

--
-- Tablo i�in indeksler `scevapyorum`
--
ALTER TABLE `scevapyorum`
  ADD PRIMARY KEY (`scevapId`);

--
-- Tablo i�in indeksler `seokelimeler`
--
ALTER TABLE `seokelimeler`
  ADD PRIMARY KEY (`seoId`);

--
-- Tablo i�in indeksler `sorucevap`
--
ALTER TABLE `sorucevap`
  ADD PRIMARY KEY (`soruId`);

--
-- Tablo i�in indeksler `turler`
--
ALTER TABLE `turler`
  ADD PRIMARY KEY (`turId`);

--
-- Tablo i�in indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`uyeId`);

--
-- Tablo i�in indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorumId`);

--
-- D�k�m� yap�lm�� tablolar i�in AUTO_INCREMENT de�eri
--

--
-- Tablo i�in AUTO_INCREMENT de�eri `aktiviteler`
--
ALTER TABLE `aktiviteler`
  MODIFY `aktiviteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- Tablo i�in AUTO_INCREMENT de�eri `icerikler`
--
ALTER TABLE `icerikler`
  MODIFY `icerikId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9049;
--
-- Tablo i�in AUTO_INCREMENT de�eri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `iletisimId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo i�in AUTO_INCREMENT de�eri `reyting`
--
ALTER TABLE `reyting`
  MODIFY `reytingId` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo i�in AUTO_INCREMENT de�eri `scevapyorum`
--
ALTER TABLE `scevapyorum`
  MODIFY `scevapId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo i�in AUTO_INCREMENT de�eri `seokelimeler`
--
ALTER TABLE `seokelimeler`
  MODIFY `seoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- Tablo i�in AUTO_INCREMENT de�eri `sorucevap`
--
ALTER TABLE `sorucevap`
  MODIFY `soruId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Tablo i�in AUTO_INCREMENT de�eri `turler`
--
ALTER TABLE `turler`
  MODIFY `turId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tablo i�in AUTO_INCREMENT de�eri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `uyeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- Tablo i�in AUTO_INCREMENT de�eri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorumId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
