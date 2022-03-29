import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Interrogation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Interrogation();
  }
}

class _Interrogation extends State<Interrogation> {
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
            Text("T.P")
          ],
        ),
      ),
      body: ListView(),
    );
  }
}
