import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:lua/splash.dart';
import 'package:sqflite/sqflite.dart';
import 'package:workmanager/workmanager.dart';

import 'models/token_model.dart';
import 'page_intro.dart';
import 'pages/accueil.dart';
import 'pages/planning.dart';
import 'utile/theme.dart';

Map<String, dynamic> tok = {};
BuildContext? contextGeneral;

void main() {
  // needed if you intend to initialize in the `main` function
  WidgetsFlutterBinding.ensureInitialized();
  Workmanager().initialize(

      // The top level function, aka callbackDispatcher
      callbackDispatcher,

      // If enabled it will post a notification whenever
      // the task is running. Handy for debugging tasks
      isInDebugMode: true);
  // Periodic task registration
  Workmanager().registerPeriodicTask(
    "2",

    //This is the value that will be
    // returned in the callbackDispatcher
    "simplePeriodicTask",

    // When no frequency is provided
    // the default 15 minutes is set.
    // Minimum frequency is 15 min.
    // Android will automatically change
    // your frequency to 15 min
    // if you have configured a lower frequency.
    frequency: Duration(minutes: 15),
  );
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

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    // initialise the plugin of flutterlocalnotifications.
    FlutterLocalNotificationsPlugin flip = FlutterLocalNotificationsPlugin();

    // app_icon needs to be a added as a drawable
    // resource to the Android head project.
    var android = AndroidInitializationSettings('logo');
    var IOS = IOSInitializationSettings();

    // initialise settings for both Android and iOS device.
    var settings = InitializationSettings(android: android, iOS: IOS);
    flip.initialize(settings, onSelectNotification: (n) {
      print("Je suis cliqué!");
      //
      Navigator.of(contextGeneral!).push(
        MaterialPageRoute(
          builder: (contextGeneral) => Calendrier(),
        ),
      );
    });
    _showNotificationWithDefaultSound(flip);
    return Future.value(true);
  });
}

Future _showNotificationWithDefaultSound(flip) async {
  // Show a notification after every 15 minute with the first
  // appearance happening a minute after invoking the method
  var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      'lau', 'Leadership Academia University',
      channelDescription:
          'Leadership Academia University vous dit salut et bienvenu',
      importance: Importance.high,
      priority: Priority.high);
  var iOSPlatformChannelSpecifics = IOSNotificationDetails();

  // initialise channel platform for both Android and iOS device.
  var platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
    iOS: iOSPlatformChannelSpecifics,
  );
  await flip.show(
      0,
      'Leadership Academia University',
      'Leadership Academia University vous dit salut!',
      platformChannelSpecifics,
      payload: 'Default_Sound');
}

start() async {
  bool deja = false;
  //
  Token token = Token();
  Database? db = await token.openDB();
  //
  List<Map<String, dynamic>> listPlainte =
      await db.rawQuery('SELECT * FROM Token');

  if (listPlainte.isNotEmpty) {
    tok = listPlainte[0];
    runApp(
      Lua(
        vue: Accueil(),
      ),
    );
  } else {
    runApp(Lua(
      vue: PageIntro(),
    ));
  }
}

class Lua extends StatelessWidget {
  Widget? vue;

  Lua({this.vue});

  @override
  Widget build(BuildContext context) {
    contextGeneral = context;
    //FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return MaterialApp(
      title: 'LAU',
      debugShowCheckedModeBanner: false,
      theme: ThemeClass.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: ThemeClass.darkTheme,
      home: vue,
    );
  }
}
//
