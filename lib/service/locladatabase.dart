import "package:sqflite/sqflite.dart";

class LocalDB {
  String FUSR_NAME = "james";
  String LUSR_NAME = "james";
  String EMAIL = "james";
  String PHONE = "james";
  String ADDRESS = "james";
  String IMAGE = "james";
  String GENDER = "james";

  LocalDB._();
  LocalDB db = LocalDB._();
  Database _database;
  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await createDatabase();
    return _database;
  }

  Future<Database> createDatabase() async {
    String dbPath = await getDatabasesPath();
    return await openDatabase(dbPath, version: 1,
        onCreate: (database, int version) async {
      await database.execute(
      "CREATE TABLE USER (" ""
      );
    });
  }
}
