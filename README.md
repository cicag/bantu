# Bantu
Bantu (Bantu Analisis Non-obat dan Tindakan untuk Umum), aplikasi pencarian basis data sederhana. Repo ini dibuat untuk demonstrasi konsep **Bantu** sebagai aplikasi yang membantu mengetahui tindakan-tindakan yang bisa dilakukan di rumah (saat ini hanya untuk konteks diabetes).

## Konsep Bantu
![Gambar 1](images/1.png)  
![Gambar 2](images/2.png)

---

## Jika Ingin Memakai Sendiri
1. Clone repo ini:
   
   ```bash
   git clone https://github.com/cicag/bantu
   ```
3. Pindahkan folder ke dokumen root webserver
4. Import database (bisa pakai phpmyadmin) atau
   
   ```
   ./mysql -u root -p bantu < db.sql
   ```
---
## default database
```
address  : localhost
username  : root
password  : 1234
database  : bantu
```
Bisa disesuaikan di functions.php
