import 'package:flutter/material.dart';

class Alertsamplescreen extends StatelessWidget {
  const Alertsamplescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    action: SnackBarAction(label: "Close", onPressed: () {}),
                    duration: Duration(seconds: 10),
                    margin: EdgeInsets.all(15),
                    backgroundColor: Colors.redAccent,
                    behavior: SnackBarBehavior.floating,
                    content: Text("Iam a SnackBar"),
                  ),
                );
              },
              child: Text("SnackBar"),
            ),
            ElevatedButton(onPressed: () {}, child: Text("AlertDialogue")),
            ElevatedButton(onPressed: () {}, child: Text("BottomSheet")),
          ],
        ),
      ),
    );
  }
}
