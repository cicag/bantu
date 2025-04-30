<?php
require 'functions.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BANTU</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class="page">

<div class="center-container">
        <h1 class="title">BANTU</h1>

        <form action="index2.php" method="POST" class="search-form">
            <input type="text" name="keyword" class="search-input" size="60" autofocus placeholder="pusing, gemetar" autocomplete="off">
            <button type="submit" name="cari" class="search-button">Cari!</button>
        </form>
    </div>
</body>

</html>
