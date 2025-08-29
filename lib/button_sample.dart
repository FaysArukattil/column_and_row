import 'package:flutter/material.dart';

Color? sampleColor;

class ButtonSample extends StatelessWidget {
  const ButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.favorite_border_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text("Elevated Button"),
            ),
            OutlinedButton(
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text("Outline Button"),
            ),
            TextButton(onPressed: () => {}, child: Text("Text Button")),
            IconButton(onPressed: () => {}, icon: Icon(Icons.airplanemode_on)),

            InkWell(
              // GestureDetector(
              onTap: () {},

              onDoubleTap: () {},
              onLongPress: () {},

              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 300,
                width: 300,
                child: Text("Hi"),
                // color: Colors.tealAccent.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
