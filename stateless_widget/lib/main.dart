import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless Widget Lesson',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CupertinoButton(
                      child: const Text('BERITA TERBARU'),
                      onPressed: () {},
                    ),
                    CupertinoButton(
                      child: const Text('PERTANDINGAN HARI INI'),
                      onPressed: () {},
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      // create image widget from url
                      Image.network(
                        'https://pbs.twimg.com/media/E32s5wuXMAAbF1A?format=jpg&name=large',
                        // full width
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Spiderman menembakkan jaring',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // background color
                        color: Colors.green,
                        height: 50,
                        padding: const EdgeInsets.all(15),
                        child: const Text(
                          'Transfer',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                // create loop for news container
                for (var i = 0; i < 5; i++)
                  Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 1,
                    ),
                  ),
                  child: Column(children: [
                    Row(
                      // fix overflow
                      children: [
                        // url image
                        Image.network(
                          'https://phantom-marca.unidadeditorial.es/021e4592138cd17cd933c931c3bcca4b/resize/1200/f/webp/assets/multimedia/imagenes/2022/12/08/16704665094867.jpg',
                          width: 170,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          width: MediaQuery.of(context).size.width - 200,
                          child: const Text(
                            'Ishowspeed akan join ke timnas indonesia',
                            style: TextStyle(
                                fontSize  : 16),
                                softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                      padding: const EdgeInsets.all(15),
                      child: 
                        const Text('Cibinong, 7 September 2023',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 15)),
                      ),
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
