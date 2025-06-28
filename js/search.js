var keywordlive = document.getElementById('keywordlive');
var wadah = document.getElementById('wadah');

// Fungsi untuk inisialisasi event tab
function inisialisasiTab() {
    document.querySelectorAll('.tab-btns').forEach(btnGroup => {
        const buttons = btnGroup.querySelectorAll('.tab-btn');
        buttons.forEach(button => {
            button.addEventListener('click', () => {
                const targetId = button.dataset.tab;

                buttons.forEach(btn => btn.classList.remove('active'));
                button.classList.add('active');

                const card = button.closest('.card');
                const contents = card.querySelectorAll('.tab-content');

                contents.forEach(content => {
                    content.style.display = 'none';
                });

                const activeContent = card.querySelector(`#${targetId}`);
                if (activeContent) {
                    activeContent.style.display = 'block';
                }
            });
        });
    });
}


inisialisasiTab();

// Event live search
keywordlive.addEventListener('keyup', function() {
    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            wadah.innerHTML = xhr.responseText;
            inisialisasiTab(); // <- ini penting
        }
    };

    xhr.open('GET', 'search/dx.php?keywordlive=' + encodeURIComponent(keywordlive.value), true);
    xhr.send();
});
