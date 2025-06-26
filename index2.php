<?php
// Muat fungsi dasar, tangkap POST dari index.php index2.php
require 'search/functions.php';
$diabetes = cari($_POST["keyword"]);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Bantu</title>
</head>
<body>
<br>

<!-- Tombol pencarian, kirim POST ke index2.php  -->
    <form action="" method="POST">
        <input type="text" name="keyword" size="60" autofocus placeholder="pusing, gemetar" autocomplete="off" id="keywordlive">
        <button type="submit" name="cari" id="tombolnyari"></a>Cari!</button>
    </form>
<br>

<!-- Kontainer untuk data yang dipanggil -->
    <div id="wadah">
        <table border="1" cellpadding="10" cellspacing="0">
            <tr>
                <th>Diagnosa</th>
                <th>Keterangan</th>
                <th>Ilustrasi</th>
                <th>Gejala</th>
                <th>Saran</th>
                <th>Ilustrasi2</th>
            </tr>

<!-- Penempatan data -->
        <?php foreach( $diabetes as $row) : ?>
            <tr>
                <td><?= nl2br(htmlspecialchars($row["dx"])); ?></td>
                <td><?= nl2br(htmlspecialchars($row["ket"])); ?></td>
                <td><img src="asset/img/<?= $row["gbrgejala"]; ?>" width="50"></td>
                <td><?= nl2br($row["gejala"]); ?></td>
                <td><?= nl2br($row["saran"]); ?></td>
                <td><img src="asset/img/<?= $row["gbrsaran"]; ?>" width="50"></td>
            </tr>
        <?php endforeach; ?>
        </table>

<!-- Tampilkan ini jika data yang dipanggil kosong -->
<?php if (empty($diabetes)): ?>
    <p>Tidak ditemukan hasil.</p>
<?php endif; ?>
    </div>

<!-- Kaki, tentang bantu -->
<footer>
    <a href="src/about.php">Bantu v0.0.1-pre-alpha</a>
</footer>

<!-- Panggil JS untuk livesearch -->
<script src="js/search.js"></script>
</body>
</html>
