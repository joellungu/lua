import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:lua/utile/widget.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Profile();
  }
}

class _Profile extends State<Profile> with TickerProviderStateMixin {
  late TabController controller;

  List angles = ["Info personnel", "Cotes", "Frais", "Promotion"];

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
        appBar: AppBar(
          title: Widgets.textAppBar("Profil L.U.A"),
          centerTitle: false,
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Resumé du cours",
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                  value: 2,
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Faire un commentaire",
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                  value: 2,
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Exercices",
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Police",
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                  value: 1,
                ),
              ],
            ),
          ],
          bottom: TabBar(
            isScrollable: false,
            controller: controller,
            indicatorColor: Colors.white,
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
          children: List.generate(
            angles.length,
            (index) {
              return ListView(
                padding: EdgeInsets.all(10),
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
