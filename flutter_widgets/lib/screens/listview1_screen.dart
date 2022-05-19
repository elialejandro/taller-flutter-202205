import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Mario Bros',
    'Dragon ball Z figther',
    'Naruto Storm',
    'Battle Field',
    'Tetris',
    'Fortnigth'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview 1'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Container(
              height: 50,
              color: Colors.cyan[700],
              child: const Center(
                  child: Text(
                'Hola 1',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))),
          ...options.map((game) => ListTile(
                title: Text(game),
                trailing: const Icon(Icons.arrow_forward_ios),
              ))
        ],
      ),
    );
  }
}
