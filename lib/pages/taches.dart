import 'package:flutter/material.dart';

class Taches extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Taches();
  }
}

class _Taches extends State<Taches> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 20),
      children: [
        Afaire("Je dois étudier ce soir!"),
        Afaire("Je dois étudier ce soir!"),
        Afaire("Je dois étudier ce soir!"),
      ],
    );
  }
}

class Afaire extends StatefulWidget {
  String titre;
  Afaire(this.titre);
  @override
  State<StatefulWidget> createState() {
    return _Afaire();
  }
}

class _Afaire extends State<Afaire> {
  bool v = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      onChanged: (c) {
        setState(() {
          v = c!;
          print("val: $c");
        });
      },
      title: Text(
        widget.titre,
        style: TextStyle(
          decoration: v ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      value: v,
    );
  }
}
