import 'package:column_and_row/gridviewscreen.dart';
import 'package:column_and_row/images.dart';
import 'package:column_and_row/card_sample.dart';
import 'package:column_and_row/column_screen.dart';
import 'package:column_and_row/container_sample.dart';
import 'package:column_and_row/listviewscreen.dart';
import 'package:column_and_row/pageviewsample.dart';
import 'package:column_and_row/row_screen.dart';
import 'package:column_and_row/sampleui2.dart';
import 'package:column_and_row/stack_sample.dart';
import 'package:column_and_row/ui_sample.dart';
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              spacing: 20,

              children: [
                blueButton(
                  context,
                  buttontitle: "Container",
                  screen: ContainerSample(),
                ),
                blueButton(context, buttontitle: "Cards", screen: CardSample()),
                blueButton(context, buttontitle: "Row", screen: RowScreen()),
                blueButton(
                  context,
                  buttontitle: "column",
                  screen: ColumnScreen(),
                ),
                blueButton(context, buttontitle: "UI", screen: UiSample()),
                blueButton(
                  context,
                  buttontitle: "Stack",
                  screen: StackSample(),
                ),
                blueButton(context, buttontitle: "Ui2", screen: Sampleui2()),
                blueButton(context, buttontitle: "Images", screen: Images()),
                blueButton(
                  context,
                  buttontitle: "List View ",
                  screen: Listviewscreen(),
                ),
                blueButton(
                  context,
                  buttontitle: "Grid View",
                  screen: Gridviewscreen(),
                ),
                blueButton(
                  context,
                  buttontitle: "Page View",
                  screen: Pageviewsample(),
                ),
              ],
            ),
          ),
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
        padding: const EdgeInsets.all(15), // Adjust sizec
        minimumSize: const Size(250, 60),
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
