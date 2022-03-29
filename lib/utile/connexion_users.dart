import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decode/jwt_decode.dart';
import 'package:lua/login.dart';
import 'package:lua/main.dart';
import 'package:lua/models/token_model.dart';
import 'package:lua/models/user_model.dart';
import 'package:sqflite/sqflite.dart';

class ConnexionUser {
  //
  //static var lien = 'https://epstapp.herokuapp.com/';
  static var lien = 'http://lau.fenxweb.com/api/';
  /*redirection tout le monde
  "code": 401,
    "message": "JWT Token not found"
  */
  //'Authorization': 'Bearer $token',
  //
  static Future<Map<String, dynamic>> login(Map<String, dynamic> user) async {
    //
    var url = Uri.parse(lien + "login_check");
    //
    var response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
      },
      body: json.encode(user),
    );
    Map<String, dynamic> v = jsonDecode(response.body);
    tok = v;
    Map<String, dynamic> payload = Jwt.parseJwt(v["token"]);
    //
    Token token = Token();
    Database db1 = await token.openDB();
    db1.insert("Token", v);
    //___________________________________________

    //print(v);

    return v;
  }

  //
  static Future<Map<String, dynamic>> getUser(BuildContext context) async {
    //
    Map<String, dynamic> payload = Jwt.parseJwt(tok["token"]);
    //print(payload);
    //
    var url = Uri.parse(lien + "users/${payload["id"]}");
    //
    var response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
        //"Authorization": "Bearer ${tok["token"]}"
      },
    );
    Map<String, dynamic> v = {};
    //v["statusCode"] = response.statusCode;
    if (response.statusCode == 200 || response.statusCode == 201) {
      //tok = jsonDecode(response.body);
      Map<String, dynamic> us = jsonDecode(response.body);
      v = us;
      //
      UserModel userDb = UserModel();
      Database db = await userDb.openDB();
      //
      db.delete("USER");
      //
      int tt = await db.insert("USER", {"user": response.body});
      print(
          "nous avons save vos informations personnel la reponse est:::::: $tt");
      //___________________________________________
      //print(v);
    } else if (response.statusCode == 401) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Redirection()),
        ModalRoute.withName('/'),
      );
    }

    return v;
  }

  //
  static Future<String> saveUsers(Map<String, dynamic> users) async {
    //
    print("Users: ${json.encode(users)}");
    //
    var url = Uri.parse(lien + "users");
    //
    var response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
      },
      body: json.encode(users),
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    //print(response);
    return "";
    //return "${response.body}";
  }

  static Future<String> updateUsers(Map<String, dynamic> m) async {
    int t = 0;
    //
    var url = Uri.parse(lien + "users");
    var response = await http.put(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(m),
    );
    //Map<String, dynamic> l = jsonDecode(response.body);
    //t = response.statusCode;
    //
    print("_______________: ${response.body}");
    print("_______________: ${json.encode(m)}");
    print("_______________: ${response.statusCode}");
    //
    return "";
  }

  static Future<int> deleteUsers(int id) async {
    int t = 0;
    //
    var url = Uri.parse(lien + "users/$id");
    var response = await http.delete(url);
    t = response.statusCode;
    //
    return t;
  }

  static Future<List<Map<String, dynamic>>> listUsers() async {
    List<Map<String, dynamic>> liste = [];
    //
    var url = Uri.parse(lien + "users/all");
    var response = await http.get(url);
    //
    List rep_liste = json.decode(response.body);
    print(rep_liste);
    rep_liste.forEach((element) {
      Map<String, dynamic> e = element;
      print("________les Userss: $e");
      liste.add(e);
    });

    return liste;
  }

  //__________________________
  static Future<bool> checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi;
  }

  static redirection(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => Login()),
      ModalRoute.withName('/'),
    );
  }
}
