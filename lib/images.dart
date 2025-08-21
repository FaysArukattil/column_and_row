import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Images")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Asset Image Widget"),
            Image.asset(height: 200, "assets/images/sampleimg2.jpg"),
            Text("Network Image"),
            Image.network(
              height: 200,
              'https://images.unsplash.com/photo-1614586125858-e695dd97d1b6?q=80&w=2103&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
            Container(
              decoration: BoxDecoration(color: Colors.amber),
              child: Image.asset(height: 200, "assets/images/sampleimg.JPG"),
            ),
          ],
        ),
      ),
    );
  }
}
