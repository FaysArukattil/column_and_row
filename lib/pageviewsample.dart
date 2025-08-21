import 'package:flutter/material.dart';

class Pageviewsample extends StatelessWidget {
  const Pageviewsample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page View")),
      body: PageView.builder(
        scrollDirection: Axis.vertical,

        itemBuilder: (context, index) =>
            Container(color: Colors.blueAccent, margin: EdgeInsets.all(10)),
        itemCount: 10,
      ),
    );
  }
}
