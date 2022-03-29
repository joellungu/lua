import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lua/models/user_model.dart';
import 'package:lua/utile/connexion_users.dart';
import 'package:sqflite/sqflite.dart';

class InfoPersonnel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfoPersonnel();
  }
}

class _InfoPersonnel extends State<InfoPersonnel> {
  Future<bool> checkYourProfil() async {
    UserModel userModel = UserModel();
    Database db = await userModel.openDB();
    //
    List l = await db.query("user");
    return l.isEmpty;
  }

  Future<Map<String, dynamic>> getUsersInfosOnligne(
      BuildContext context) async {
    Map<String, dynamic> u = await ConnexionUser.getUser(context);
    //print(u);
    return u;
  }

  //
  Future<Map<String, dynamic>> getUsersInfosUnligne(
      BuildContext context) async {
    UserModel userDb = UserModel();
    Database db = await userDb.openDB();

    List<Map<String, dynamic>> lu = await db.query("USER");
    Map<String, dynamic> m1 = lu.isNotEmpty ? lu[0] : {};
    print(m1["user"]);
    Map<String, dynamic> m = m1["user"] == null
        ? {}
        : jsonDecode(m1["user"]); //jsonDecode(m1["user"]) ??
    return m;
  }

  Future<bool> checkLaConnection() async {
    bool c = await ConnexionUser.checkConnection();
    return c;
  }

  double taill_text = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
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
            const Text("Info. Personnel")
          ],
        ),
      ),
      body: FutureBuilder<bool>(
        future: checkLaConnection(),
        builder: (context, t) {
          if (t.hasData) {
            if (t.data!) {
              //vous etes connecté
              return FutureBuilder<Map<String, dynamic>>(
                  future: getUsersInfosOnligne(context),
                  builder: (context, t) {
                    if (t.hasData) {
                      return Inf(t.data);
                    } else if (t.hasError) {
                      return Container();
                    }

                    return Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(),
                      ),
                    );
                  });
            } else {
              //vous n'etes pas connecté
              return FutureBuilder<Map<String, dynamic>>(
                  future: getUsersInfosUnligne(context),
                  builder: (context, t) {
                    if (t.hasData) {
                      return Inf(t.data);
                    } else if (t.hasError) {
                      return Container();
                    }

                    return Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(),
                      ),
                    );
                  });
            }
          } else if (t.hasError) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("Actualiser"),
              ),
            );
          }

          return Center(
            child: SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}

class Inf extends StatefulWidget {
  Map<String, dynamic>? u;
  Inf(this.u);

  @override
  State<StatefulWidget> createState() {
    return _Inf();
  }
}

class _Inf extends State<Inf> {
  double taill_text = 15;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: ListView(
        padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
        children: [
          Card(
            elevation: 1,
            margin: const EdgeInsets.all(0),
            child: SizedBox(
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${widget.u!["perso"]}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${widget.u!["username"]}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: taill_text,
                            color: Colors.blueGrey[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Leadership Academia University",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            elevation: 1,
            margin: const EdgeInsets.all(0),
            child: SizedBox(
              //height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Information personnel",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nom",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${widget.u!["nom"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Post-Nom",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${widget.u!["postnom"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Prenom",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${widget.u!["prenom"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Téléphone",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${widget.u!["phone"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${widget.u!["email"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sexe",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${widget.u!["sexe"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Date d'anniversaire",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${widget.u!["birthday_at"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        /*
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                    */
                      },
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )
                          //backgroundColor:
                          //  MaterialStateProperty.all(Colors.blue.shade900),
                          ),
                      child: const SizedBox(
                          height: 45,
                          width: 220,
                          child: Center(
                            child: Text(
                              //google_icon.png
                              "Modifier votre profil",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          )),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class ProfilComplet extends StatelessWidget {
  double taill_text = 15;
  Map<String, dynamic>? u;

  ProfilComplet(this.u);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
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
            const Text("Profil complet")
          ],
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Card(
            elevation: 1,
            margin: const EdgeInsets.all(0),
            child: SizedBox(
              //height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Information personnel",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nom",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${u!["nom"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Post-Nom",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${u!["postnom"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Prenom",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${u!["prenom"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Téléphone",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${u!["phone"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${u!["email"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sexe",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${u!["sexe"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Date d'anniversaire",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            Text(
                              "${u!["birthday_at"]}  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: taill_text,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        /*
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                    */
                      },
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )
                          //backgroundColor:
                          //  MaterialStateProperty.all(Colors.blue.shade900),
                          ),
                      child: const SizedBox(
                          height: 45,
                          width: 220,
                          child: Center(
                            child: Text(
                              //google_icon.png
                              "Modifier votre profil",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          )),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

/*

*/