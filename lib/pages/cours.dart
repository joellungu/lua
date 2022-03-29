import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

class Cours extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Cours();
  }
}

class _Cours extends State<Cours> {
  HDTRefreshController _hdtRefreshController = HDTRefreshController();

  static const int sortName = 0;
  static const int sortStatus = 1;
  bool isAscending = true;
  int sortType = sortName;

  @override
  void initState() {
    user.initData(40);
    showTruc(); //
    //
    super.initState();
  }

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
            Text("Cours")
          ],
        ),
        actions: [
          PopupMenuButton(
            onSelected: (e) {
              setState(() {
                //
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Religieux",
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
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Gestion",
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
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Littérature",
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
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Science humaine",
                      //style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                value: 3,
              ),
              PopupMenuItem(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Management",
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
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Science sociale",
                      //style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                value: 3,
              ),
              PopupMenuItem(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.lime,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Math",
                      //style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                value: 3,
              ),
            ],
          ),
        ],
      ),
      body: _getBodyWidget(),
    );
  }

  Widget _getBodyWidget() {
    return Container(
      child: HorizontalDataTable(
        leftHandSideColumnWidth: 50,
        rightHandSideColumnWidth: 1400,
        isFixedHeader: true,
        headerWidgets: _getTitleWidget(),
        leftSideItemBuilder: _generateFirstColumnRow,
        rightSideItemBuilder: _generateRightHandSideColumnRow,
        itemCount: user.userInfo.length,
        rowSeparatorWidget: const Divider(
          color: Colors.black54,
          height: 1.0,
          thickness: 0.0,
        ),
        //leftHandSideColBackgroundColor: Color(0xFFFFFFFF),
        //rightHandSideColBackgroundColor: Color(0xFFFFFFFF),
        verticalScrollbarStyle: const ScrollbarStyle(
          thumbColor: Colors.teal,
          isAlwaysShown: false,
          thickness: 4.0,
          radius: Radius.circular(5.0),
        ),
        horizontalScrollbarStyle: const ScrollbarStyle(
          thumbColor: Colors.teal,
          isAlwaysShown: false,
          thickness: 4.0,
          radius: Radius.circular(5.0),
        ),
        enablePullToRefresh: false,
        refreshIndicator: const WaterDropHeader(),
        refreshIndicatorHeight: 60,
        onRefresh: () async {
          //Do sth
          await Future.delayed(const Duration(milliseconds: 500));
          _hdtRefreshController.refreshCompleted();
        },
        enablePullToLoadNewData: true,
        loadIndicator: const ClassicFooter(),
        onLoad: () async {
          //Do sth
          await Future.delayed(const Duration(milliseconds: 500));
          _hdtRefreshController.loadComplete();
        },
        htdRefreshController: _hdtRefreshController,
      ),
      height: MediaQuery.of(context).size.height,
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('', 50),
      _getTitleItemWidget('COURS', 200),
      _getTitleItemWidget('ENSEIGNANT', 200),
      _getTitleItemWidget('VACATION', 200),
      _getTitleItemWidget('FACULTE', 200),
      _getTitleItemWidget('HEURES EXIGEES', 200),
      _getTitleItemWidget('HEURES PRESTEES', 100),
      //_getTitleItemWidget('', 0),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      child: Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
      width: width,
      height: 56,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      height: 52,
      //width: 50,
      alignment: Alignment.center,
      child: Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: user.userInfo[index].couleur,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      //margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        //borderRadius: BorderRadius.circular(27),
      ),
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Container(
          child: Text(
            user.userInfo[index].cours,
          ),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(user.userInfo[index].enseignant),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(user.userInfo[index].vacation),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(user.userInfo[index].faculte),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(user.userInfo[index].heurese),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(user.userInfo[index].heuresp),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          //child: Text(user.userInfo[index].terminationDate),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }
  //

  showTruc() async {
    //var file = "assets/Copie de LISTES DE COURS.xlsx";
    //var bytes = File(file).readAsBytesSync();
    final byteData =
        await rootBundle.load('assets/Copie de LISTES DE COURS.xlsx');
    //
    //var byt = await rootBundle.load(file);
    //
    var excel = Excel.decodeBytes(byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    /*
    for (var table in excel.tables.keys) {
      print("table: $table"); //sheet Name
      print(excel.tables[table]!.maxCols);
      print(excel.tables[table]!.maxRows);
      for (var row in excel.tables[table]!.rows) {
        //print("$row");
        row.forEach((element) {
          //
          //print("::${element}");
        });
      }
    }
    */
  }
}

User user = User();

class User {
  List<UserInfo> userInfo = [];

  void initData(int size) {
    lis.forEach((element) {
      userInfo.add(element);
    });
  }

  ///
  /// Single sort, sort Name's id
  void sortName(bool isAscending) {
    /*
    userInfo.sort((a, b) {
      int aId = int.tryParse(a.name.replaceFirst('User_', '')) ?? 0;
      int bId = int.tryParse(b.name.replaceFirst('User_', '')) ?? 0;
      return (aId - bId) * (isAscending ? 1 : -1);
    });
    */
  }

  ///
  /// sort with Status and Name as the 2nd Sort
  void sortStatus(bool isAscending) {
    /*
    userInfo.sort((a, b) {
      if (a.status == b.status) {
        int aId = int.tryParse(a.name.replaceFirst('User_', '')) ?? 0;
        int bId = int.tryParse(b.name.replaceFirst('User_', '')) ?? 0;
        return (aId - bId);
      } else if (a.status) {
        return isAscending ? 1 : -1;
      } else {
        return isAscending ? -1 : 1;
      }
      
    });
    */
  }
}

class UserInfo {
  String cours; //cours
  String enseignant; //enseignant
  String vacation; //vacation
  String faculte; //faculte
  String heurese; //heurese
  String heuresp; //heuresp
  Color couleur;

  UserInfo(this.cours, this.enseignant, this.vacation, this.faculte,
      this.heurese, this.heuresp, this.couleur);
}

List<UserInfo> lis = [
  UserInfo("ANGLAIS", "Prof SANGABAO", "Jour/AM", "BA, LG, CTI", "30H", "",
      Colors.brown),
  UserInfo("ANGLAIS", "Prof GIASUMA", "Jour/PM, Soir", "BA, LG, CTI & TH.B",
      "30H	", "", Colors.brown),
  UserInfo("METHODES POUR LA RECHERCHE SCIENTIFIQUE", "Prof N’KWIM",
      "Jour (AM et PM), Soir", "BA, LG, CTI & TH.B", "30H", "", Colors.brown),
  UserInfo("MATHEMATIQUE GENERALE", "CT MUBOYAI", "Jour (AM et PM), Soir",
      "BA, LG", "30H", "", Colors.lime),
  UserInfo("LOGIQUE, EXPRESSION ECRITE ET ORALE", "Prof MUKENDJI",
      "Jour (AM et PM), Soir", "BA, LG", "30H", "", Colors.lime),
  UserInfo("CONCEPTION ET ADMINISTRATION DE PROJET", "Prof PASHI",
      "Jour (AM et PM), Soir", "BA, LG", "30H", "", Colors.green),
  UserInfo("STRATEGIC MANAGEMENT", "Prof KAWATA", "Jour (AM et PM), Soir",
      "BA, LG, CTI", "30H", "", Colors.green),
  UserInfo("ETHIQUE SOCIALE", "Prof N’KWIM", "Jour (AM et PM), Soir",
      "BA, LG, TH.B", "30H", "", Colors.blue),
  UserInfo("COMPTABILITE GENERALE", "CT BAOLIMO", "Jour (AM et PM), Soir",
      "BA, LG", "45H", "", Colors.lime),
  UserInfo("ANALYSE DES ETATS FINANCIERS", "CT YADISADILA",
      "Jour (AM et PM), Soir", "BA, LG", "30H", "", Colors.red),
  UserInfo("DEVELOPPEMENT PERSONNEL DU LEADER", "Prof FOHLE",
      "Jour (AM et PM), Soir", "BA, LG, TH.B", "15H", "", Colors.red),
  UserInfo("LES STYLES ET CARACTERISTIQUES DU LEADERSHIP", "Prof EALE",
      "Jour (AM et PM), Soir", "BA, LG, CTI & TH.B", "15H", "", Colors.green),
  UserInfo("DOCUMENTS COMMERCIAUX ET MATHEMATIQUE FINANCIERES", "CT YADISADILA",
      "Jour (AM et PM), Soir", "BA", "45H", "", Colors.lime),
  UserInfo("POPULATION, ENVIRONNEMENT & DEVELOPPEMENT", "Prof MUZINGU",
      "Jour (AM et PM), Soir", "BA, LG", "30H", "", Colors.amber),
  UserInfo("HISTOIRE POLITIQUE DU CONGO", "Prof N’LANDU ESTHER",
      "Jour (AM et PM), Soir", "BA, LG", "30H", "", Colors.amber),
  UserInfo("FONDEMENTS DE BONNE GOUVERNANCE", "Prof PASHI",
      "Jour (AM et PM), Soir", "LG", "30H", "", Colors.amber),
];

/*
*/