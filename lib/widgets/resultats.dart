import 'package:flutter/material.dart';

class Resultats extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Resultats();
  }
}

class _Resultats extends State<Resultats> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 510,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "RESULTAT 2019",
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      //width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.copy,
                            color: Colors.blue.shade700,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      cotes("87", "Art & Design", Colors.green, 8, 2),
                      cotes("80", "Fashion", Colors.red, 8, 3),
                      cotes("63", "Sports Science", Colors.teal, 6, 4),
                      cotes("91", "Math", Colors.yellow, 9, 1),
                      cotes("35", "Informatique", Colors.blue, 3, 7),
                      cotes("63", "Sports Science", Colors.brown, 6, 4),
                      cotes("91", "Chimie", Colors.blueGrey, 9, 1),
                      cotes("35", "Programmation", Colors.blue, 3, 7),
                      Card(
                        elevation: 0,
                        margin: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        child: Container(
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Total reussit"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "1,052",
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 1,
                                color: Colors.grey,
                              ),
                              Expanded(
                                flex: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Total echoué"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "152",
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  //height: 50,
                )
              ],
            ),
          ),
        ),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 510,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "RESULTAT 2018",
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      //width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.copy,
                            color: Colors.blue.shade700,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      cotes("87", "Art & Design", Colors.green, 8, 2),
                      cotes("80", "Fashion", Colors.red, 8, 3),
                      cotes("63", "Sports Science", Colors.teal, 6, 4),
                      cotes("91", "Math", Colors.yellow, 9, 1),
                      cotes("35", "Informatique", Colors.blue, 3, 7),
                      cotes("63", "Sports Science", Colors.brown, 6, 4),
                      cotes("91", "Chimie", Colors.blueGrey, 9, 1),
                      cotes("35", "Programmation", Colors.blue, 3, 7),
                      Card(
                        elevation: 0,
                        margin: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        child: Container(
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Total reussit"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "1,052",
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 1,
                                color: Colors.grey,
                              ),
                              Expanded(
                                flex: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Total echoué"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "152",
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  //height: 50,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget cotes(String p, String nom, Color couleur, int t1, int t2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$p %",
              style: TextStyle(
                color: Colors.grey.shade800,
              ),
            ),
            Container(
              //width: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    nom,
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              flex: t1,
              child: Container(
                height: 1,
                color: couleur,
              ),
            ),
            Expanded(
              flex: t2,
              child: Container(
                height: 1,
                color: Colors.grey.shade300,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
