import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;

  const CounterCard({
    super.key,
    required this.counter,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Zähler: $counter'),
              ElevatedButton(
                  onPressed: onIncrement, child: const Text("Zähl hoch (+1)"))
            ],
          )),
    );
  }
}
