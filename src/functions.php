<?php
//koneksql
$db = mysqli_connect("localhost", "root", "1234", "bantu");

//kontainerdata
function query($query) {
    global $db;
    $dba = mysqli_query($db, $query);
    $rows = [];
    while( $row = mysqli_fetch_assoc($dba)){
        $rows[] = $row;
    }
	return $rows;
}

//pencari
function cari($keyword) {
    global $db;
    $keyword = trim($keyword);

    //input kosong
    if ($keyword === '') {
        return [];
    }
    // Jika input angka
    if (is_numeric($keyword)) {
        $keyword = (int) $keyword;
        $query = "SELECT * FROM diabetes WHERE $keyword BETWEEN nummin AND nummax";
    } else {
        // Input teks
        $keyword = mysqli_real_escape_string($db, $keyword);

        // Support multi keyword pakai spasi atau koma
        $keywords = preg_split('/[\s,]+/', $keyword);

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
