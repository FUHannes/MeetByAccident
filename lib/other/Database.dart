import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class TheDatabase {
  static final TheDatabase _instance = TheDatabase._();
  static Database _database;

  TheDatabase._();

  factory TheDatabase() {
    return _instance;
  }


  Future<Database> get db async {
    if (_database != null) {
      return _database;
    }
    _database = await init();

    return _database;
  }

  Future<Database> init() async {
    String dbPath = join(await getDatabasesPath(), 'theRealDatabase_T.db');
    var database = openDatabase(
        dbPath, version: 3, onCreate: _onCreate, onUpgrade: _onUpgrade);
    return database;
  }

  void _onCreate(Database db, int version) {
    db.execute('''
    
    ''');
  }

 
  void _onUpgrade(Database db, int oldVersion, int newVersion) {
    // Run migration according database versions
    if (oldVersion==1 && newVersion>=2){
      db.execute('''
    ''');
    }
  }

}

class DataHandler{
  static final DataHandler _instance = DataHandler._();
  static TheDatabase tdb = TheDatabase();
  static Future<Database> _database = tdb.db;

  DataHandler._();

  factory DataHandler() {
    return _instance;
  }

  Future<int> addStump({String name}) async{
    Database db = await _database;
    db.hashCode;//to remove info
    int id = -1;//await db.insert();

    return id;
  }
}