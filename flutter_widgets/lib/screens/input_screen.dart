import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Screen')),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: Column(children: [
            CustomFormField(
              title: 'Nombre',
              helperText: 'Nombre del Cliente',
              icon: Icons.supervised_user_circle,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomFormField(
              title: 'Apellidos',
              helperText: 'Apellidos del Cliente',
              icon: Icons.supervised_user_circle,
            ),
          ]),
        ),
      )),
    );
  }
}

class CustomFormField extends StatelessWidget {
  String title;
  String helperText;
  IconData? icon;

  CustomFormField(
      {Key? key, required this.title, required this.helperText, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      validator: (value) {
        if (value == null) return 'Este es un campo requerido.';
        return value.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          labelText: title,
          helperText: helperText,
          suffixIcon: icon != null ? Icon(icon) : null,
          border: const OutlineInputBorder()),
    );
  }
}
