import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lecture.dart';

class Cours extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Cours();
  }
}

class _Cours extends State<Cours> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: List.generate(20, (index) {
        return ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return Lecture();
                },
              ),
            );
          },
          leading: Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            child: Icon(
              Icons.my_library_books,
              size: 40,
              color: Colors.grey,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          title: Text(
            "Algebre Lineaire",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            "21 chapitres",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          trailing: Text("En cours..."),
        );
      }),
    );
  }
}
