<?php
// Muat fungsi dasar, tangkap GET dari JS ajax
require 'functions.php';
$keyword = $_GET["keywordlive"];
$diabetes = cari($keyword);
?>

<!-- Kontainer data yang dipanggil -->
    <table border="1" cellpadding="10" cellspacing="0">
            <tr>
                <th>Diagnosa</th>
                <th>Keterangan</th>
                <th>Ilustrasi</th>
                <th>Gejala</th>
                <th>Saran</th>
                <th>Ilustrasi2</th>
            </tr>

<!-- Penempatan Data -->
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

<!-- Kembalian ini jika data kosong -->
<?php if (empty($diabetes)): ?>
    <p>Tidak ditemukan hasil.</p>
<?php endif; ?>
