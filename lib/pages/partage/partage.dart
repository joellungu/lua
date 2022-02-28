import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class Partage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Partage();
  }
}

class _Partage extends State<Partage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: List.generate(5, (index) {
        return ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return Chat(
                      titre: index % 2 == 1 ? "G1 force" : "Albert Mboyo");
                },
              ),
            );
          },
          leading: Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            child: index % 2 == 1
                ? Icon(
                    Icons.people,
                    size: 40,
                    color: Colors.grey,
                  )
                : Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.grey,
                  ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          title: Text(
            index % 2 == 1 ? "G1 force" : "Albert Mboyo",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            index % 2 == 1 ? "21 personnes" : "+2435525663",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          trailing: Text(
            "12/22/2022",
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        );
      }),
    );
  }
}
