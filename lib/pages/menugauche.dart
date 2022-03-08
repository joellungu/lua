import 'package:flutter/material.dart';
import 'package:lua/models/etudiant.dart';
import 'package:lua/pages/calendrier.dart';
import 'package:lua/pages/etudiants.dart';
import 'package:lua/pages/evenement.dart';
import 'package:lua/pages/staff.dart';

import 'departement.dart';
import 'professeurs.dart';

class MenuGauche extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuGauche();
  }
}

class _MenuGauche extends State<MenuGauche> with TickerProviderStateMixin {
  //
  late TabController controller;

  List angles = ["Université", "Admin"];
  //

  @override
  void initState() {
    //
    controller = TabController(length: angles.length, vsync: this);
    //
    super.initState();
    //
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: angles.length,
      child: Scaffold(
        backgroundColor: Colors.teal.shade400,
        appBar: AppBar(
          title: const Text("L.A.U"),
          automaticallyImplyLeading: false,
          centerTitle: false,
          bottom: TabBar(
            isScrollable: false,
            controller: controller,
            indicatorWeight: 1,
            //indicator: BoxDecoration(),
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white10,
            ),
            tabs: List.generate(angles.length, (index) {
              return Tab(
                text: angles[index],
              );
            }),
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            ListView(
              padding: EdgeInsets.all(10),
              children: [
                ListTile(
                  leading: Icon(
                    Icons.dashboard_customize_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Dashboard",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Professeus(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.people_alt,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Professeurs",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Staff(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.people_outline_sharp,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Statff",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Etudiants(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.people_alt,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Etudiants",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  //
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Departement(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.business,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Departements",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Cours",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.library_books,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Librerie",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Evenement(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.event_available,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Evenements",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Text(
                      "EXTRA",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    //
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Calendrier(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Programme de la semaine",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Chat",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.contact_page,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Contact",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.folder,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Fichier",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.map_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Centre",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.payment,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Paiement",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Notification",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Parametres",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
