import 'package:flutter/material.dart';
import 'package:lua/pages/mescontacte.dart';
import 'package:lua/pages/taches.dart';
import 'package:lua/widgets/resultats.dart';
import 'package:lua/widgets/statistiques.dart';

class MenuDroit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuDroit();
  }
}

class _MenuDroit extends State<MenuDroit> with TickerProviderStateMixin {
  //
  late TabController controller;

  List angles = ["Statistiques", "Resultats", "Etudiants", "Taches"];
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
      child: Container(
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Container(
              height: 50,
              child: TabBar(
                isScrollable: true,
                indicatorWeight: 1,
                controller: controller,
                indicatorColor: Colors.teal,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.blue,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.yellow,
                ),
                tabs: List.generate(angles.length, (index) {
                  return Tab(
                    text: angles[index],
                  );
                }),
              ),
            ),
            Expanded(
              flex: 1,
              child: TabBarView(
                controller: controller,
                children: [
                  Statistique(),
                  Resultats(),
                  MesContactes(),
                  Taches()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
