<?php
require 'search/functions.php';
$diabetes = cari($_POST["keyword"]);
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bantu</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            font-family: sans-serif;
            background-color: #e5f2f4;
            padding: 40px;
            margin: 0;
        }

        .search-container {
            display: flex;
            justify-content: center;
            margin-bottom: 30px;
        }

        .search-box {
            display: flex;
            align-items: center;
            background: white;
            border-radius: 25px;
            padding: 10px 20px;
            width: 500px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .search-box input {
            border: none;
            outline: none;
            flex: 1;
            font-size: 16px;
            background: transparent;
        }

        .search-box i {
            font-size: 20px;
            color: #444;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 12px;
            max-width: 700px;
            margin: auto;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            margin-bottom: 12px;
        }

        .card h2 {
            margin-top: 0;
            font-size: 24px;
            color: #333;
        }

        .card .sub {
            color: #666;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .tab-btns {
            display: flex;
            gap: 15px;
            margin-bottom: 15px;
        }

        .tab-btn {
            background: #d5eaea;
            padding: 8px 16px;
            border-radius: 20px;
            font-weight: bold;
            cursor: pointer;
            color: #444;
        }

        .tab-btn.active {
            background: #a8dcdc;
            color: white;
        }

        .advice-box {
            background: #f2fafa;
            border-left: 4px solid #c0e0e0;
            padding: 15px 20px;
            border-radius: 8px;
            color: #333;
        }

        .notfound {
            text-align: center;
            color: #888;
            margin-top: 40px;
        }


    </style>
</head>
<body>

<div class="search-container">
    <div class="search-box">
        <input type="text" name="keyword" id="keywordlive" placeholder="pusing, gemetar" aria-label="Search">
        <i class="fa fa-search"></i>
    </div>
</div>

<div id="wadah">
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
                        <div style="margin-top:10px;">Gambar tidak tersedia.</div>
                    <?php endif; ?>

                    <?php if (!empty($row["saran"])): ?>
                        <?= nl2br($row["saran"]); ?>
                    <?php else: ?>
                        <div>Saran tidak tersedia.</div>
                    <?php endif; ?>
                </div>
            </div>

        </div>
    <?php endforeach; ?>
<?php else: ?>
    <div class="notfound">Tidak ditemukan hasil.</div>
<?php endif; ?>
</div>

<script src="js/search.js"></script>

<footer class="footer">
    <a href="src/about.php">Bantu v0.0.1-pre-alpha</a>
</footer>

</body>
</html>
