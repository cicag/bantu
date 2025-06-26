<?php
//konek ke database
$db = mysqli_connect("localhost", "root", "1234", "bantu");

//kontainer data kosong
function query($query) {
    global $db;
    $dba = mysqli_query($db, $query);
    $rows = [];
    while( $row = mysqli_fetch_assoc($dba)){
        $rows[] = $row;
    }
	return $rows;
}

//fungsi pencarian dengan beberapa kondisi
function cari($keyword) {
    global $db;
    $keyword = trim($keyword);

//gunakan ini jika input user kosong
    if ($keyword === '') {
        return [];
    }
//gunakan ini jika input user angka
    if (is_numeric($keyword)) {
        $keyword = (int) $keyword;
        $query = "SELECT * FROM diabetes WHERE $keyword BETWEEN nummin AND nummax";
    } else {
 //gunakan ini jika input user teks
        $keyword = mysqli_real_escape_string($db, $keyword);

//pisahkan keyword berdasarkan spasi dan koma
        $keywords = preg_split('/[\s,]+/', $keyword);

//Susun query per-keyword yang dipisah
        $conditions = [];
        foreach ($keywords as $word) {
            $word = mysqli_real_escape_string($db, $word);
            $conditions[] = "(
                dx LIKE '%$word%' OR
                gejala LIKE '%$word%' OR
                saran LIKE '%$word%' OR
                tag LIKE '%$word%'
            )";
        }
// Gabungkan query menjadi satu
        $query = "SELECT * FROM diabetes WHERE " . implode(" OR ", $conditions);
    }

    $result = mysqli_query($db, $query);

    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }

    return $rows;
}

?>
