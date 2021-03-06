import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/accueil.dart';

class PreInscription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PreInscription();
  }
}

class _PreInscription extends State<PreInscription> {
  bool obs = true;
  int f = 0;
  List listeFaculte = ["", "", "", "", ""];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Preinscription",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 0,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Nom",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(),
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 14,
                              ),
                              prefixIcon: const Icon(
                                CupertinoIcons.person,
                                color: Colors.blue,
                              ),
                              hintText: "Nom",
                              label: Text("Nom"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Post-Nom",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(),
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 14,
                              ),
                              prefixIcon: const Icon(
                                CupertinoIcons.person,
                                color: Colors.blue,
                              ),
                              hintText: "Post-Nom",
                              label: Text("Post-Nom"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Prenom",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(),
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 14,
                              ),
                              prefixIcon: const Icon(
                                CupertinoIcons.person,
                                color: Colors.blue,
                              ),
                              hintText: "Prenom",
                              label: Text("Prenom"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Date de naissance",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(),
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 14,
                              ),
                              prefixIcon: const Icon(
                                CupertinoIcons.calendar,
                                color: Colors.blue,
                              ),
                              hintText: "Date de naissance",
                              label: Text("Date de naissance"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "T??l??phone",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(),
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 14,
                              ),
                              prefixIcon: const Icon(
                                CupertinoIcons.phone,
                                color: Colors.blue,
                              ),
                              hintText: "T??l??phone",
                              label: Text("T??l??phone"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Adresse",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(),
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 14,
                              ),
                              prefixIcon: const Icon(
                                CupertinoIcons.map,
                                color: Colors.blue,
                              ),
                              hintText: "Adresse",
                              label: Text("Adresse"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(),
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 14,
                              ),
                              prefixIcon: const Icon(
                                CupertinoIcons.mail,
                                color: Colors.blue,
                              ),
                              hintText: "Email",
                              label: Text("Email"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Dernier Diplome obtenu",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(),
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 14,
                              ),
                              prefixIcon: const Icon(
                                Icons.school_outlined,
                                color: Colors.blue,
                              ),
                              hintText: "Dernier Diplome obtenu",
                              label: Text("Dernier Diplome obtenu"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Votre facult??",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(),
                      height: 55,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButtonFormField<int>(
                                  decoration: const InputDecoration(
                                    enabledBorder: InputBorder.none,
                                  ),
                                  value: f,
                                  onChanged: (value) {
                                    value = f;
                                  },
                                  items: List.generate(
                                    listeFaculte.length,
                                    (index) {
                                      return DropdownMenuItem(
                                        value: index,
                                        child: Text(listeFaculte[index]),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Votre Section",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(),
                      height: 55,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButtonFormField<int>(
                                  decoration: const InputDecoration(
                                    enabledBorder: InputBorder.none,
                                  ),
                                  value: f,
                                  onChanged: (value) {
                                    value = f;
                                  },
                                  items: List.generate(
                                    listeFaculte.length,
                                    (index) {
                                      return DropdownMenuItem(
                                        value: index,
                                        child: Text(listeFaculte[index]),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Votre niveau",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(),
                      height: 55,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButtonFormField<int>(
                                  decoration: const InputDecoration(
                                    enabledBorder: InputBorder.none,
                                  ),
                                  value: f,
                                  onChanged: (value) {
                                    value = f;
                                  },
                                  items: List.generate(
                                    listeFaculte.length,
                                    (index) {
                                      return DropdownMenuItem(
                                        value: index,
                                        child: Text(listeFaculte[index]),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Mode d'Enseignement",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(),
                      height: 55,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButtonFormField<int>(
                                  decoration: const InputDecoration(
                                    enabledBorder: InputBorder.none,
                                  ),
                                  value: f,
                                  onChanged: (value) {
                                    value = f;
                                  },
                                  items: List.generate(
                                    listeFaculte.length,
                                    (index) {
                                      return DropdownMenuItem(
                                        value: index,
                                        child: Text(listeFaculte[index]),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Comment avez-vous appris notre existance ?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(),
                      height: 55,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButtonFormField<int>(
                                  decoration: const InputDecoration(
                                    enabledBorder: InputBorder.none,
                                  ),
                                  value: f,
                                  onChanged: (value) {
                                    value = f;
                                  },
                                  items: List.generate(
                                    listeFaculte.length,
                                    (index) {
                                      return DropdownMenuItem(
                                        value: index,
                                        child: Text(listeFaculte[index]),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Autres D??tails",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(),
                    height: 155,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            maxLines: 10,
                            //maxLength: 200,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 14,
                              ),
                              //hintText: "T??l??phone / Maricule",
                              //label: Text("T??l??phone / Maricule"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Accueil(),
                  ),
                );
              },
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                  //backgroundColor:
                  //  MaterialStateProperty.all(Colors.blue.shade900),
                  ),
              child: SizedBox(
                height: 45,
                //width: 220,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    //Icon(Icons.add_box_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Enregistrer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
