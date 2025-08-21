import 'package:column_and_row/booknow.dart';
import 'package:column_and_row/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UiSample extends StatelessWidget {
  const UiSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FB),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1614586125858-e695dd97d1b6?q=80&w=2103&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Homescreen(),
                                ),
                              );
                            },
                            child: CircleAvatar(
                              backgroundColor: Color(0x50000000),
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 25,
                                color: Colors.grey[200],
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Color(0x50000000),
                            child: Icon(
                              Icons.bookmark_add_outlined,
                              size: 25,
                              color: Colors.grey[200],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0x991f3948),
                            Color(0xcc0e2836),
                            Color(0xf20e2836),
                            Color(0xcc0e2836),
                            Color(0x991f3948),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Andes Mountain",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Price",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "South, America",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Text(
                                "230",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Details",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black.withValues(alpha: 0.5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black.withValues(alpha: 0.2),
                            ),
                            child: Icon(CupertinoIcons.time_solid),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "8 hours",
                            style: TextStyle(
                              color: (Colors.black.withValues(alpha: 0.5)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black.withValues(alpha: 0.2),
                            ),
                            child: Icon(Icons.cloud),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "16 °C",
                            style: TextStyle(
                              color: (Colors.black.withValues(alpha: 0.5)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black.withValues(alpha: 0.2),
                            ),
                            child: Icon(Icons.star),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "4.5",
                            style: TextStyle(
                              color: (Colors.black.withValues(alpha: 0.5)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  Text(
                    '''The Andes Mountains, stretching along the western edge of South America, form the longest continental mountain range in the world Spanning over 7,000 kilometers across seven countries, they are home to diverse landscapes, from snow-capped peaks and deep valleys to arid deserts and lush rainforests.This majestic range also contains some of the planet’s highest volcanoes and breathtaking glacial lakes. Rich in culture and history, the Andes have been home to ancient civilizations like the Inca, whose legacy is still visible in remarkable archaeological sites such as Machu Picchu. Today, they remain a haven for adventure seekers, offering trekking, climbing, and wildlife exploration amidst stunning scenery. The Andes’ unique climate and biodiversity make them one of the most fascinating natural wonders on Earth.''',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 60),
                ],
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Booknow()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Book Now",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Icon(CupertinoIcons.paperplane, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
