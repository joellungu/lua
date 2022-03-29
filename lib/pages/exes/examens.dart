import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Examens extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Examens();
  }
}

class _Examens extends State<Examens> {
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
            Text("Examens")
          ],
        ),
      ),
      body: ListView(),
    );
  }
}
