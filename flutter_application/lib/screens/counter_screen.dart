import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int numero = 8;

  void agregarUno() {
    numero++;
    setState(() {});
  }

  void reset() {
    numero = 0;
    setState(() {});
  }

  void restarUno() {
    numero--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Clicks:',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w100),
            ),
            Text(
              '$numero',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[300]),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Clicks:',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w100),
                ),
                Text(
                  '$numero',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[300]),
                ),
              ],
            )
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: restarUno,
              child: const Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              onPressed: reset,
              child: const Icon(Icons.exposure_outlined),
            ),
            FloatingActionButton(
              onPressed: agregarUno,
              child: const Icon(Icons.exposure_plus_1),
            ),
          ],
        ));
  }
}
