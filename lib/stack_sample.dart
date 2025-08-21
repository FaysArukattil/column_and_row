import 'package:flutter/material.dart';

class StackSample extends StatelessWidget {
  const StackSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack")),
      body: SizedBox(
        height: 200,
        width: 200,
        child: Stack(
          children: [
            Container(height: 200, width: 200, color: Colors.tealAccent),
            Positioned(
              right: 30,
              child: Container(height: 170, width: 170, color: Colors.yellow),
            ),
            Positioned(
              top: 30,
              child: Container(
                height: 120,
                width: 120,
                color: Colors.redAccent,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 20,
                width: 20,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
