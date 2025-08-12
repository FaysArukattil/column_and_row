import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardSample extends StatelessWidget {
  const CardSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Card(
            color: CupertinoColors.destructiveRed,
            shadowColor: Colors.grey,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/33350503/pexels-photo-33350503.jpeg",
              ),
              child: Text("Hello", style: TextStyle(fontSize: 30)),
            ),
          ),
        ),
      ),
    );
  }
}

// Row
// colum
// sigleChildScrollview
// //Expanded
// //Flexible
