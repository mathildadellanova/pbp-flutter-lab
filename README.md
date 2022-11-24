Pertanyaan tugas 7

Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
	Stateful widget merupakan widget yang dapat berganti ketika user berinteraksi dengannya, sedangkan stateless widget tidak pernah berganti. Icon, IconButton, dan Text merupakan contoh dari stateless widget.

Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
	Padding, fungsinya untuk menambahkan padding atau space kosong di sekitar widget
	Row, fungsinya untuk align children secara horizontal
	Visibility, fungsinya untuk setting children visible atau tidak
	FloatingActionButton, fungsinya untuk hovers konten untuk menjalankan primary action pada aplikasi
	Text, dungsinya untuk menampilkan text dalam bentuk string

Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
	Fungsinya adalah untuk memberi tahu framework bahwa state internal dari obyek telah berganti sehingga mengakibatkan framework menjadwalkan build untuk state obtek. Variabel yang terdampak tergantung dari variabel apa yang di pass dalam fungsi setState()

Jelaskan perbedaan antara const dengan final.
	const tidak dapat digunakan pada value yang dicompile pada saat runtime, sehingga jika ingin menggunakan const, kita harus tau valuenya saat waktu compile, sedangkan final bisa

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
	Run flutter create counter_7
	Mengedit lib.main.dart
	Membuat repository pbp-flutter-lab
	add, commit, push ke repository tersebut