import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

class TravauxPratique extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TravauxPratique();
  }
}

class _TravauxPratique extends State<TravauxPratique> {
  //
  HDTRefreshController _hdtRefreshController = HDTRefreshController();
  //

  @override
  void initState() {
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
            Text("T.P")
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
      body: ListView(
        padding: EdgeInsets.all(10),
        children: List.generate(10, (index) {
          return Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: SizedBox(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: "Informatique\n",
                                children: [
                                  TextSpan(
                                    text: "Prof: Kilombe",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.all(5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Rappel sur le chapitre 3",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    //color: Colors.blue,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 25,
                            //color: Colors.yellow,
                            child: Text(
                              "Date de depot",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 25,
                            //color: Colors.brown,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "12/12/2022 15h GMT",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return DetailTp();
                                    }));
                                  },
                                  child: Text(
                                    "Resoudre",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  //

}

class DetailTp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DetailTp();
  }
}

class _DetailTp extends State<DetailTp> {
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
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text(
            "Ennoncé",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              """Est aute quis culpa ut. Reprehenderit in laboris Lorem ut fugiat id anim id id cupidatat deserunt deserunt anim mollit. Sit commodo do aliquip anim enim esse non aute. Irure nulla aute irure cillum dolor veniam adipisicing duis mollit commodo adipisicing amet. Ut eu id reprehenderit non ea cupidatat consequat laborum culpa.

Velit incididunt est tempor veniam voluptate laboris officia exercitation velit labore quis aliquip. Sunt enim ad Lorem do ex Lorem. Aute cillum nulla mollit velit labore non. Eiusmod eu ea aliquip magna incididunt eu ullamco pariatur nisi non incididunt nostrud enim amet.

Dolore velit eu aliqua esse aute nostrud mollit officia incididunt exercitation aliqua esse consectetur irure. Exercitation anim est reprehenderit duis duis id ut amet pariatur ex. Qui minim do veniam sunt nulla culpa aute commodo. Minim irure do incididunt tempor aliqua deserunt aliqua consectetur incididunt adipisicing tempor. Nulla reprehenderit aliquip non enim culpa exercitation."""),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: TextField(
              maxLines: 7,
              decoration: InputDecoration(
                hintText: "Votre reponse",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Center(
              child: Text("Associer un fichier"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {},
          child: Center(
            child: Text("Repondre"),
          ),
        ),
      ),
    );
  }

  //
  getFile() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result != null) {
      List<File> files = result.paths.map((path) => File(path!)).toList();
      files.forEach((element) async {
        //
        List<String> extT = element.path.split(".");
        String ext = extT.last;
        Uint8List l = await element.readAsBytes();
        //
      });
    } else {
      // User canceled the picker
    }
  }
}
