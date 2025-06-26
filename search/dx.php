<?php
require 'functions.php';
$keyword = $_GET["keywordlive"];
$diabetes = cari($keyword);
?>

<?php if (!empty($diabetes)): ?>
    <?php foreach ($diabetes as $row): ?>
        <div class="card">
            <h2><?= htmlspecialchars($row["dx"]); ?></h2>
            <div class="sub"><?= htmlspecialchars($row["ket"]); ?></div>

            <div class="tab-btns">
                <div class="tab-btn active" data-tab="gejala-<?= $row["id"]; ?>">Tanda Gejala</div>
                <div class="tab-btn" data-tab="saran-<?= $row["id"]; ?>">Saran Tindakan</div>
            </div>

            <div class="tab-content" id="gejala-<?= $row["id"]; ?>">
                <div class="advice-box">
                      <?php if (!empty($row["gbrgejala"])): ?>
                        <div style="margin-top:10px;"><img src="asset/img/<?= $row["gbrgejala"]; ?>" width="300"></div>
                    <?php endif; ?>
                    <?= nl2br($row["gejala"]); ?>
                  
                </div>
            </div>

            <div class="tab-content" id="saran-<?= $row["id"]; ?>" style="display : none;">
    <div class="advice-box">
        <?php if (!empty($row["gbrsaran"])): ?>
            <div style="margin-top:10px;">
                <img src="asset/img/<?= $row["gbrsaran"]; ?>" width="300">
            </div>
        <?php else: ?>
            <div style="margin-top:10px;">Gambar tidak tersedia.</div> <!-- Pesan saat gambar kosong -->
        <?php endif; ?>

        <?php if (!empty($row["saran"])): ?>
            <?= nl2br($row["saran"]); ?>
        <?php else: ?>
            <div>Saran tidak tersedia.</div> <!-- Pesan saat saran kosong -->
        <?php endif; ?>
    </div>
</div>

        </div>
    <?php endforeach; ?>
<?php else: ?>
    <div class="notfound">Tidak ditemukan hasil.</div>
<?php endif; ?>
