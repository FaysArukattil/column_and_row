import 'package:flutter/material.dart';

class Gridviewscreen extends StatelessWidget {
  const Gridviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View")),
      body: GridView(
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.horizontal,
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: 180,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          // crossAxisCount: 3,
          maxCrossAxisExtent: 200,
        ),
        children: [
          Container(
            color: Colors.amber,
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              itemCount: 50,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                mainAxisExtent: 30,
                crossAxisCount: 5,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => index % 2 == 0
                  ? Container(color: Colors.black)
                  : Container(color: Colors.white),
            ),
          ),
          Container(
            color: Colors.blue,
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              itemCount: 50,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                mainAxisExtent: 30,
                crossAxisCount: 5,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) =>
                  Container(color: index.isEven ? Colors.black : Colors.white),
            ),
          ),
          Container(color: Colors.redAccent),
          Container(color: Colors.greenAccent),
          Container(color: Colors.deepPurple),
          Container(color: Colors.amber),
          Container(color: Colors.blue),
          Container(color: Colors.redAccent),
          Container(color: Colors.greenAccent),
          Container(color: Colors.deepPurple),
          Container(color: Colors.amber),
          Container(color: Colors.blue),
        ],
      ),
    );
  }
}
