import 'package:column_and_row/card_sample.dart';
import 'package:column_and_row/column_screen.dart';
import 'package:column_and_row/container_sample.dart';
import 'package:column_and_row/row_screen.dart';
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
            blueButton(
              context,
              buttontitle: "Container",
              screen: ContainerSample(),
            ),
            blueButton(context, buttontitle: "Cards", screen: CardSample()),
            blueButton(context, buttontitle: "Row", screen: RowScreen()),
            blueButton(context, buttontitle: "column", screen: ColumnScreen()),
          ],
        ),
      ),
    );
  }

  TextButton blueButton(
    BuildContext context, {
    required String buttontitle,
    required Widget screen,
  }) {
    return TextButton(
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
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Text(buttontitle, style: TextStyle(fontSize: 30)),
    );
  }
}
