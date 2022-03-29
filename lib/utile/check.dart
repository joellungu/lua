import 'package:http/http.dart' as http;
import 'package:jwt_decode/jwt_decode.dart';
import 'package:lua/main.dart';
import 'package:lua/models/user_model.dart';
import 'package:sqflite/sqflite.dart';

class Check {
  static var lien = 'http://lau.fenxweb.com/api/';
  late Map<String, dynamic> payload;
  Check() {
    payload = Jwt.parseJwt(tok["token"]);
  }

  //Map<String, dynamic> payload = Jwt.parseJwt(tok["token"]);

  checkUser() async {
    print(payload);

    var url = Uri.parse(lien + "users/");
    /*
    var response2 = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
      },
    );
    //Save user__________________________________
    UserDb userDb = UserDb();
    Database db2 = await userDb.openDB();
    db2.insert("USER", {"user":"${}"});
    */
  }

  //
  Future<int> getUserInfos() async {
    var url = Uri.parse(lien + "users/${payload["id"]}");
    //UserModel
    var response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
      },
    );
    //Save user__________________________________
    UserModel userModel = UserModel();
    Database db2 = await userModel.openDB();
    if (response.statusCode == 200) {
      int t = await db2.insert("USER", {"user": response.body});
      return t;
    } else {
      return 0;
    }
  }
}
