import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CardTipo1(),
          CardTipo2(url: 'https://wallpaperaccess.com/full/1076309.jpg'),
          CardTipo2(url: 'https://cdn.wallpapersafari.com/36/8/RmU0Au.jpg'),
          CardTipo2(url: 'https://wallpaperaccess.com/full/4023744.jpg'),
          CardTipo2(
              url:
                  'https://livewallp.com/wp-content/uploads/2021/12/Cool-Cat.jpg'),
        ],
      ),
    );
  }
}

class CardTipo2 extends StatelessWidget {
  final String url;

  const CardTipo2({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24), topRight: Radius.circular(24))),
      elevation: 30,
      shadowColor: Colors.deepPurple,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(url),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          // Image(
          // image: NetworkImage(
          //     'https://wallpaperaccess.com/full/1076309.jpg')),
        ],
      ),
    );
  }
}
