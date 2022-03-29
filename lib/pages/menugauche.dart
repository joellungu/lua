import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:lua/pages/bibliotheque.dart';
import 'package:lua/pages/exes/examens.dart';
import 'package:lua/pages/exes/interro.dart';
import 'package:lua/pages/exes/tp.dart';
import 'package:lua/pages/planning.dart';
import 'package:lua/pages/cours.dart';
import 'package:lua/pages/etudiants.dart';
import 'package:lua/pages/evenement.dart';
import 'package:lua/pages/profile/infospersonnel.dart';
import 'package:lua/pages/staff.dart';
import 'package:lua/pages/univs/nous.dart';
import 'package:lua/utile/check.dart';

import 'departement.dart';
import 'planningmois.dart';
import 'professeurs.dart';

class MenuGauche extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuGauche();
  }
}

class _MenuGauche extends State<MenuGauche> with TickerProviderStateMixin {
  //
  late TabController controller;

  List angles = ["Université", "Admin"];
  //

  @override
  void initState() {
    //
    controller = TabController(length: angles.length, vsync: this);
    //
    super.initState();
    //
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: angles.length,
      child: Scaffold(
        backgroundColor: Colors.teal.shade400,
        appBar: AppBar(
          title: const Text("L.A.U"),
          automaticallyImplyLeading: false,
          centerTitle: false,
          bottom: TabBar(
            isScrollable: false,
            controller: controller,
            indicatorWeight: 1,
            //indicator: BoxDecoration(),
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white10,
            ),
            tabs: List.generate(angles.length, (index) {
              return Tab(
                text: angles[index],
              );
            }),
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            ListView(
              padding: EdgeInsets.all(10),
              children: [
                ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Check check = Check();
                    //
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => InfoPersonnel(),
                      ),
                    );
                  },
                  leading: const Icon(
                    CupertinoIcons.person,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Information personnels",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Professeus(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.people_alt,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Professeurs",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                /*
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Staff(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.people_outline_sharp,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Statff",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                */
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Etudiants(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.people_alt,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Etudiants",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  //
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Departement(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.business,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Facultés",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  //
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Cours(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.school,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Cours",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  //()
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Bibliotheque(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.library_add,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Bibliotheque",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                /*
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Evenement(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.event_available,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Evenements",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                */
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Text(
                      "EXTRA",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    //
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Calendrier(),
                      ),
                    );
                  },
                  leading: const Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Planning de la semaine",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    //
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TravauxPratique(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.edit_note_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    "T.P",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    //
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Interrogation(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Interrogation",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    //
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Examens(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Examens",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    //
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Nous(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.contact_support,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Nous contacter",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                /*
                ListTile(
                  leading: Icon(
                    Icons.map_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Centre",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              */
              ],
            ),
            ListView(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.payment,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Paiement",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () async {
                    FlutterLocalNotificationsPlugin flip =
                        FlutterLocalNotificationsPlugin();
                    // app_icon needs to be a added as a drawable
                    // resource to the Android head project.
                    var android = AndroidInitializationSettings('logo');
                    var IOS = IOSInitializationSettings();

                    // initialise settings for both Android and iOS device.
                    var settings =
                        InitializationSettings(android: android, iOS: IOS);
                    flip.initialize(settings, onSelectNotification: (n) {
                      print("Je suis cliqué!");
                      //
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (contextGeneral) => Calendrier(),
                        ),
                      );
                    });
                    _showNotificationWithDefaultSound(flip);
                    //
                  },
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Notification",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Parametres",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _showNotificationWithDefaultSound(flip) async {
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
}
