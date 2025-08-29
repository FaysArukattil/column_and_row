import 'package:flutter/material.dart';

class ExpandedAndFlexible extends StatelessWidget {
  const ExpandedAndFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Expanded(flex: 1, child: Container(color: Colors.tealAccent)),
            // Expanded(flex: 3, child: Container(color: Colors.teal)),
            // Expanded(child: Container(color: Colors.green)),
            // Flexible(flex: 1, child: Container(color: Colors.tealAccent)),
            // Flexible(flex: 3, child: Container(height: 200, color: Colors.teal)),
            // Flexible(child: Container(color: Colors.green)),

            //  !! ListView inside a Column

            // !! Either Wrap with Expanded  or Sized Box(When Giving ListView inside a Column(Not Scrollable Column))
            // !! Either Wrap with Sized Box or Turn Off Scrollability of ListView using physics: NeverScrollableScrollPhysics() and set shrinkWrap: true,
            Text("USING SIZED BOX OR EXPANDED"),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                color: Colors.blueAccent,
                height: 100,
                margin: EdgeInsets.all(15),
              ),
            ),
            Container(
              color: Colors.amberAccent,
              height: 100,
              margin: EdgeInsets.all(15),
            ),
          ],
        ),
      ),
    );
  }
}
