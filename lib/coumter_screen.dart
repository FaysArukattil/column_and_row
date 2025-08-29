import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CoumterScreenState();
}

class _CoumterScreenState extends State<CounterScreen> {
  num counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          counter++;
          setState(() {});
        },
      ),
      appBar: AppBar(title: Text("Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You Have Clicked $counter Times"),
            Text(
              "$counter",
              style: TextStyle(fontSize: 50, color: Colors.purple.shade100),
            ),
          ],
        ),
      ),
    );
  }
}
