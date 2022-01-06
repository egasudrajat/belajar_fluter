// import 'MahasiswaModel.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:flutter/material.dart';
//
// class MySqflite {
//   static final _databaseName = "MyDatabase.db";
//
//   static final _databaseV1 = 1;
//   static final tableMahasiswa = 'mahasiswa';
//
//   static final columnNim = 'nim';
//   static final columnName = 'name';
//   static final columnDepartment = 'department';
//   static final columnSKS = 'sks';
//
//   // make this a singleton class
//   MySqflite._privateConstructor();
//
//   static final MySqflite instance = MySqflite._privateConstructor();
//
//   static Database _database;
//
//   Future<Database> get database async {
//     if (_database != null) return _database;
//     _database = await _initDatabase();
//     return _database;
//   }
//
//   _initDatabase() async {
//     var databasesPath = await getDatabasesPath();
//     String path = join(databasesPath, _databaseName);
//
//     return await openDatabase(path, version: _databaseV1,
//         onCreate: (db, version) async {
//           var batch = db.batch();
//           _onCreateTableMahasiswa(batch);
//
//           await batch.commit();
//         });
//   }
//
//   void _onCreateTableMahasiswa(Batch batch) async {
//     batch.execute('''
//           CREATE TABLE $tableMahasiswa (
//             $columnNim TEXT PRIMARY KEY,
//             $columnName TEXT,
//             $columnDepartment TEXT,
//             $columnSKS INTEGER
//           )
//           ''');
//   }
//
//   ///TABLE MAHASISWA
//   Future<int> insertMahasiswa(MahasiswaModel model) async {
//     var row = {
//       columnNim: model.nim,
//       columnName: model.name,
//       columnDepartment: model.department,
//       columnSKS: model.sks
//     };
//
//     Database db = await instance.database;
//     return await db.insert(tableMahasiswa, row);
//   }
//
//   Future<List<MahasiswaModel>> getMahasiswa() async {
//     Database db = await instance.database;
//     var allData = await db.rawQuery("SELECT * FROM $tableMahasiswa");
//
//     List<MahasiswaModel> result = [];
//     for (var data in allData) {
//       result.add(MahasiswaModel(
//           nim: data[columnNim],
//           name: data[columnName],
//           department: data[columnDepartment],
//           sks: int.parse(data[columnSKS].toString())));
//     }
//
//     return result;
//   }
//
//   Future<MahasiswaModel> getMahasiswaByNIM(String nim) async {
//     Database db = await instance.database;
//     var allData = await db.rawQuery(
//         "SELECT * FROM $tableMahasiswa WHERE $columnNim = $nim LIMIT 1");
//
//     if (allData.isNotEmpty) {
//       return MahasiswaModel(
//           nim: allData[0][columnNim],
//           name: allData[0][columnName],
//           department: allData[0][columnDepartment],
//           sks: int.parse(allData[0][columnSKS]));
//     } else {
//       return null;
//     }
//   }
//
//   Future<int> updateMahasiswaDepartment(MahasiswaModel model) async {
//     Database db = await instance.database;
//     return await db.rawUpdate(
//         'UPDATE $tableMahasiswa SET $columnDepartment = ${model.department} '
//             'Where $columnNim = ${model.nim}');
//   }
//
//   Future<int> deleteMahasiswa(String nim) async {
//     Database db = await instance.database;
//     return await db
//         .rawDelete('DELETE FROM $tableMahasiswa Where $columnNim = $nim');
//   }
//
//   clearAllData() async {
//     Database db = await instance.database;
//     await db.rawQuery("DELETE FROM $tableMahasiswa");
//   }
// }