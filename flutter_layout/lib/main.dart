import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /* soal 1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Wisata Pantai Pulodoro di Malang Selatan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kabupaten Malang, Jawa Timur, Indonesia',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /* soal 3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );

  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        // 'Carilah teks di internet yang sesuai '
        // 'dengan foto atau tempat wisata yang ingin '
        // 'Anda tampilkan. '
        // 'Tambahkan nama dan NIM Anda sebagai '
        // 'identitas hasil pekerjaan Anda. '
        // 'Selamat mengerjakan 🙂.',
        'Pantai Pulodoro adalah salah satu pantai yang terletak di Kabupaten Malang, Jawa Timur, Indonesia. Pantai Pulodoro memiliki pasir putih yang lembut dan ombak yang cukup besar. Pantai ini juga memiliki pemandangan yang indah, dengan hamparan pasir putih yang luas dan bebatuan karang yang menjorok ke laut. Pantai ini juga memiliki beberapa pulau kecil yang berada di dekatnya, yaitu Pulau Nusa Barong, Pulau Nusa Kambangan, dan Pulau Nusa Kucing. - Aido Luthfi Al Hakim (2141720136)',
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Flutter layout: Aido 2141720136',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aido 2141720136'),
        ),
        body: Column(
          children: [
            Image.asset(
              'images/pantai.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
