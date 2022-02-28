import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lua/utile/widget.dart';

import 'cours/cours.dart';
import 'partage/partage.dart';
import 'profile/profil.dart';

class Accueil extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Accueil();
  }
}

class _Accueil extends State<Accueil> with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    //
    controller = TabController(length: 3, vsync: this);
    //
    super.initState();
    //
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Widgets.textAppBar("LUA"),
          centerTitle: false,
          actions: [
            //
            PopupMenuButton(
              onSelected: (t) {
                print("______________________________________________ $t");
                if (t == 0) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return Profile();
                      },
                    ),
                  );
                } else if (t == 1) {
                } else if (t == 2) {
                } else if (t == 2) {
                } else {}
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Profile",
                        //style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                  value: 0,
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Programme des cours",
                        //style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                  value: 1,
                ),
                PopupMenuItem(
                  onTap: () async {
                    //
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Regle. Interieur",
                        //style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Bibliothèque",
                        //style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                  value: 3,
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Parametre",
                        //style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                  value: 4,
                ),
              ],
            ),
          ],
          bottom: TabBar(
            isScrollable: false,
            controller: controller,
            indicatorColor: Colors.white,
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white10,
            ),
            tabs: [
              Tab(
                //icon: Icon(Icons.directions_car),
                //text: "",
                child: Row(
                  children: [
                    Icon(
                      Icons.menu_book_outlined,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Cours")
                  ],
                ),
              ),
              Tab(
                //icon: Icon(Icons.directions_transit),
                //text: "Réception",
                child: Row(
                  children: [
                    Icon(Icons.people_alt_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Partage")
                  ],
                ),
              ),
              Tab(
                //icon: Icon(Icons.directions_transit),
                //text: "Réception",
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications,
                    ), //how_to_reg_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Valve")
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            Cours(),
            Partage(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
