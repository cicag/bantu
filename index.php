<?php
// Muat fungsi dasar pencarian
require 'search/functions.php';
?>

<!-- Kepala Halaman -->
<!DOCTYPE html>
<html>
<head>
    <title>Bantu</title>
</head>
<body>
    <h1>Bantu.</h1>
    <h2>Diabetes</h2>
    <h2>Bagaimana keadaan anda?</h2>

<!-- Tombol pencarian, kirim POST ke index2.php  -->
    <form action="index2.php" method="POST">
        <input type="text" name="keyword" size="60" autofocus placeholder="pusing, gemetar" autocomplete="off">
        <button type="submit" name="cari"></a>Cari!</button>
    </form>
    <br>

<!-- Demonstrasi video capable -->
    <a href="src/demovid.php">
      <button>Demo Fungsi Video</button>
    </a>

<!-- Kaki, tentang Bantu -->
  <footer>
    <a href="src/about.php">bantu v0.0.1-pre-alpha</a>
  </footer>

</body>
</html>
