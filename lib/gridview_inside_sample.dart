import 'package:flutter/material.dart';

class GridviewInsideSample extends StatelessWidget {
  const GridviewInsideSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 800,
              color: Colors.amber,
              margin: EdgeInsets.all(10),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) => Container(
                height: 200,
                width: 200,
                color: Colors.blueAccent,
                margin: EdgeInsets.all(10),
              ),
            ),
            Container(
              height: 200,
              width: 800,
              color: Colors.amber,
              margin: EdgeInsets.all(10),
            ),
            Container(
              height: 200,
              width: 800,
              color: Colors.deepOrangeAccent,
              margin: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
