import 'package:flutter/material.dart';

class Statistique extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Statistique();
  }
}

class _Statistique extends State<Statistique> {
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
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Total Revenue"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "\$ 79,452    ",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Income",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                      ),
                    ),
                    Container(
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_drop_up,
                            color: Colors.green,
                          ),
                          Text("4%")
                        ],
                      ),
                    )
                  ],
                ),
                Divider(),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$43.320",
                            style: TextStyle(
                              color: Colors.grey.shade800,
                            ),
                          ),
                          Container(
                            //width: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  "Bank of Africa",
                                  style: TextStyle(
                                    color: Colors.black87,
                                  ),
                                )
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
                            flex: 8,
                            child: Container(
                              height: 1,
                              color: Colors.teal.shade700,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 1,
                              color: Colors.grey.shade300,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$36.132",
                            style: TextStyle(
                              color: Colors.grey.shade800,
                            ),
                          ),
                          Container(
                            //width: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  "Wells Fargo",
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
                            flex: 8,
                            child: Container(
                              height: 1,
                              color: Colors.blue.shade300,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: 1,
                              color: Colors.grey.shade300,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  //height: 50,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Statistique(
          color: Colors.yellow.shade700,
          total: "2.051",
          nom: "Total Student",
          icon: Icons.people,
        ),
        SizedBox(
          height: 10,
        ),
        Statistique(
          color: Colors.grey.shade700,
          total: "14",
          nom: "Departement",
          icon: Icons.network_check,
        ),
        SizedBox(
          height: 10,
        ),
        Statistique(
          color: Colors.black54,
          total: "27",
          nom: "Total Professeurs",
          icon: Icons.person,
        ),
        SizedBox(
          height: 10,
        ),
        Statistique(
          color: Colors.blue.shade500,
          total: "31",
          nom: "Total Cours",
          icon: Icons.bookmark,
        ),
        SizedBox(
          height: 10,
        ),
        Statistique(
          color: Colors.redAccent.shade700,
          total: "\$7,254",
          nom: "Bourse",
          icon: Icons.payment,
        ),
        SizedBox(
          height: 10,
        ),
        Statistique(
          color: Colors.green.shade700,
          total: "\$2.051",
          nom: "Total Réçu",
          icon: Icons.people,
        ),
        SizedBox(
          height: 10,
        ),
        Statistique(
          color: Colors.teal.shade700,
          total: "101",
          nom: "Total Salles",
          icon: Icons.people,
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }

  Widget Statistique(
      {String? nom, String? total, IconData? icon, Color? color}) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      margin: const EdgeInsets.all(0),
      child: Container(
        height: 70,
        padding: EdgeInsets.only(
          left: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: 50,
            width: 50,
            color: color,
            alignment: Alignment.center,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            RichText(
              text: TextSpan(
                text: nom!,
                children: [
                  TextSpan(
                    text: "\n$total",
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  )
                ],
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                ),
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
