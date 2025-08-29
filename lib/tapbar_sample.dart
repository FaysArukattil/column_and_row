import 'package:column_and_row/color_screen.dart';
import 'package:column_and_row/dice.dart';
import 'package:column_and_row/sampleui2.dart';
import 'package:column_and_row/ui_sample.dart';
import 'package:flutter/material.dart';

class TapbarSample extends StatelessWidget {
  const TapbarSample({super.key});

  @override
  Widget build(BuildContext context) {
    num screenheight = MediaQuery.sizeOf(context).height;
    num screenwidth = MediaQuery.sizeOf(context).width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TapBar"),
          backgroundColor: Colors.amberAccent,
          bottom: TabBar(
            dividerHeight: 0,
            indicatorColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            // labelStyle: TextStyle(fontSize: 18),
            // unselectedLabelStyle: TextStyle(fontSize: 13),
            indicator: BoxDecoration(color: Colors.blueGrey),
            labelPadding: EdgeInsets.zero,
            isScrollable: true,
            tabAlignment: TabAlignment.start,

            tabs: [
              Tab(
                child: Center(
                  child: SizedBox(
                    width: screenwidth * .1,
                    child: Icon(Icons.camera_alt),
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: SizedBox(
                    width: screenwidth * .3,
                    child: Center(child: Text("Status")),
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: SizedBox(
                    width: screenwidth * .3,
                    child: Center(child: Text("Message")),
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: SizedBox(
                    width: screenwidth * .3,
                    child: Center(child: Text("Groups")),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [Sampleui2(), UiSample(), Dice(), ColorScreen()],
        ),
      ),
    );
  }
}
