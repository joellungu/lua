import 'package:flutter/material.dart';

class Dash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Dash();
  }
}

class _Dash extends State<Dash> {
  List<Map<String, dynamic>> options = [
    {
      "nom": "Professeur",
      "icon": Icons.ac_unit_rounded,
    },
    {
      "nom": "Contact",
      "icon": Icons.contacts_rounded,
    },
    {
      "nom": "Staff",
      "icon": Icons.person_pin_circle_outlined,
    },
    {
      "nom": "File Manager",
      "icon": Icons.folder,
    },
    {
      "nom": "Library",
      "icon": Icons.bookmarks_outlined,
    },
    {
      "nom": "Holiday",
      "icon": Icons.speaker,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.2,
      child: GridView.count(
        padding: EdgeInsets.all(20),
        shrinkWrap: true,
        physics: ScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 1,
        children: List.generate(options.length, (index) {
          return ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(0),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  options[index]["icon"],
                  color: Colors.teal,
                  size: 70,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  options[index]["nom"],
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
