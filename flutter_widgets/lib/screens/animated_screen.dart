import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 20;
  double _height = 100;
  Color _color = Colors.amber;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(15);

  void cambiar() {
    final random = Random();

    _width = random.nextInt(200) + 35;
    _height = random.nextInt(200) + 35;
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadiusGeometry =
        BorderRadius.circular(random.nextInt(100).toDouble() + 15);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Screen')),
      body: Center(
          child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInCirc,
        width: _width,
        height: _height,
        decoration:
            BoxDecoration(color: _color, borderRadius: _borderRadiusGeometry),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: cambiar,
        child: const Icon(
          Icons.play_circle_fill,
          size: 38,
        ),
      ),
    );
  }
}
