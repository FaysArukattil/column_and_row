import 'package:flutter/material.dart';

class Statefulbutton extends StatefulWidget {
  const Statefulbutton({super.key});

  @override
  State<Statefulbutton> createState() => _StatefulbuttonState();
}

class _StatefulbuttonState extends State<Statefulbutton> {
  List<String> genders = ["male", "female", "others"];
  List<String> numbers = ["one", "two", "three", "four", "five"];
  bool isChecked = true, isOn = true;
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // Checkbox(
          //   value: isChecked,
          //   onChanged: (value) {
          //     isChecked = value!;
          //     setState(() {});
          //   },
          // ),
          CheckboxListTile(
            title: Text("ChecboxTitle"),
            value: isChecked,
            onChanged: (value) {
              isChecked = value!;
              setState(() {});
            },
          ),
          // Switch(
          //   value: isOn,
          //   onChanged: (value) {
          //     isOn = value;
          //     setState(() {});
          //   },
          // ),
          SwitchListTile(
            title: Text("Switch List tile"),
            value: isOn,
            onChanged: (value) {
              isOn = value;
              setState(() {});
            },
          ),
          RadioListTile(
            value: "male",
            groupValue: gender,
            onChanged: (value) {
              gender = value;
              setState(() {});
            },
            title: Text("MALE"),
          ),
          RadioListTile(
            value: "female",
            groupValue: gender,
            onChanged: (value) {
              gender = value;
              setState(() {});
            },
            title: Text("FEMALE"),
          ),
          RadioListTile(
            value: "others",
            groupValue: gender,
            onChanged: (value) {
              gender = value;
              setState(() {});
            },
            title: Text("others"),
          ),
          // PopupMenuButton(
          //   itemBuilder: (context) {
          //     List.generate(
          //       genders.length,
          //       (index) => PopupMenuItem(child: Text("$gender")),
          //     );
          //   },
          // itemBuilder: (context) => [
          //   PopupMenuItem(child: Text("Item 1")),
          //   PopupMenuItem(child: Text("Item 2")),
          //   PopupMenuItem(child: Text("Item 3")),
          // ],
          // ),
          PopupMenuButton(
            itemBuilder: (context) {
              return List.generate(
                genders.length,
                (index) => PopupMenuItem(
                  value: genders[index],
                  child: Text(genders[index]),
                ),
              );
            },
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return numbers.map((e) => PopupMenuItem(child: Text(e))).toList();
            },
          ),
          DropdownButton(
            value: gender,
            items: List.generate(
              genders.length,
              (index) => DropdownMenuItem(
                value: genders[index],
                child: Text(genders[index]),
              ),
            ),
            onChanged: (value) {
              gender = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
