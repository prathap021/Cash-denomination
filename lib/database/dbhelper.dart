import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../models/denomination_model.dart';

class DBProvider {
  static Database? _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database> get database async {
    // If database exists, return database
    if (_database != null) return _database!;

    // If database don't exists, create one
    _database = await initDB();

    return _database!;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'Denomination_manager.db');

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('CREATE TABLE Denomination('
          'id INTEGER PRIMARY KEY,'
          'date TEXT,'
          'time TEXT,'
          'payeename TEXT,'
          'twothousand TEXT,'
          'fivehundred TEXT,'
          'twohundred TEXT,'
          'hundred TEXT,'
          'fifty TEXT,'
          'twenty TEXT,'
          'ten TEXT,'
          'five TEXT,'
          'two TEXT,'
          'one TEXT,'
          'totamt TEXT,'
          'totnotes TEXT,'
          'totcoins TEXT'
          ')');
    });
  }

  //create denomination
  createDenomination(Denomination denomination) async {
    //await deleteAllDenomination();
    final db = await database;
    final res = await db.insert('Denomination', denomination.toJson());

    return res;
  }

  // Delete all denomination
  Future<int> deleteAllDenomination() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM Denomination');

    return res;
  }
  //delete perticular denominati on

  // Future<int> deleteid(int id) async {
  //   final db = await database;
  //   final int result =
  //       await db.delete('Denomination', where: 'id = ?', whereArgs: [id]);
  //   return result;
  // }

  //get denomination
  Future<List<Denomination>> getAllDenomination() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM Denomination");

    List<Denomination> list =
        res.isNotEmpty ? res.map((c) => Denomination.fromJson(c)).toList() : [];

    return list;
  }
}
