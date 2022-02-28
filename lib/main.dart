import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lua/splash.dart';

import 'pages/accueil.dart';
import 'utile/theme.dart';

void main() {
  runApp(Lua(
    vue: Splash(),
  ));
  Timer(
    const Duration(seconds: 5),
    () {
      start();
    },
  );
}

start() async {
  bool deja = false;

  if (deja) {
    runApp(Lua());
  } else {
    runApp(
      Lua(
        vue: Accueil(),
      ),
    );
  }
}

class Lua extends StatelessWidget {
  Widget? vue;

  Lua({this.vue});

  @override
  Widget build(BuildContext context) {
    //FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return MaterialApp(
      title: 'LUA',
      theme: ThemeClass.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: ThemeClass.darkTheme,
      home: vue,
    );
  }
}
