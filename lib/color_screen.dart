import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  Color? colorChanger;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorChanger,
      appBar: AppBar(title: Text("Color Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Container(color: Colors.amber, height: 100, width: 100),
              onTap: () {
                colorChanger = Colors.amber;
                setState(() {});
              },
            ),
            InkWell(
              child: Container(color: Colors.green, height: 100, width: 100),
              onTap: () {
                colorChanger = Colors.green;
                setState(() {});
              },
            ),
            InkWell(
              child: Container(color: Colors.blue, height: 100, width: 100),
              onTap: () {
                colorChanger = Colors.blue;
                setState(() {});
              },
            ),
            InkWell(
              child: Container(color: Colors.red, height: 100, width: 100),
              onTap: () {
                colorChanger = Colors.red;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
