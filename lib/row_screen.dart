import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              _sampleCard(name: "first"),
              _sampleCard(name: "second"),
              _sampleCard(name: "Third", namecolor: Colors.red),
              _sampleCard(name: "fourth"),
              _sampleCard(name: "fifth"),
            ],
          ),
        ),
      ),
    );
  }

  Card _sampleCard({
    required String name,
    Color namecolor = Colors.blue,
    Color shdcolor = Colors.grey,
  }) {
    return Card(
      color: namecolor,
      shadowColor: shdcolor,
      child: Text(name, style: TextStyle(fontSize: 30)),
    );
  }
}
