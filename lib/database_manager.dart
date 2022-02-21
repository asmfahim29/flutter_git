import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart' as sql;

class DatabaseHelper{


  //create database table
  static Future<void> createTable(sql.Database database) async{
    await database.execute('''
                CREATE TABLE workNote(
                empID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
                columnTask TEXT NOT NULL
                createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
                )
          ''');
  }


  //initialize database
  static Future<sql.Database> db() async{
    return sql.openDatabase(
        'TaskDatabase.db',
        version: 1,
        onCreate: (sql.Database db , int version) async{
          await createTable(db);
        }
    );
  }

  //create user
  static Future<int> createUser(
      String? tasks) async {
    final db = await DatabaseHelper.db();
    final data = {"workNote": tasks};
    final id = await db.insert("workNote", data, conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }


  //all users list
  static Future<List<Map<String,dynamic>>> getUsers() async{
    final db = await DatabaseHelper.db();

    return db.query("workNote", orderBy: "id");
  }

  static Future<int> updateUser(int id, String tasks) async{
    final db = await DatabaseHelper.db();
    final data = {'worknote': tasks, 'createdAt': DateTime.now().toString()};
    final result = await db.update("workNote", data, where: "id = ?", whereArgs: [id]);
    return id;
  }

  static Future<void> deleteUser(int id) async{
    final db = await DatabaseHelper.db();
    try{
      await db.delete("workNote", where: "id = ?", whereArgs: [id]);
    }
    catch(error){
      debugPrint("Something went wrong : $error");
    }
  }


}