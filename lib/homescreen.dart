import 'package:column_and_row/card_sample.dart';
import 'package:column_and_row/container_sample.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 139, 153, 160),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text("Row & Column"),
      ),
      body: Center(
        child: Column(
          spacing: 20,

          children: [
            SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                  side: const BorderSide(color: Colors.blue, width: 2),
                ),
                padding: const EdgeInsets.all(15), // Adjust size
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerSample()),
                );
              },
              child: Text("Container", style: TextStyle(fontSize: 30)),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                  side: const BorderSide(color: Colors.blue, width: 2),
                ),
                padding: const EdgeInsets.all(15), // Adjust size
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardSample()),
                );
              },
              child: Text("Card", style: TextStyle(fontSize: 30)),
            ),
          ],
        ),
      ),
    );
  }
}
