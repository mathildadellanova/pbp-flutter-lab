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


Pertanyaan Tugas 8

Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
	Navigator.push melakukan push route kepada stack di atas pada current page, sedangkan pushReplacement mereplace current page dengan route yang ingin dipush

Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
	DropdownButton, fungsinya untuk memilih angka dari item-item
	DropdownHideUnderLine, fungsinya untuk meremove underline dari DropdownButton
	TextButton, fungsinya untuk listen _onPressed_ dan _onLongPress_
	ListView.builder, fungsinya untuk build children sesuai permintaan.
	ListTile, fungsinya untuk populate sebuat ListView
	Material, fungsinya untuk wrap widget yang sering dibutuhkan aplikasi

Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
	onPressed, onTap, onChanged

Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
	Ketika kita navigasi ke screen lain, kita menggunakan metode push dan widget navigator menambahkan screen baru ke stack paling atas. Metode pop akan meremove screen dari stack tersebut

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
	Membuat drawer.dart
	Membuat tambah_budget.dart
	Membuat form yang meminta judul nominal, jenis, dan tanggal di tambah_budget.dart
	Membuat Budget di tambah_budget.dart
	Membuat global.dart
	Melakukan dekorasi
	Add, commit, push ke repositori  