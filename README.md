# Praktikum Pemrograman Mobile Pertemuan 4

Nama    : Sufyan Abdur Rofiq
NIM     : H1D022004
Shift Baru  : C
Shift Lama  : B

Tugas 4 Praktikum Mobile :

1). Screenshot login_page.dart :

![image](https://github.com/user-attachments/assets/026218ad-5560-45f3-b6b9-77cc331528d3)

![image](https://github.com/user-attachments/assets/135c2c7c-b7f0-49a4-8265-7d04f0f8de63)

2). Screenshot registrasi_page.dart :

![image](https://github.com/user-attachments/assets/17a64306-b3ab-4073-958b-e6d518c4cb72)

![image](https://github.com/user-attachments/assets/f315908d-eb78-4b77-9d62-6621b038f060)

3). Screenshot produk_page.dart :

![image](https://github.com/user-attachments/assets/8ee501fc-1a5a-4e6e-83be-be36f3b74ea2)

![image](https://github.com/user-attachments/assets/abc38b02-8cb7-4526-a4bc-f6f7077490ed)

4). Screenshot produk_form.dart :

![image](https://github.com/user-attachments/assets/3a5368e0-acb2-4768-84a1-f9c33a93a851)

![image](https://github.com/user-attachments/assets/eb4ebc04-0156-4892-a956-9455ed3124e8)

5). Screenshot produk_detail.dart :

![image](https://github.com/user-attachments/assets/15502542-ed95-4c13-9729-056a55f5ee01)

![image](https://github.com/user-attachments/assets/ece1f2a8-5beb-46d6-a3ef-2b58eee21262)

![image](https://github.com/user-attachments/assets/676c894a-9d77-46b1-8e2e-5fe9e71630a1)

# Praktikum Pemrograman Mobile Pertemuan 5

Tugas 5 Praktikum Mobile :

# Screenshot Tampilan UI dan Penjelasan Kode Proses Aplikasi :

1). Halaman login_page.dart :
Halaman yang berisi proses login pengguna setelah berhasil melakukan registrasi

![image](https://github.com/user-attachments/assets/4dece7ca-471b-4cb3-99aa-e1d36dd94a1c)

![image](https://github.com/user-attachments/assets/45377e17-602c-41c7-ab71-96b5973a8feb)

Pengguna melakukan login dengan memasukkan alamat email dan kata sandi pada form login yang tersedia. Alamat email dan kata sandi yang dimasukkan adalah yang telah didaftarkan sebelumnya melalui proses registrasi. Jika pengguna memasukkan data yang benar, setelah menekan tombol login, mereka akan diarahkan ke halaman Daftar Produk. Namun, jika pengguna salah memasukkan data atau belum melengkapi form, hasilnya akan tampil seperti ini :

![image](https://github.com/user-attachments/assets/4ea6e11f-788f-45be-a650-20cd3827671a)

![image](https://github.com/user-attachments/assets/02017c2a-a0ef-4a03-ac7e-2b66476ed326)

Berikut adalah potongan kode yang mengatur proses login dengan menampilkan status loading, memvalidasi hasil login, menyimpan token dan ID pengguna jika login berhasil, serta menampilkan pesan kesalahan jika login gagal :

![image](https://github.com/user-attachments/assets/0add8a12-45b8-4db6-86cb-bb3844461890)

![image](https://github.com/user-attachments/assets/52aa5423-2f53-4049-8e84-167c84285113)

2). Halaman registrasi_page.dart :

Halaman yang berisi proses registrasi pengguna sebelum login ke aplikasi.
Sebelum melakukan Login, pengguna yang belum memiliki akun dapat melakukan Registrasi terlebih dahulu dengan mengklik opsi "registrasi" di halaman Login.

Pada halaman registrasi, pengguna dapat membuat akun baru dengan mengisi form registrasi yang berisi kolom nama/username, alamat email, password, dan konfirmasi password :

![image](https://github.com/user-attachments/assets/ad27dcbc-bcce-47e3-9181-a9d9b0516c35)

Jika pengguna berhasil melakukan registrasi dan menekan tombol Registrasi, akan muncul notifikasi yang menandakan bahwa proses registrasi telah berhasil. Selanjutnya, pengguna akan diarahkan ke halaman Login untuk melakukan login :

![image](https://github.com/user-attachments/assets/04799b63-fcff-4f6f-85c3-91f2a9e02525)

Namun, jika pengguna menekan tombol registrasi tanpa mengisi kolom yang diperlukan atau jika terjadi kesalahan dalam mengisi kolom konfirmasi password, maka akan muncul tampilan seperti ini :

![image](https://github.com/user-attachments/assets/f9e902c2-f140-42ea-b699-00d393b9815f)

![image](https://github.com/user-attachments/assets/db79ec22-354e-4ed6-9c5c-2211050bf4d5)

Berikut adalah potongan kode yang mengatur proses registrasi, termasuk menampilkan indikator loading selama proses berlangsung, menampilkan pesan sukses jika registrasi berhasil, serta menampilkan pesan kesalahan jika registrasi gagal :

![image](https://github.com/user-attachments/assets/bf768299-5db9-435f-bc5e-7461cae576c2)

3). Halaman produk_page.dart :

![image](https://github.com/user-attachments/assets/8d015961-a893-4ba7-b83e-27b7f694ae4f)

Di halaman daftar produk, terdapat tampilan daftar produk yang diambil dari database, masing-masing disajikan dalam kartu terpisah. Pengguna dapat menekan ikon "+" di pojok kanan atas untuk mengakses halaman tambah produk. Selain itu, pengguna juga bisa membuka sidemenu dengan mengklik ikon garis tiga di pojok kiri atas halaman.

Berikut adalah potongan kode yang digunakan untuk menampilkan daftar produk. Kelas ListProduk berfungsi untuk menampilkan daftar produk secara dinamis dengan memanfaatkan widget ListView.builder. Jika daftar kosong atau null, maka tidak ada item yang akan ditampilkan. Setiap elemen dalam daftar tersebut diubah menjadi widget ItemProduk yang menunjukkan rincian produk tertentu :

![image](https://github.com/user-attachments/assets/4287bebe-9755-46c8-a065-acdc0dc31149)

Di bawah ini adalah potongan kode yang digunakan untuk membuat kartu daftar produk. Kelas ItemProduk bertanggung jawab untuk menampilkan informasi produk dalam format kartu, yang mencakup ikon produk, nama produk, dan harga produk. Saat pengguna mengetuk kartu tersebut, aplikasi akan mengarahkan mereka ke halaman detail produk menggunakan Navigator.push :

![image](https://github.com/user-attachments/assets/4173faa2-c643-42a6-86f4-cfc668188ea2)

![image](https://github.com/user-attachments/assets/4ebbb3be-27fd-4d90-a492-9b8652ec10d0)

4). Halaman Side Menu pada produk_page.dart :

![image](https://github.com/user-attachments/assets/db0cdf86-0fbf-485d-9309-66c38b7ccd2a)

Pada sidemenu terdapat opsi untuk melakukan logout. Ketika pengguna memilih untuk logout, mereka akan diarahkan kembali ke halaman Login dan sesi pengguna akan dihentikan.

Di bawah ini adalah potongan kode yang menampilkan sebuah Drawer dengan judul "Toko Sufyan" dan sebuah menu ListTile untuk melakukan logout, yang akan mengarahkan pengguna kembali ke halaman login setelah proses logout berhasil :

![image](https://github.com/user-attachments/assets/f31ef974-adee-4244-b885-a35d40fe26f2)

5). Halaman Tambah Produk pada produk_form.dart :

Di halaman Tambah Produk, pengguna dapat memasukkan data produk untuk disimpan dalam database dengan mengisi formulir yang mencakup kolom untuk kode produk, nama produk, dan harga.

![image](https://github.com/user-attachments/assets/328213c0-0b14-4948-981d-fe1aceea22ec)

![image](https://github.com/user-attachments/assets/63ac11c7-3ecb-46ca-ad06-1f6ebfbd69ab)

Setelah pengguna mengisi formulir tambah produk dan menekan tombol Simpan, mereka akan secara otomatis diarahkan ke halaman Daftar Produk jika data yang dimasukkan valid.

Berikut adalah halaman Daftar Produk setelah pengguna menambah produk "Knalpot Austin Racing" :

![image](https://github.com/user-attachments/assets/df749b48-2ca7-4260-889a-16c71d990ced)

Berikut adalah baris kode untuk menyimpan data produk baru. Fungsi simpan() bertugas mengumpulkan data produk dari formulir input, mengirimkan data tersebut untuk disimpan melalui ProdukBloc, menangani kesalahan jika proses gagal, serta memperbarui status antarmuka pengguna, termasuk indikator loading. Setelah proses berhasil, pengguna akan diarahkan ke halaman produk yang menampilkan daftar produk yang telah disimpan :

![image](https://github.com/user-attachments/assets/93a0eb93-780a-4430-8353-491dc8f1ec42)

6). Halaman 



































