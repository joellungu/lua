import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/accueil.dart';
import 'utile/connexion_users.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
  bool obs = true;
  TextEditingController emailControlleur = TextEditingController();
  TextEditingController mdpControlleur = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Authentification",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                "assets/LOGO PNG.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(),
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            controller: emailControlleur,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 14,
                              ),
                              prefixIcon: const Icon(
                                CupertinoIcons.person,
                                color: Colors.blue,
                              ),
                              hintText: "Email",
                              label: const Text("Email"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Mot de passe",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: mdpControlleur,
                            keyboardType: TextInputType.emailAddress,
                            obscureText: obs,
                            style: const TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 14,
                              ),
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Colors.blue,
                              ),
                              hintText: "Mot de passe",
                              label: Text("Mot de passe"),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              obs ? obs = false : obs = true;
                            });
                          },
                          icon: Icon(Icons.remove_red_eye_outlined),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //     builder: (context) => Accueil(),
                //   ),
                // );
                var connectivityResult =
                    await (Connectivity().checkConnectivity());
                if (connectivityResult == ConnectivityResult.mobile ||
                    connectivityResult == ConnectivityResult.wifi) {
                  //
                  if (emailControlleur.text.isEmpty ||
                      mdpControlleur.text.isEmpty) {
                    //
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Erreur"),
                          content:
                              const Text("Veuillez saisire vos identifiants"),
                          actions: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(Icons.check),
                            )
                          ],
                        );
                      },
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Material(
                          color: Colors.transparent,
                          child: LoaderU(
                            emailControlleur.text,
                            mdpControlleur.text,
                            (() {
                              setState(() {
                                emailControlleur.clear();
                                mdpControlleur..clear();
                              });
                            }),
                          ),
                        );
                      },
                    );
                  }
                } else {
                  //
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Erreur"),
                        content:
                            const Text("Vous n'etes pas connect?? ?? internet!"),
                        actions: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.check),
                          )
                        ],
                      );
                    },
                  );
                }
              },
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                  //backgroundColor:
                  //  MaterialStateProperty.all(Colors.blue.shade900),
                  ),
              child: SizedBox(
                height: 45,
                //width: 220,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    //Icon(Icons.add_box_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Connexion",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

//
class LoaderU extends StatefulWidget {
  String matricule;
  String mdp;

  VoidCallback? cl;
  LoaderU(this.matricule, this.mdp, this.cl);
  //
  @override
  State<StatefulWidget> createState() {
    return _LoaderU();
  }
}

class _LoaderU extends State<LoaderU> {
  //
  Widget resultat(Map<String, dynamic> rep) {
    Timer(const Duration(seconds: 3), () {
      if (rep["token"] == null) {
        Navigator.of(context).pop();
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Accueil(),
          ),
        );
      }
    });
    return Center(
        child: Container(
      height: 75,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      alignment: Alignment.center,
      child: Text(
        rep["token"] == null
            ? "Votre mot de passe ou matricule n'est pas correcte"
            : "Authentification reussit!",
        textAlign: TextAlign.center,
      ),
    ));
  }

  //
  Future<Widget> send() async {
    //print("mon usr:   ${widget.utilisateur}");
    //nephtalinlandu@gmail.com
    //azerty
    //widget.matricule
    //widget.mdp
    Map<String, dynamic> c = await ConnexionUser.login(
        {"username": "nephtalinlandu@gmail.com", "password": "azerty"});
    widget.cl!();
    return resultat(c);
  }

  //
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 500,
        width: 300,
        alignment: Alignment.center,
        child: FutureBuilder(
          future: send(),
          builder: (context, s) {
            if (s.hasData) {
              return s.data as Widget;
            } else if (s.hasError) {
              return Center(
                child: Container(
                  height: 75,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Un probl?? est survenu: ${s.error}",
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }
            return Center(
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}
