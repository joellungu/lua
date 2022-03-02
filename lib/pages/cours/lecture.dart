import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:lua/utile/widget.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Lecture extends StatefulWidget {
  bool? fini;
  String? titre;
  Lecture(
    this.fini,
    this.titre,
  );
  @override
  State<StatefulWidget> createState() {
    return _Lecture();
  }
}

class _Lecture extends State<Lecture> {
  //
  PdfViewerController? controllerPdf;

  GlobalKey cles = GlobalKey<ScaffoldState>();
  TextEditingController motcles = TextEditingController();

  @override
  void initState() {
    //
    super.initState();
    //
    controllerPdf = PdfViewerController();
    //
  }

  @override
  Widget build(BuildContext context) {
    return widget.fini!
        ? Scaffold(
            key: cles,
            appBar: AppBar(
              title: Widgets.textAppBar(widget.titre!),
              centerTitle: false,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            //title: Text("Recherche"),
                            content: Container(
                              height: 110,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TextField(
                                    controller: motcles,
                                    decoration: InputDecoration(
                                      label: const Text("Tapez un mot"),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () async {
                                      //PdfTextSearchResult r = await controllerPdf!.searchText(motcles.text);
                                      //r.
                                    },
                                    child: const Text("Recherche"),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  icon: Icon(
                    Icons.search,
                  ),
                ),
                PopupMenuButton(
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Plan du cours",
                            //style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      ),
                      value: 0,
                    ),
                    PopupMenuItem(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Resumé du cours",
                            //style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      ),
                      value: 1,
                    ),
                    PopupMenuItem(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Faire un commentaire",
                            //style: Theme.of(context).textTheme.bodyText1,
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
                            //style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      ),
                      value: 3,
                    ),
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Tutulaire du cours",
                            //style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      ),
                      value: 4,
                    ),
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Police",
                            //style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      ),
                      value: 5,
                    ),
                  ],
                ),
              ],
            ),
            endDrawer: Drawer(
              elevation: 0,
              child: ListView(),
            ),
            body: Container(
              child: SfPdfViewer.asset(
                'assets/en_GC.pdf',
                controller: controllerPdf,
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: Widgets.textAppBar(widget.titre!),
            ),
            body: Center(
              child: Container(
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      """Ce cours est desormé fini vous pouvez commencer votre evaluation des maintenant...""",
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Commencer",
                            //style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
  }
}


/*
TabBarView(
                controller: controller,
                children: List.generate(
                  10,
                  (index) {
                    return ListView(
                      padding: EdgeInsets.all(10),
                      children: [
                        Text(
                          """Aliquip esse sint sit ipsum labore laborum et ea aliqua ex ex. Aute irure eiusmod laboris pariatur commodo tempor reprehenderit laborum non occaecat. Excepteur non aliquip incididunt anim id. Dolor mollit quis mollit ad ex aliqua aliquip amet duis est fugiat officia exercitation tempor. Culpa Lorem esse ut est do ut. Velit sint proident irure enim magna. Duis elit deserunt est laborum Lorem in ex.""",
                          //style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ExpandablePanel(
                          header: Container(
                            padding: EdgeInsets.only(
                              left: 0,
                              right: 20,
                            ),
                            child: Text(
                              "Introduction",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          collapsed: Container(),
                          expanded: Container(
                            padding: const EdgeInsets.only(
                              bottom: 0,
                              left: 0,
                              right: 0,
                            ),
                            //height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  """Adipisicing ea ad irure esse pariatur cupidatat nostrud exercitation dolor. Ad sit incididunt enim consectetur aute amet ipsum eu esse. Excepteur quis ad labore officia minim quis fugiat veniam aute magna duis. Ea in veniam dolore in non adipisicing mollit officia duis laboris adipisicing. Laboris sit sit aliqua aliquip laboris elit ea veniam esse cupidatat ad veniam. Consectetur eu esse nulla eu pariatur ipsum est incididunt labore. Cillum reprehenderit excepteur consectetur et amet est quis quis ut. Officia velit ut duis Lorem aute cupidatat aliquip culpa laboris. Ut quis dolore enim eu incididunt do elit incididunt. Do ut sunt ad mollit exercitation magna nostrud ullamco sint nostrud labore.

Reprehenderit commodo esse cupidatat esse et velit aliqua. Est officia consectetur aute sint. Anim duis dolor adipisicing excepteur exercitation nostrud exercitation. Cillum cillum irure nisi laboris irure nisi Lorem velit aliquip aute nulla pariatur. Veniam velit officia labore proident nulla sunt exercitation et labore reprehenderit do qui. Cupidatat eu anim cupidatat eu excepteur ipsum.

Sit duis sunt laborum ut veniam ullamco. Irure proident proident reprehenderit enim duis ex. Proident aliquip sit commodo enim ipsum est. Commodo dolore labore id Lorem occaecat consequat ex cillum quis eu in reprehenderit incididunt Lorem. Consectetur eiusmod cupidatat consectetur aliqua incididunt consequat eiusmod.

Ex nisi voluptate enim mollit ea aliquip non. Duis anim reprehenderit minim ut excepteur voluptate ut cillum nulla pariatur consequat Lorem. Aliquip esse elit nostrud velit reprehenderit. Ipsum cupidatat proident quis dolore veniam occaecat sit esse deserunt et. Sint fugiat aliquip commodo quis minim irure. Qui occaecat anim tempor esse anim laborum voluptate veniam dolore duis.

Deserunt do anim Lorem magna sit occaecat aliquip amet occaecat magna. Duis irure consectetur ipsum irure. Esse nostrud id fugiat veniam ea laboris consequat quis non deserunt. Nulla aute ipsum aliqua aliqua duis ad. Incididunt dolor veniam sunt sunt sit. Est nostrud deserunt cupidatat duis elit consectetur nulla ut excepteur enim non.

Laboris in qui aute nostrud laborum consectetur nisi minim nulla excepteur irure. Ad proident sunt in proident commodo deserunt duis aliqua esse dolore labore nulla minim eu. Adipisicing mollit velit nulla sunt duis aliqua incididunt ut tempor incididunt eu. Non ad labore ad irure incididunt. Magna ut voluptate adipisicing in anim qui duis reprehenderit nisi Lorem quis ut. Pariatur magna voluptate et sint fugiat in do adipisicing consectetur ea ex deserunt laborum. Lorem sunt anim officia dolore deserunt magna ea id occaecat laborum fugiat ea anim.

Officia laboris culpa sit et deserunt cupidatat. Ea tempor occaecat velit culpa dolor dolore in esse id aute id ullamco commodo minim. Pariatur id deserunt voluptate aliquip velit commodo ex exercitation. Lorem amet cupidatat dolore voluptate proident ipsum quis culpa pariatur laborum nisi sint. Elit sit sint occaecat irure voluptate aliqua laboris ipsum reprehenderit veniam qui sint Lorem. Ut esse reprehenderit officia dolore occaecat cillum et ad do.""",
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ExpandablePanel(
                          header: Container(
                            padding: EdgeInsets.only(
                              left: 0,
                              right: 20,
                            ),
                            child: Text(
                              "Notion d'ensemble",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          collapsed: Container(),
                          expanded: Container(
                            padding: const EdgeInsets.only(
                              bottom: 0,
                              left: 0,
                              right: 0,
                            ),
                            //height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  """Adipisicing ea ad irure esse pariatur cupidatat nostrud exercitation dolor. Ad sit incididunt enim consectetur aute amet ipsum eu esse. Excepteur quis ad labore officia minim quis fugiat veniam aute magna duis. Ea in veniam dolore in non adipisicing mollit officia duis laboris adipisicing. Laboris sit sit aliqua aliquip laboris elit ea veniam esse cupidatat ad veniam. Consectetur eu esse nulla eu pariatur ipsum est incididunt labore. Cillum reprehenderit excepteur consectetur et amet est quis quis ut. Officia velit ut duis Lorem aute cupidatat aliquip culpa laboris. Ut quis dolore enim eu incididunt do elit incididunt. Do ut sunt ad mollit exercitation magna nostrud ullamco sint nostrud labore.

Reprehenderit commodo esse cupidatat esse et velit aliqua. Est officia consectetur aute sint. Anim duis dolor adipisicing excepteur exercitation nostrud exercitation. Cillum cillum irure nisi laboris irure nisi Lorem velit aliquip aute nulla pariatur. Veniam velit officia labore proident nulla sunt exercitation et labore reprehenderit do qui. Cupidatat eu anim cupidatat eu excepteur ipsum.

Sit duis sunt laborum ut veniam ullamco. Irure proident proident reprehenderit enim duis ex. Proident aliquip sit commodo enim ipsum est. Commodo dolore labore id Lorem occaecat consequat ex cillum quis eu in reprehenderit incididunt Lorem. Consectetur eiusmod cupidatat consectetur aliqua incididunt consequat eiusmod.

Ex nisi voluptate enim mollit ea aliquip non. Duis anim reprehenderit minim ut excepteur voluptate ut cillum nulla pariatur consequat Lorem. Aliquip esse elit nostrud velit reprehenderit. Ipsum cupidatat proident quis dolore veniam occaecat sit esse deserunt et. Sint fugiat aliquip commodo quis minim irure. Qui occaecat anim tempor esse anim laborum voluptate veniam dolore duis.

Deserunt do anim Lorem magna sit occaecat aliquip amet occaecat magna. Duis irure consectetur ipsum irure. Esse nostrud id fugiat veniam ea laboris consequat quis non deserunt. Nulla aute ipsum aliqua aliqua duis ad. Incididunt dolor veniam sunt sunt sit. Est nostrud deserunt cupidatat duis elit consectetur nulla ut excepteur enim non.

Laboris in qui aute nostrud laborum consectetur nisi minim nulla excepteur irure. Ad proident sunt in proident commodo deserunt duis aliqua esse dolore labore nulla minim eu. Adipisicing mollit velit nulla sunt duis aliqua incididunt ut tempor incididunt eu. Non ad labore ad irure incididunt. Magna ut voluptate adipisicing in anim qui duis reprehenderit nisi Lorem quis ut. Pariatur magna voluptate et sint fugiat in do adipisicing consectetur ea ex deserunt laborum. Lorem sunt anim officia dolore deserunt magna ea id occaecat laborum fugiat ea anim.

Officia laboris culpa sit et deserunt cupidatat. Ea tempor occaecat velit culpa dolor dolore in esse id aute id ullamco commodo minim. Pariatur id deserunt voluptate aliquip velit commodo ex exercitation. Lorem amet cupidatat dolore voluptate proident ipsum quis culpa pariatur laborum nisi sint. Elit sit sint occaecat irure voluptate aliqua laboris ipsum reprehenderit veniam qui sint Lorem. Ut esse reprehenderit officia dolore occaecat cillum et ad do.""",
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ExpandablePanel(
                          header: Container(
                            padding: EdgeInsets.only(
                              left: 0,
                              right: 20,
                            ),
                            child: Text(
                              "Relation et propriétés",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          collapsed: Container(),
                          expanded: Container(
                            padding: const EdgeInsets.only(
                              bottom: 0,
                              left: 0,
                              right: 0,
                            ),
                            //height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  """Adipisicing ea ad irure esse pariatur cupidatat nostrud exercitation dolor. Ad sit incididunt enim consectetur aute amet ipsum eu esse. Excepteur quis ad labore officia minim quis fugiat veniam aute magna duis. Ea in veniam dolore in non adipisicing mollit officia duis laboris adipisicing. Laboris sit sit aliqua aliquip laboris elit ea veniam esse cupidatat ad veniam. Consectetur eu esse nulla eu pariatur ipsum est incididunt labore. Cillum reprehenderit excepteur consectetur et amet est quis quis ut. Officia velit ut duis Lorem aute cupidatat aliquip culpa laboris. Ut quis dolore enim eu incididunt do elit incididunt. Do ut sunt ad mollit exercitation magna nostrud ullamco sint nostrud labore.

Reprehenderit commodo esse cupidatat esse et velit aliqua. Est officia consectetur aute sint. Anim duis dolor adipisicing excepteur exercitation nostrud exercitation. Cillum cillum irure nisi laboris irure nisi Lorem velit aliquip aute nulla pariatur. Veniam velit officia labore proident nulla sunt exercitation et labore reprehenderit do qui. Cupidatat eu anim cupidatat eu excepteur ipsum.

Sit duis sunt laborum ut veniam ullamco. Irure proident proident reprehenderit enim duis ex. Proident aliquip sit commodo enim ipsum est. Commodo dolore labore id Lorem occaecat consequat ex cillum quis eu in reprehenderit incididunt Lorem. Consectetur eiusmod cupidatat consectetur aliqua incididunt consequat eiusmod.

Ex nisi voluptate enim mollit ea aliquip non. Duis anim reprehenderit minim ut excepteur voluptate ut cillum nulla pariatur consequat Lorem. Aliquip esse elit nostrud velit reprehenderit. Ipsum cupidatat proident quis dolore veniam occaecat sit esse deserunt et. Sint fugiat aliquip commodo quis minim irure. Qui occaecat anim tempor esse anim laborum voluptate veniam dolore duis.

Deserunt do anim Lorem magna sit occaecat aliquip amet occaecat magna. Duis irure consectetur ipsum irure. Esse nostrud id fugiat veniam ea laboris consequat quis non deserunt. Nulla aute ipsum aliqua aliqua duis ad. Incididunt dolor veniam sunt sunt sit. Est nostrud deserunt cupidatat duis elit consectetur nulla ut excepteur enim non.

Laboris in qui aute nostrud laborum consectetur nisi minim nulla excepteur irure. Ad proident sunt in proident commodo deserunt duis aliqua esse dolore labore nulla minim eu. Adipisicing mollit velit nulla sunt duis aliqua incididunt ut tempor incididunt eu. Non ad labore ad irure incididunt. Magna ut voluptate adipisicing in anim qui duis reprehenderit nisi Lorem quis ut. Pariatur magna voluptate et sint fugiat in do adipisicing consectetur ea ex deserunt laborum. Lorem sunt anim officia dolore deserunt magna ea id occaecat laborum fugiat ea anim.

Officia laboris culpa sit et deserunt cupidatat. Ea tempor occaecat velit culpa dolor dolore in esse id aute id ullamco commodo minim. Pariatur id deserunt voluptate aliquip velit commodo ex exercitation. Lorem amet cupidatat dolore voluptate proident ipsum quis culpa pariatur laborum nisi sint. Elit sit sint occaecat irure voluptate aliqua laboris ipsum reprehenderit veniam qui sint Lorem. Ut esse reprehenderit officia dolore occaecat cillum et ad do.""",
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ExpandablePanel(
                          header: Container(
                            padding: EdgeInsets.only(
                              left: 0,
                              right: 20,
                            ),
                            child: Text(
                              "Resumé du chapitre",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          collapsed: Container(),
                          expanded: Container(
                            padding: const EdgeInsets.only(
                              bottom: 0,
                              left: 0,
                              right: 0,
                            ),
                            //height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  """Adipisicing ea ad irure esse pariatur cupidatat nostrud exercitation dolor. Ad sit incididunt enim consectetur aute amet ipsum eu esse. Excepteur quis ad labore officia minim quis fugiat veniam aute magna duis. Ea in veniam dolore in non adipisicing mollit officia duis laboris adipisicing. Laboris sit sit aliqua aliquip laboris elit ea veniam esse cupidatat ad veniam. Consectetur eu esse nulla eu pariatur ipsum est incididunt labore. Cillum reprehenderit excepteur consectetur et amet est quis quis ut. Officia velit ut duis Lorem aute cupidatat aliquip culpa laboris. Ut quis dolore enim eu incididunt do elit incididunt. Do ut sunt ad mollit exercitation magna nostrud ullamco sint nostrud labore.

Reprehenderit commodo esse cupidatat esse et velit aliqua. Est officia consectetur aute sint. Anim duis dolor adipisicing excepteur exercitation nostrud exercitation. Cillum cillum irure nisi laboris irure nisi Lorem velit aliquip aute nulla pariatur. Veniam velit officia labore proident nulla sunt exercitation et labore reprehenderit do qui. Cupidatat eu anim cupidatat eu excepteur ipsum.

Sit duis sunt laborum ut veniam ullamco. Irure proident proident reprehenderit enim duis ex. Proident aliquip sit commodo enim ipsum est. Commodo dolore labore id Lorem occaecat consequat ex cillum quis eu in reprehenderit incididunt Lorem. Consectetur eiusmod cupidatat consectetur aliqua incididunt consequat eiusmod.

Ex nisi voluptate enim mollit ea aliquip non. Duis anim reprehenderit minim ut excepteur voluptate ut cillum nulla pariatur consequat Lorem. Aliquip esse elit nostrud velit reprehenderit. Ipsum cupidatat proident quis dolore veniam occaecat sit esse deserunt et. Sint fugiat aliquip commodo quis minim irure. Qui occaecat anim tempor esse anim laborum voluptate veniam dolore duis.

Deserunt do anim Lorem magna sit occaecat aliquip amet occaecat magna. Duis irure consectetur ipsum irure. Esse nostrud id fugiat veniam ea laboris consequat quis non deserunt. Nulla aute ipsum aliqua aliqua duis ad. Incididunt dolor veniam sunt sunt sit. Est nostrud deserunt cupidatat duis elit consectetur nulla ut excepteur enim non.

Laboris in qui aute nostrud laborum consectetur nisi minim nulla excepteur irure. Ad proident sunt in proident commodo deserunt duis aliqua esse dolore labore nulla minim eu. Adipisicing mollit velit nulla sunt duis aliqua incididunt ut tempor incididunt eu. Non ad labore ad irure incididunt. Magna ut voluptate adipisicing in anim qui duis reprehenderit nisi Lorem quis ut. Pariatur magna voluptate et sint fugiat in do adipisicing consectetur ea ex deserunt laborum. Lorem sunt anim officia dolore deserunt magna ea id occaecat laborum fugiat ea anim.

Officia laboris culpa sit et deserunt cupidatat. Ea tempor occaecat velit culpa dolor dolore in esse id aute id ullamco commodo minim. Pariatur id deserunt voluptate aliquip velit commodo ex exercitation. Lorem amet cupidatat dolore voluptate proident ipsum quis culpa pariatur laborum nisi sint. Elit sit sint occaecat irure voluptate aliqua laboris ipsum reprehenderit veniam qui sint Lorem. Ut esse reprehenderit officia dolore occaecat cillum et ad do.""",
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    );
                  },
                ),
              )
*/