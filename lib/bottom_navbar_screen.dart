import 'package:flutter/material.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  // List screens = [Text("Home"), Text("Favourite"), Text("Profile")];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navbar")),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: selectedindex,
        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },

        selectedItemColor: Colors.blueAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourite",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings",
          ),
        ],
      ),
      // body: screens[selectedindex],
      body: IndexedStack(
        index: selectedindex,
        children: [
          Center(child: Text("Home")),
          Center(child: Text("Favourite")),
          Center(child: Text("Profile")),
          Center(child: Text("Settings")),
        ],
      ),
    );
  }
}
