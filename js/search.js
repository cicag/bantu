//Tangkap ID dari index2.php
var keywordlive = document.getElementById('keywordlive');
var tombolnyari = document.getElementById('tombolnyari');
var wadah = document.getElementById('wadah');

//event
keywordlive.addEventListener('keyup', function() {

    //mulai ajax
    var xhr = new XMLHttpRequest();

    //ajax siap?
    xhr.onreadystatechange = function() {
        if( xhr.readyState == 4 && xhr.status == 200 ) {
            wadah.innerHTML = xhr.responseText;
        }
    }

    //eksekusi ajax, kirim GET ke search/dx.php
    xhr.open('GET', 'search/dx.php?keywordlive=' + keywordlive.value, true);
    xhr.send();
});
