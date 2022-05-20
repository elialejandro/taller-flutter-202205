import 'package:flutter/material.dart';

class CardTipo1 extends StatelessWidget {
  const CardTipo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.warning,
              color: Colors.red,
            ),
            title: Text('Hola soy una tarjeta'),
            subtitle: Text('soy un subtitulo'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(onPressed: () {}, child: const Text('Cancelar')),
              TextButton(onPressed: () {}, child: const Text('Aceptar')),
            ]),
          ),
        ],
      ),
    );
  }
}
