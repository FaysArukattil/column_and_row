import 'package:flutter/material.dart';

class Listviewscreen extends StatelessWidget {
  const Listviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View")),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                color: Colors.red,
                margin: EdgeInsets.all(15),
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                    height: 50,
                    color: Colors.blue,
                    margin: EdgeInsets.all(15),
                  ),
                ),
              ),
              Container(
                height: 200,
                color: Colors.amber,
                margin: EdgeInsets.all(15),
                child: ListView.separated(
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                    height: 50,
                    color: Colors.blue,
                    margin: EdgeInsets.all(15),
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: 20),
                ),
              ),
            ],
          ),
          Container(height: 200, color: Colors.red, margin: EdgeInsets.all(15)),
          Container(height: 200, color: Colors.red, margin: EdgeInsets.all(15)),
          Container(height: 200, color: Colors.red, margin: EdgeInsets.all(15)),
          Container(height: 200, color: Colors.red, margin: EdgeInsets.all(15)),
        ],
      ),
    );
  }
}
