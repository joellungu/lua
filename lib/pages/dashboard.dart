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
        children: [
          actionPlus("Professeur", Icons.people_alt, 31, Colors.red),
          actionPlus("Contacts", Icons.quick_contacts_dialer, 131, Colors.teal),
          actionPlus("Staff", Icons.location_on, 11, Colors.blue.shade700),
          actionSimple("Mes Fichiers", Icons.folder),
          actionSimple("Bibliotheque", Icons.library_books),
          actionPlus(
              "Evenement", Icons.calendar_today, 2, Colors.green.shade700),
        ],
      ),
    );
  }

  Widget actionSimple(String text, IconData icon) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.teal,
            size: 70,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }

  Widget actionPlus(String text, IconData icon, int index, Color couleur) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.grey.shade300,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(0),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: Colors.teal,
                    size: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 30,
                width: 70,
                alignment: Alignment.center,
                child: Text(
                  "$index",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  color: couleur,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0.0, 0.0);
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width / 1.5, size.height / 2);
    path.moveTo(0.0, 0.0);
    //path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
