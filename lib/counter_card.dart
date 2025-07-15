import 'package:flutter/material.dart';

class CounterCard extends StatefulWidget {
  CounterCard({super.key});

  @override
  _CounterCardState createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: $counter'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
