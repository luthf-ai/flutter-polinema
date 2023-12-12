# Pemrograman Asynchronous di Flutter

**Nama: Evi Amalia Midfia**

**Kelas: TI-3A**

**Absen: 13**

**NIM: 2141720030**

## Praktikum 1: Mengunduh Data dari Web Service (API)

#### Langkah 1: Buat project baru
Kemudian Tambahkan dependensi http dengan mengetik perintah berikut di terminal.
![Alt text](image.png)

#### Langkah 2: Cek file pubspec.yaml
Jika berhasil install plugin, pastikan plugin http telah ada di file pubspec ini seperti berikut.

![Alt text](image-1.png)

#### Langkah 3: Buka file main.dart

Ketiklah kode seperti berikut ini.
```import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evi Amalia Midfia', //soal 1
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          ElevatedButton(
            child: const Text('GO!'),
            onPressed: (),
          ),
          const Spacer(),
          Text(result),
          const Spacer(),
          const CircularProgressIndicator(),
          const Spacer(),
        ]),
      ),
    );
  }
```

#### Langkah 4: Tambah method getData()
Tambahkan method ini ke dalam class _FuturePageState yang berguna untuk mengambil data dari API Google Books.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/d2b572aa-6835-4a83-a07d-bc25d37abf52)

**Soal 2**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/c8ea46f2-f86d-4111-9be3-3d72f1f5c65a)

**Output**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/1b53ca4f-8a49-4145-90c4-12d244011f4b)

#### Langkah 5: Tambah kode di ElevatedButton
Tambahkan kode pada 'onPressed' di 'ElevatedButton' seperti berikut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/1eeba1c9-5195-4784-81e9-208e9be1dd9b)

**Output**

https://github.com/evi03/PemogramanMobile/assets/95482289/f7a36c61-fef2-40c8-9538-7c2af3321dfa

> **substring:** Ini adalah langkah untuk mengambil sebagian teks dari badan respons. digunakan untuk mengambil 450 karakter pertama dari badan respons. Hal ini dilakukan agar tidak menampilkan terlalu banyak teks. **CatchError**: Ini adalah bagian dari Future API yang menangkap kesalahan yang mungkin terjadi selama eksekusi Future. Jika ada kesalahan selama pemanggilan `getData`, blok kode dalam `.catchError` akan dijalankan. Pada contoh ini, jika terjadi kesalahan, variabel `result` akan diatur dengan pesan kesalahan 'An error occurred'. Jadi, secara keseluruhan, kode tersebut berfungsi untuk mengambil data dari permintaan HTTP setelah tombol "GO!" ditekan, kemudian memproses responsnya, dan menampilkan hasil atau menangani kesalahan jika ada.

## Praktikum 2: Menggunakan await/async untuk menghindari callbacks

#### Langkah 1: Buka file main.dart

Tambahkan tiga method berisi kode seperti berikut di dalam 'class _FuturePageState'.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/d0e6c5ec-52b6-4958-aaa6-b798080c9e86)

#### Langkah 2: Tambah method count()

Lalu tambahkan lagi method ini di bawah ketiga method sebelumnya.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/d5245b34-655d-4ef9-92b2-c0d0ab181dfb)

#### Langkah 3: Panggil count()

Lakukan comment kode sebelumnya, ubah isi kode onPressed() menjadi seperti berikut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/7f3a0d74-1602-4ad0-9130-3e52c68f993d)

#### Langkah 4: Run

Akhirnya, run atau tekan F5 jika aplikasi belum running. Maka Anda akan melihat seperti gambar berikut, hasil angka 6 akan tampil setelah delay 9 detik.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/c11ba9a1-7443-431f-8dde-7f32e4b72bae)

## Praktikum 3: Menggunakan Completer di Future

#### Langkah 1: Buka main.dart
Pastikan telah impor package async berikut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/07c7e52f-fd20-4e66-9e9d-f83d41a0591e)

#### Langkah 2: Tambahkan variabel dan method
Tambahkan variabel late dan method di class _FuturePageState seperti ini.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/cf0018cd-c6fb-4d8e-b0ca-40080d6bb12f)

#### Langkah 3: Ganti isi kode onPressed()
Tambahkan kode berikut pada fungsi onPressed(). Kode sebelumnya bisa Anda comment.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/24a4f766-e4cd-4711-bfec-39d633fa770e)

#### Langkah 4:
Terakhir, run atau tekan F5 untuk melihat hasilnya jika memang belum running. Bisa juga lakukan hot restart jika aplikasi sudah running. Maka hasilnya akan seperti gambar berikut ini. Setelah 5 detik, maka angka 42 akan tampil.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/ff3487be-050e-4513-82de-84417f4e6906)

