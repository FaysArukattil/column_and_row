import 'package:column_and_row/gridviewscreen.dart';
import 'package:column_and_row/pageviewsample.dart';
import 'package:column_and_row/reels.dart';
import 'package:flutter/material.dart';

class NavigationSample extends StatelessWidget {
  const NavigationSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gridviewscreen()),
                );
              },
              child: Text("push"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("pop"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Pageviewsample()),
                );
              },
              child: Text("push replacement"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Reels()),
                  (route) => false,
                );
              },
              child: Text("push & remove until"),
            ),
          ],
        ),
      ),
    );
  }
}

//Navigation with Named Routes
//Diced App
