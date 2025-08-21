import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Icon(Icons.apple_sharp),
                title: Text("Hello"),
                subtitle: Text("How are You"),
                trailing: Icon(
                  Icons.signal_wifi_statusbar_connected_no_internet_4_sharp,
                ),
              ),
              Card(
                color: Colors.red,
                shadowColor: Colors.grey,
                child: Text("Hello", style: TextStyle(fontSize: 30)),
              ),
              SizedBox(height: 100),
              Card(
                color: Colors.blue,
                shadowColor: Colors.grey,
                child: Text("How", style: TextStyle(fontSize: 30)),
              ),
              SizedBox(height: 100),
              Card(
                color: Colors.green,
                shadowColor: Colors.grey,
                child: Text("Hi", style: TextStyle(fontSize: 30)),
              ),
              SizedBox(height: 100),
              Card(
                color: Colors.red,
                shadowColor: Colors.grey,
                child: Text("Down", style: TextStyle(fontSize: 30)),
              ),
              SizedBox(height: 100),
              Card(
                color: Colors.blue,
                shadowColor: Colors.grey,
                child: Text("Fast", style: TextStyle(fontSize: 30)),
              ),
              SizedBox(height: 100),
              Card(
                color: Colors.green,
                shadowColor: Colors.grey,
                child: Text("Nice", style: TextStyle(fontSize: 30)),
              ),
              Card(
                color: Colors.red,
                shadowColor: Colors.grey,
                child: Text("Down", style: TextStyle(fontSize: 30)),
              ),
              Card(
                color: Colors.blue,
                shadowColor: Colors.grey,
                child: Text("Fast", style: TextStyle(fontSize: 30)),
              ),
              Card(
                color: Colors.green,
                shadowColor: Colors.grey,
                child: Text("Nice", style: TextStyle(fontSize: 30)),
              ),
              ListTile(
                leading: Icon(Icons.apple_sharp),
                title: Text("Hello"),
                subtitle: Text("How are You"),
                trailing: Icon(
                  Icons.signal_wifi_statusbar_connected_no_internet_4_sharp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