> Maksud kode langkah 2 yaitu untuk menciptakan dan menyelesaikan Future secara manual dengan menggunakan Completer. Ini dapat berguna dalam situasi di mana perlu mengontrol sendiri kapan suatu Future selesai.

#### Langkah 5: Ganti method calculate()
Gantilah isi code method calculate() seperti kode berikut, atau Anda dapat membuat calculate2()

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/c90b3b5e-7477-40bb-9e6f-9049a6ea42b4)

#### Langkah 6: Pindah ke onPressed()
Ganti menjadi kode seperti berikut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/be523df4-7ea8-49af-8f64-f98f7d58c35d)

> Kode langkah 2 lebih berfokus pada komunikasi dengan API eksternal (Google Books) untuk mendapatkan data.
Kodelangkah 5 dan 6 menunjukkan penggunaan Completer untuk mengelola suatu Future yang melibatkan perhitungan asinkron yang lebih sederhana.

# Praktikum 4: Memanggil Future secara paralel

#### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/7952d3d7-2f79-422b-adff-8e2084a90358)

#### Langkah 2: Edit onPressed()
Anda bisa hapus atau comment kode sebelumnya, kemudian panggil method dari langkah 1 tersebut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/b50ff55e-a639-4404-9968-d88030cd43b5)


#### Langkah 3: Run
Anda akan melihat hasilnya dalam 3 detik berupa angka 6 lebih cepat dibandingkan praktikum sebelumnya menunggu sampai 9 detik.

* **Soal 7: Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 7"**
  
![image](https://github.com/evi03/PemogramanMobile/assets/95482289/aa85ae1e-35fe-4960-8adb-e4dc63129ef7)


#### Langkah 4: Ganti variabel futureGroup
Anda dapat menggunakan FutureGroup dengan Future.wait seperti kode berikut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/008d0bd7-4aa0-48c8-8716-6d9aec9297b7)

* **Soal 8: Jelaskan maksud perbedaan kode langkah 1 dan 4!**
> Langkah 1 menggunakan FutureGroup untuk mengelola kumpulan Future. Sementara langkah 4 menggunakan Future.wait untuk menunggu sejumlah Future selesai sebelum melanjutkan.

# Praktikum 5: Menangani Respon Error pada Async Code
#### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/44bcbab5-5d5a-4816-942b-05149c5f2cf5)

#### Langkah 2: ElevatedButton
Ganti dengan kode berikut

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/ff081236-7c6f-4762-aabf-3e0b3961d2b1)

#### Langkah 3: Run
Lakukan run dan klik tombol GO! maka akan menghasilkan seperti gambar berikut.

* **Soal 9**

Capture hasil praktikum Anda berupa

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/010e15e8-4562-4ac2-9b34-f8b519903285)

#### Langkah 4: Tambah method handleError()
Tambahkan kode ini di dalam class _FutureStatePage

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/99c6f4f1-044e-43b1-b611-ca3aa8d925fb)

#### Langkah 4: Tambah method handleError()
Tambahkan kode ini di dalam class _FutureStatePage

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/8c132b46-780d-49d4-8428-a88ad585a1d5)



* **Soal 10**
  
Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/1f932907-f3a3-44d4-bb70-74761eacbdb4)

# Praktikum 6: Menggunakan Future dengan StatefulWidget
#### Langkah 1: install plugin geolocator
Tambahkan plugin geolocator dengan mengetik perintah berikut di terminal.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/09827b99-9871-4059-9eeb-4cac7c1d8029)

#### Langkah 2: Tambah permission GPS
Jika Anda menargetkan untuk platform Android, maka tambahkan baris kode berikut di file android/app/src/main/androidmanifest.xml

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/04e2eafc-e71e-4f11-b5b2-da0b23ae68aa)

#### Langkah 3: Buat file geolocation.dart
Tambahkan file baru ini di folder lib project Anda.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/9126b715-76e8-4869-b05e-a1ef7b3c3189)

#### Langkah 4: Buat StatefulWidget
Buat class LocationScreen di dalam file geolocation.dart

#### Langkah 5: Isi kode geolocation.dart
```import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';
  @override
  Void initState() {
    super.initState();
    getPosition().then((Position myPos){
      myPosition =
      'Latidute: ${myPos.latitude.toString()} - Longitude:
      {myPos.longitude.toString()}';
      setState(() {
        myPosition = myPosition;
      });
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Evi Amalia Midfia Current Location')), // Soal 11
      body: Center(child: Text(myPosition)),
    );
  }

  Future<Position> getPosition() async{
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position? position =
      await Geolocator.getCurrentPosition();
    return position;
  }
}
```
* **Soal 11**
Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/a7596c2f-00cd-4c82-a495-163109cc801e)

