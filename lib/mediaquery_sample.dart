import 'package:flutter/material.dart';

class MediaquerySample extends StatelessWidget {
  const MediaquerySample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width * 0.5,
      ),
    );
  }
}
