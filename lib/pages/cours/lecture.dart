import 'package:flutter/material.dart';
import 'package:lua/utile/widget.dart';

class Lecture extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Lecture();
  }
}

class _Lecture extends State<Lecture> with TickerProviderStateMixin {
  late TabController controller;
  String titreChapitre = "";

  @override
  void initState() {
    //
    controller = TabController(length: 10, vsync: this);
    //
    super.initState();
    //
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Widgets.textAppBar("Cp.1 : $titreChapitre"),
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
                  onTap: () async {
                    //
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Regle. Interieur",
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
                        "Parametre",
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
            isScrollable: true,
            controller: controller,
            indicatorColor: Colors.white,
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white10,
            ),
            tabs: List.generate(10, (index) {
              return Tab(
                text: "Chap. $index",
              );
            }),
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: List.generate(
            10,
            (index) {
              return ListView(
                padding: EdgeInsets.all(10),
                children: [
                  Text(
                    """Aliquip esse sint sit ipsum labore laborum et ea aliqua ex ex. Aute irure eiusmod laboris pariatur commodo tempor reprehenderit laborum non occaecat. Excepteur non aliquip incididunt anim id. Dolor mollit quis mollit ad ex aliqua aliquip amet duis est fugiat officia exercitation tempor. Culpa Lorem esse ut est do ut. Velit sint proident irure enim magna. Duis elit deserunt est laborum Lorem in ex.""",
                    style: Theme.of(context).textTheme.bodyText1,
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
