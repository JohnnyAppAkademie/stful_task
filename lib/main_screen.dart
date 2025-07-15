import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<int> counters = List.filled(5, 0);

  void increment(int index) {
    setState(() {
      counters[index]++;
    });
  }

// Sum = ( sum starts at 0, and number gets added ( a + b ))
  int get sum => counters.fold(0, (a, b) => a + b);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        spacing: 16,
        children: [
          for (int i = 0; i < counters.length; i++)
            CounterCard(
              counter: counters[i],
              onIncrement: () => increment(i),
            ),
          const SizedBox(height: 15),
          Text('Summe: $sum', style: const TextStyle(fontSize: 24)),
        ],
      ),
    ));
  }
}
