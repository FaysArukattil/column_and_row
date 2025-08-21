import 'package:flutter/material.dart';

class Sampleui2 extends StatelessWidget {
  const Sampleui2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal.withValues(alpha: 0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 40,
                      width: 40,
                      child: Icon(Icons.grid_view, size: 30),
                    ),
                    Column(
                      children: [
                        Text("Current Location"),
                        Text("New Austen George Italy"),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withValues(alpha: 0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 40,
                      width: 40,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(Icons.notifications_none, size: 30),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: CircleAvatar(
                              radius: 7,
                              child: Text("5", style: TextStyle(fontSize: 9)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 25),

                SearchBar(
                  leading: Icon(Icons.search, color: Colors.pinkAccent),
                  trailing: [Icon(Icons.tune)],
                  hintText: "Search By",
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),

                SizedBox(height: 25),

                Text("Location Categories"),
                SizedBox(height: 10),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                  "https://preview.redd.it/bffnr3w4jih91.png?width=640&crop=smart&auto=webp&s=5552a52d98b65cd1ab86291c58cf89a3e3d43e05",
                                ),
                              ),
                              SizedBox(width: 7),
                              Text("Nepal"),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 15),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withValues(alpha: 0.4),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                  "https://img.freepik.com/premium-photo/beautiful-view-colosseum-night-rome-italy-generated-by-ai_551405-2532.jpg",
                                ),
                              ),
                              SizedBox(width: 7),
                              Text("Italy"),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 15),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withValues(alpha: 0.4),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                  "https://img.freepik.com/premium-photo/london-city-street_933329-721.jpg",
                                ),
                              ),
                              SizedBox(width: 7),
                              Text("London"),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 15),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withValues(alpha: 0.4),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1602216056096-3b40cc0c9944",
                                ),
                              ),
                              SizedBox(width: 7),
                              Text("Kerala"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                Text("Recommended"),
                SizedBox(height: 15),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1602216056096-3b40cc0c9944",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Positioned(
                            right: 20,
                            bottom: -20,
                            child: CircleAvatar(
                              backgroundColor: Colors.pink,
                              radius: 25,
                              child: Badge.count(
                                count: 5,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,

                                  size: 28,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 30),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kili Beach",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.grey,
                                      size: 16,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      "Indonesia",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$240",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      "/Per Person",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//ListView,//ListTiles
