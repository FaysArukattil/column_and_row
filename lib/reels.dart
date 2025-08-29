import 'package:flutter/material.dart';

List<String> list = [
  'assets/images/iphone_sample_image.png',
  'assets/images/Airpods sample.png',
  'assets/images/mac sample image.png',
];
List<String> captions = [
  "Introducing the all-new iPhone | Apple",
  "Experience the new AirPods | Apple",
  "Introducing the all-new MacBook | Apple",
];

class Reels extends StatelessWidget {
  const Reels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,

        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.contain,

              image: AssetImage(list[index]),
            ),
          ),

          child: Stack(
            children: [
              Positioned(
                bottom: 80,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/apple icon.png',
                          ),
                        ),
                        SizedBox(width: 7),
                        Row(
                          children: [
                            Text("Apple"),
                            Icon(Icons.verified, size: 20),
                            SizedBox(width: 8),
                            Container(
                              alignment: Alignment.center,
                              width: 70,
                              height: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Text("follow"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(children: [Text(captions[index])]),
                    Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundImage: AssetImage(
                                        "assets/images/sampleimg.JPG",
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundImage: AssetImage(
                                          "assets/images/profile_sample_1.jpg",
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 20,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundImage: AssetImage(
                                          "assets/images/profile_sample_2.jpg",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 25),
                            Text("Followed by vahid_ and 63 others"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 80,
                right: 10,
                child: Column(
                  spacing: 20,
                  children: [
                    Column(
                      children: [Icon(Icons.favorite_border), Text("127k")],
                    ),
                    Column(
                      children: [
                        Column(children: [Icon(Icons.mode_comment_outlined)]),
                        Text("200"),
                      ],
                    ),
                    Column(
                      children: [
                        Column(children: [Icon(Icons.send_outlined)]),
                        Text("40"),
                      ],
                    ),
                    Column(
                      children: [
                        Column(children: [Icon(Icons.bookmark_border)]),
                        Text("228"),
                      ],
                    ),
                    Column(children: [Icon(Icons.more_vert)]),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Icon((Icons.music_note)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
