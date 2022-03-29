import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

//
class UserModel {
  //
  var database;

  Future<Database> openDB() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path1 = join(databasesPath, 'user.db');
    //String path2 = join(databasesPath, 'plainte2.db');

    // Delete the database
    //await deleteDatabase(path1);

    // open the database
    database = await openDatabase(path1, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      /*
      
      */
      await db.execute("""CREATE TABLE user 
        (
          user TEXT
        )""");
    });
    return database;
  }
}