#### Langkah 6: Edit main.dart
Panggil screen baru tersebut di file main Anda seperti berikut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/a64c82c6-5db0-4e44-a087-2abc00fe6807)

#### Langkah 7: Run
Run project Anda di device atau emulator (bukan browser), maka akan tampil seperti berikut ini.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/83a41050-81b5-4c73-b8a4-f3fbaf621989)

#### Langkah 8: Tambahkan animasi loading
Tambahkan widget loading seperti kode berikut. Lalu hot restart, perhatikan perubahannya.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/053c0489-6ac9-4f22-b735-c1ad72bcdaa1)

* **Soal 12**
> Jika Anda tidak melihat animasi loading tampil, kemungkinan itu berjalan sangat cepat. Tambahkan delay pada method getPosition() dengan kode await Future.delayed(const Duration(seconds: 3));
Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 12".

# Praktikum 7: Manajemen Future dengan FutureBuilder
#### Langkah 1: Modifikasi method getPosition()
Buka file geolocation.dart kemudian ganti isi method dengan kode ini.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/db9955dd-b491-4cef-b901-bb951869827e)

#### Langkah 2: Tambah variabel
Tambah variabel ini di class _LocationScreenState

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/630117e0-03f5-4966-8eb9-70bc48f1315f)

#### Langkah 3: Tambah initState()
Tambah method ini dan set variabel position

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/92242bfd-6e41-40ae-925c-5cef7e056798)

#### Langkah 4: Edit method build()
Ketik kode berikut dan sesuaikan. Kode lama bisa Anda comment atau hapus.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/ca4f1771-81e9-4b5a-897f-9d1392006be9)

* **Soal 13:  Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?**
> Kedua praktikum tersebut tidak memiliki perbedaan pada antarmuka pengguna (UI). Keduanya menampilkan koordinat geolokasi dengan tata letak yang identik. Kesamaan ini disebabkan oleh pengambilan lokasi yang masih bersifat sinkron di dalam blok initState pada kedua praktikum. Waktu tampilan UI pada keduanya juga mengalami delay yang sama, yaitu 3 detik. Selain itu, tampilan UI dapat tampak seragam karena FutureBuilder secara otomatis mengelola pembaruan UI, bahkan tanpa perlu pemanggilan setState secara langsung.

#### Langkah 5: Tambah handling error
Tambahkan kode berikut untuk menangani ketika terjadi error. Kemudian hot restart.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/1ef012a9-057e-4576-86e0-97d2e2d61395)

# Praktikum 8: Navigation route dengan Future Function

#### Langkah 1: Buat file baru navigation_first.dart
Buatlah file baru ini di project lib Anda.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/d220d8d0-da12-40fb-aef2-9f591d94ab8c)

#### Langkah 2: Isi kode navigation_first.dart
* **Soal 15**
Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.
Silakan ganti dengan warna tema favorit Anda.

```import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.pink.shade700; //soal 15
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color,
      appBar: AppBar(actions: 
      Title: const Text('Navigation First Screen Evi'), //soal 15
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _NavigateAndGetColor(context);
          }),
        ),
    );
  }
}
```

#### Langkah 3: Tambah method di class _NavigationFirstState
Tambahkan method ini.
```// Prak 8 langkah 3
  Future _navigateAndGetColor(BuildContext context) async {
   color = await Navigator.push(
    context,
        MaterialPageRoute(builder: (context) => const NavigationSecond()),
      ) ?? 
      Colors.blue;
   setState(() {});
   }
}
```

#### Langkah 4: Buat file baru navigation_second.dart
Buat file baru ini di project lib Anda. Silakan jika ingin mengelompokkan view menjadi satu folder dan sesuaikan impor yang dibutuhkan.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/1bd070ab-7fea-481e-b8c4-4efd98dfb317)

#### Langkah 5: Buat class NavigationSecond dengan StatefulWidget
```import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}
class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Second Screen Evi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            ElevatedButton(
              child: const Text("Red"),
                onPressed: () {
                  color = Colors.red.shade700;
                  Navigator.pop(context, color);
                }),
            ElevatedButton(
              child: const Text("Green"),
                onPressed: () {
                  color = Colors.green.shade700;
                  Navigator.pop(context, color);
                }),  
            ElevatedButton(
              child: const Text("Blue"),
                onPressed: () {
                  color = Colors.blue.shade700;
                  Navigator.pop(context, color);
                }),  
                const Spacer(),
          ],
        ),
      ),
    );
  }
}
```

