import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // implementasi title row
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
                    'Wisata Rumah Apung',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const Text(
                  'Banyuwangi, Indonesia',
                  style: TextStyle(
                    color: Color.fromARGB(255, 220, 220, 220),
                  ),
                ),
              ],
            ),
          ),
          /* soal 3*/
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('4.9'),
        ],
      ),
    );
Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);

    // buat widget textSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Rumah Apung adalah sebuah wisata pantai yang terletak di Banyuwangi, Jawa Timur, Indonesia. '
        'wisata ini terkenal dengan wisata bawah lautnya yang sangat menawan sehingga menarik wisatawan, terutama yang ingin snorkling. '
        'Selain itu, Rumah Apung juga memiliki pemandangan alam yang sangat menawan karena dapat melihat langsung pulau bali dengan hamparan selat bali yang begitu indah. '
        'Wisata ini menjadi destinasi wisata populer bagi wisatawan lokal maupun mancanegara.\n\n'
        'Tio Krisna Mukti (36248302126)',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Tio Krisna Mukti 362458302126',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // body: const Center(
        //   child: Text('Hello World'),
        // ),
        // body: Column(
        body: ListView(
          children: [
             Image.asset(
              'images/RA.jpg',
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


  // membuat method column _buildButtonColumn
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



