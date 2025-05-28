<?php
require 'functions.php';
?>

<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.25">
    <title>Bantu</title>
    <link href="https://fonts.googleapis.com/css2?family=Hammersmith+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body class="page">
<div class="wadahtengah">
    <h1 class="title">Bantu.</h1>
    <h2 class="subtitle">Bagaimana keadaan anda?</h2>
    <form action="index2.php" method="POST" class="formsearch">
        <input type="text" name="keyword" class="input" size="50" autofocus placeholder="  pusing, gemetar" autocomplete="off">
        <button type="submit" name="cari" class="button">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="#5f6368">
                <path d="M15.5 14h-.79l-.28-.27a6.5 6.5 0 0 0 1.48-5.34c-.47-2.78-2.79-5-5.59-5.34a6.505 6.505 0 0 0-7.27 7.27c.34 2.8 2.56 5.12 5.34 5.59a6.5 6.5 0 0 0 5.34-1.48l.27.28v.79l4.25 4.25c.41.41 1.08.41 1.49 0 .41-.41.41-1.08 0-1.49L15.5 14zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/>
            </svg>
        </button>
    </form>

</div>
<footer class="footer">
    <a href="about.php">Bantu v0.0.1-pre-alpha</a>
</footer>
</body>

</html>
