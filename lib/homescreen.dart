import 'package:column_and_row/alertsamplescreen.dart';
import 'package:column_and_row/bottom_navbar_screen.dart';
import 'package:column_and_row/button_sample.dart';
import 'package:column_and_row/color_screen.dart';
import 'package:column_and_row/coumter_screen.dart';
import 'package:column_and_row/dice.dart';
import 'package:column_and_row/expanded_and_flexible.dart';
import 'package:column_and_row/gridview_inside_sample.dart';
import 'package:column_and_row/gridviewscreen.dart';
import 'package:column_and_row/images.dart';
import 'package:column_and_row/card_sample.dart';
import 'package:column_and_row/column_screen.dart';
import 'package:column_and_row/container_sample.dart';
import 'package:column_and_row/listviewscreen.dart';
import 'package:column_and_row/mediaquery_sample.dart';
import 'package:column_and_row/navigation_sample.dart';
import 'package:column_and_row/pageviewsample.dart';
import 'package:column_and_row/reels.dart';
import 'package:column_and_row/row_screen.dart';
import 'package:column_and_row/sampleui2.dart';
import 'package:column_and_row/stack_sample.dart';
import 'package:column_and_row/statefulbutton.dart';
import 'package:column_and_row/tapbar_sample.dart';
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
                blueButton(context, buttontitle: "Reels", screen: Reels()),
                blueButton(
                  context,
                  buttontitle: "Expanded\n    \t\t\t&\nFlexible",
                  screen: ExpandedAndFlexible(),
                ),
                blueButton(
                  context,
                  buttontitle: "Button",
                  screen: ButtonSample(),
                ),
                blueButton(
                  context,
                  buttontitle: "Grid View \ninside Column",
                  screen: GridviewInsideSample(),
                ),
                blueButton(
                  context,
                  buttontitle: "Navigation",
                  screen: NavigationSample(),
                ),
                blueButton(
                  context,
                  buttontitle: "Statefull Widget",
                  screen: CounterScreen(),
                ),
                blueButton(
                  context,
                  buttontitle: "ColorScreen",
                  screen: ColorScreen(),
                ),
                blueButton(context, buttontitle: "Dice", screen: Dice()),
                blueButton(
                  context,
                  buttontitle: "StatefulButton",
                  screen: Statefulbutton(),
                ),
                blueButton(
                  context,
                  buttontitle: "TapBar",
                  screen: TapbarSample(),
                ),
                blueButton(
                  context,
                  buttontitle: "MediaQuery Sample",
                  screen: MediaquerySample(),
                ),
                blueButton(
                  context,
                  buttontitle: "Bottom NavBar",
                  screen: BottomNavbarScreen(),
                ),
                blueButton(
                  context,
                  buttontitle: "Alert",
                  screen: Alertsamplescreen(),
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
        padding: const EdgeInsets.all(15), // Adjust size
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
