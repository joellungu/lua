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
      children: [
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Colors.grey,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Total Revenue"),
                Text("\$ 79,452"),
              ],
            ),
          ),
        )
      ],
    );
  }
}
