import 'package:flutter/material.dart';

class ContainerSample extends StatelessWidget {
  const ContainerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://images.pexels.com/photos/33350503/pexels-photo-33350503.jpeg",
            ),
          ),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [Colors.amberAccent, Colors.lightBlueAccent],
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(15, 15),
              color: Colors.grey,
              blurRadius: 8,
            ),
          ],
          // shape: BoxShape.circle,
        ),
        child: Text("Hello", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
