import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lua/pages/dashboard.dart';
import 'package:lua/pages/menudroit.dart';
import 'package:lua/pages/menugauche.dart';
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

class _Accueil extends State<Accueil> {
  GlobalKey<ScaffoldState> cles = GlobalKey();
  //
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    //
    super.initState();
    //
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: _key,
        appBar: AppBar(
          elevation: 0,
          leading: InkWell(
            onTap: () {
              //
              _key.currentState!.openDrawer();
              //Scaffold.of(cles.currentContext!).openDrawer();
            },
            child: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              child: Icon(
                Icons.school,
                color: Colors.white,
              ),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          centerTitle: false,
          // leading: Container(
          //   width: 50,
          //   child: Row(),
          // ),
          actions: [
            //
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            //
            IconButton(
              onPressed: () {
                //
                _key.currentState!.openEndDrawer();
              },
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        endDrawer: Container(
          padding: EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width / 1.1,
          child: Drawer(
            child: MenuDroit(),
          ),
        ),
        drawer: Container(
          width: MediaQuery.of(context).size.width / 1.1,
          child: Drawer(
            child: MenuGauche(),
          ),
        ),
        body: Dash(),
      ),
    );
  }
}


/*
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
            
*/