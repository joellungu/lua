import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Image.asset(
            "assets/LOGO PNG.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
