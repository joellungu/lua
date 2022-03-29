import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lua/models/user_model.dart';
import 'package:lua/pages/dashboard.dart';
import 'package:lua/pages/menudroit.dart';
import 'package:lua/pages/menugauche.dart';
import 'package:lua/utile/check.dart';
import 'package:lua/utile/widget.dart';
import 'package:sqflite/sqflite.dart';

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
  //
  String textAttente =
      "Patientez pendant le chargement des vos données personnel";
  bool boolAttente = true;

  Future<void> getUserInfo() async {
    //
    Check check = Check();
    //
    int r = await check.getUserInfos();
  }

  Future<void> checkYourProfil() async {
    UserModel userModel = UserModel();
    Database db = await userModel.openDB();
    //
    List l = await db.query("user");
  }

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Dash(),
            Container(
              height: 50,
              width: 50,
              child: Image.asset(
                "assets/LOGO PNG.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
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