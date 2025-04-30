<?php
require '../functions.php';
$keyword = $_GET["keywordlive"];
$diabetes = cari($keyword);
?>
    <table border="1" cellpadding="10" cellspacing="0">
            <tr>
                <th>Diagnosa</th>
                <th>Keterangan</th>
                <th>Ilustrasi</th>
                <th>Gejala</th>
                <th>Saran</th>
                <th>Ilustrasi2</th>
            </tr>

        <?php foreach( $diabetes as $row) : ?>
            <tr>
                <td><?= nl2br(htmlspecialchars($row["dx"])); ?></td>
                <td><?= nl2br(htmlspecialchars($row["ket"])); ?></td>
                <td><img src="img/<?= $row["gbrgejala"]; ?>" width="50"></td>
                <td><?= nl2br($row["gejala"]); ?></td>
                <td><?= nl2br($row["saran"]); ?></td>
                <td><img src="img/<?= $row["gbrsaran"]; ?>" width="50"></td>
            </tr>
        <?php endforeach; ?>
    </table>
<?php if (empty($diabetes)): ?>
    <p>Tidak ditemukan hasil.</p>
<?php endif; ?>
