SELECT* FROM Customers;
SELECT * FROM UsageHistory;
-- Müşterileri ekliyoruz
INSERT INTO Customers (CustomerName, CurrentPackageGB, MonthlyFee)
VALUES 
('Hilal Sahin', 10, 150.00), 
('Gokay Duman', 20, 200.00), 
('Deneme Kullanici', 10, 150.00);

-- Kullanım verilerini ekliyoruz
INSERT INTO UsageHistory (CustomerID, YearMonth, UsedDataGB)
VALUES 
(1, '2026-01', 11.5), -- Hilal aştı
(1, '2026-02', 12.0), -- Hilal aştı
(1, '2026-03', 10.5), -- Hilal aştı
(2, '2026-03', 15.0), -- Gökay aşmadı
(3, '2026-03', 11.0); -- Deneme 1 kez aştı
SELECT 
    C.CustomerName AS [Müşteri Adı],
    C.CurrentPackageGB AS [Mevcut Paket],
    COUNT(U.UsageID) AS [Toplam Aşım Sayısı],
    '20GB Avantaj Paketi' AS [Önerilen Yeni Paket]
FROM Customers C
JOIN UsageHistory U ON C.CustomerID = U.CustomerID
WHERE U.UsedDataGB > C.CurrentPackageGB
GROUP BY C.CustomerName, C.CurrentPackageGB
HAVING COUNT(U.UsageID) >= 2;
