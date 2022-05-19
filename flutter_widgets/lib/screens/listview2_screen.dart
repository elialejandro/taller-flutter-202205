import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
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

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview 2'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  final game = options[index];
                  print(game);
                },
              ),
          separatorBuilder: (__, _) => const Divider(),
          itemCount: options.length),
    );
  }
}
