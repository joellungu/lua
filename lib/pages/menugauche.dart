import 'package:flutter/material.dart';

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
            indicatorColor: Colors.white,
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
                  leading: Icon(
                    Icons.people_alt,
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
                  leading: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Calendrier",
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
                    Icons.task_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Taches",
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
                ListTile(
                  leading: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Plus",
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