#### Langkah 6: Edit main.dart
Lakukan edit properti home.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/c62dd449-5485-41ea-9168-264b8be6b466)

#### Langkah 8: Run
Lakukan run, jika terjadi error silakan diperbaiki.

* **Soal 16**
> **Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian?** Ketika tombol button diklik, warnanya akan berubah sesuai dengan konfigurasi yang telah ditetapkan dalam ElevatedButton() di dalam kelas navigation_second.dart. Perubahan warna ini karena terdapat fungsi Navigation.pop() pada setiap tombol, dengan parameter berupa konteks dan warna yang telah ditentukan sebelumnya. Jadi, jika masing-masing tombol diklik, warna yang ditampilkan akan bervariasi sesuai dengan nilai variabel color yang telah diatur sebelumnya.

https://github.com/evi03/PemogramanMobile/assets/95482289/cfd19184-77bc-42aa-bb88-76562d354202

> Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!
```import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}
class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Second Screen Evi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            ElevatedButton(
              child: const Text("Pink"),
                onPressed: () {
                  color = Colors.pink.shade700;
                  Navigator.pop(context, color);
                }),
            ElevatedButton(
              child: const Text("Purple"),
                onPressed: () {
                  color = Colors.purple.shade700;
                  Navigator.pop(context, color);
                }),  
            ElevatedButton(
              child: const Text("Yellow"),
                onPressed: () {
                  color = Colors.yellow.shade700;
                  Navigator.pop(context, color);
                }),  
                const Spacer(),
          ],
        ),
      ),
    );
  }
}
```

https://github.com/evi03/PemogramanMobile/assets/95482289/e63857a1-597a-45a7-b844-f2dc7f8d16e1

# Praktikum 9: Memanfaatkan async/await dengan Widget Dialog

#### Langkah 1: Buat file baru navigation_dialog.dart
Buat file dart baru di folder lib project Anda.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/2db64762-1b33-4da8-8bfb-a783a13284d8)

#### Langkah 2: Isi kode navigation_dialog.dart
```import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen Evi'),
      ),
      body: Center(
        child:
            ElevatedButton(child: const Text('Change Color'), onPressed: () {}),
      ),
    );
  }
}
```

#### Langkah 3: Tambah method async
```//Prak 9 Langkah 3
  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
                child: const Text('Red'),
                onPressed: () {
                  color = Colors.red.shade700;
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Green'),
                onPressed: () {
                  color = Colors.green.shade700;
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Blue'),
                onPressed: () {
                  color = Colors.blue.shade700;
                  Navigator.pop(context, color);
                }),
          ],
        );
      },
    );
    setState(() {});
  }
}
```

#### Langkah 4: Panggil method di ElevatedButton

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/36094ded-6893-4e6d-a099-9593672b8c30)

#### Langkah 5: Edit main.dart
Ubah properti home

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/fcf922d6-c22d-4242-aed2-40ad78cd78c9)

#### Langkah 6: Run
Coba ganti warna background dengan widget dialog tersebut. Jika terjadi error, silakan diperbaiki. Jika berhasil, akan tampil seperti gambar berikut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/7adb5e6e-f7b1-4368-85f0-faddfef2885d)

* **Soal 17**

> **Cobalah klik setiap button, apa yang terjadi? Mengapa demikian?** Ketika tombol "changecolor" ditekan, muncul alert/dialog yang memungkinkan pengguna memilih warna untuk mengubah latar belakang. Proses ini terjadi karena nilai warna diperbarui dengan nilai yang dipilih dalam fungsi _showColorDialog, dan setelah itu, widget diperbarui dengan menggunakan setState. Hal ini mengakibatkan pembangunan kembali widget dan menampilkan perubahan warna pada layar.

> **Gantilah 3 warna pada langkah 3 dengan warna favorit Anda!**
``` _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
                child: const Text('yellow'),
                onPressed: () {
                  color = Colors.yellow.shade700;
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Green'),
                onPressed: () {
                  color = Colors.green.shade700;
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('blue'),
                onPressed: () {
                  color = Colors.blue.shade700;
                  Navigator.pop(context, color);
                }),
          ],
        );
      },
    );
    setState(() {});
  }
}
```

https://github.com/evi03/PemogramanMobile/assets/95482289/e57e7178-b452-4ce4-ae31-19c8ce184113
