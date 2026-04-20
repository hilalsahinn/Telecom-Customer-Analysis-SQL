## 📝 İş Analizi Dokümantasyonu

### Analysis Logic (SQL Logic)
Analiz yapılırken `UsageHistory` tablosundaki `UsedDataGB` alanı ile `Customers` tablosundaki `CurrentPackageGB` alanı karşılaştırılmıştır.# Telecom-Customer-Analysis-SQL
Müşteri kullanım verilerini analiz ederek paket yükseltme (up-sell) adaylarını belirleyen SQL projesi.

### User Story
**As a** Marketing Manager,  
**I want to** identify customers who consistently exceed their data limits,  
**So that** I can offer them higher-tier packages (Up-sell) to improve customer satisfaction and increase revenue.

### Acceptance Criteria (Kabul Kriterleri)
* **AC 1:** Sistem, son 3 aylık veri kullanım geçmişini analiz etmelidir.
* **AC 2:** "Up-sell Adayı" sayılmak için son 3 ayda en az 2 kez kota aşımı yapılmış olmalıdır.
* **AC 3:** Çıktı; Müşteri Adı, Mevcut Paket, Aşım Sayısı ve Önerilen Yeni Paket bilgilerini içermelidir.

### Business Rules (İş Kuralları)
* Aşım sayısı < 2 olan müşteriler "Stabil" kabul edilir ve raporlanmaz.
* Önerilen paket, mevcut paketin en az bir üst segmenti olmalıdır.
  
![Proje İş Akışı](Telecom-Customer-Analysis-Diyagram.png)

