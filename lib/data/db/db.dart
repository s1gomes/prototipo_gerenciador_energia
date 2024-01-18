import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ComodoBancodeDados {
  ComodoBancodeDados._();
  static final ComodoBancodeDados instance = ComodoBancodeDados._();
  bool updateBanco = false;
  Map<String, dynamic> mapa = {};
  static Database? _database;

  get database async {
    if (_database != null) return _database;
    return await _initDatabase();
  }

  _initDatabase() async {
    var dbCaminho = await getDatabasesPath();
    return await openDatabase(
      join(dbCaminho, 'BDComodos.db'),
        version: 1, onCreate: _onCreate, onConfigure: _onConfigure);
  }
   _onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
}

  _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE comodostable (idComodo INTEGER PRIMARY KEY AUTOINCREMENT, nomeComodo TEXT, urlImageComodo TEXT)');
    await db.execute(
        'CREATE TABLE eletrodomesticos_table (idEletrodomestico INTEGER PRIMARY KEY AUTOINCREMENT, idComodo INTEGER FOREING KEY, nomeEletrodomestico TEXT, urlImageEletrodomestico TEXT)');
  }

  Future<bool> salvarComodos(String nomeComodo, String urlImageComodo) async {
    Database db = await instance.database;
    Map<String, dynamic> map = {
      'nomeComodo': nomeComodo,
      'urlImageComodo': urlImageComodo
    };
    try {
      db.insert('comodostable', map);
      updateBanco = true;

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> salvarEletrodomesticos(String idComodo,
      String nomeEletrodomestico, String urlImageEletrodomestico) async {
    Database db = await instance.database;
    Map<String, dynamic> map = {
      'idComodo': idComodo,
      'nomeEletrodomestico': nomeEletrodomestico,
      'urlImageEletrodomestico': urlImageEletrodomestico
    };
    try {
      db.insert('eletrodomesticostable', map);
      updateBanco = true;

      return true;
    } catch (e) {
      return false;
    }
  }

  Future atualizar(String porta, String novaUrl) async {
    Database db = await instance.database;
    try {
      var newMap = db.rawUpdate(
          'UPDATE dados2 SET porta = ?, url = ? WHERE id = ?',
          [porta, novaUrl, 1]);
      return newMap;
    } catch (e) {
      e.toString();
    }
    return {};
  }

  Future<Map<String, dynamic>> recuperarPorId(int id) async {
    Database db = await instance.database;
    try {
      List<Map<String, dynamic>> map =
          await db.rawQuery('SELECT * FROM dados2 WHERE id= $id');
      return map.first;
    } catch (e) {
      e.toString();
    }
    return {};
  }

  Future<int> deletarCampo(int id) async {
    Database db = await instance.database;
    try {
      int registro =
          await db.delete('dados2', where: 'id = ?', whereArgs: [id]);
      return registro;
    } catch (e) {
      e.toString();
    }
    return 0;
  }

  Future<List<Map<String, dynamic>>> recuperarTodos() async {
    Database db = await instance.database;
    try {
      var map = await db.rawQuery('SELECT * FROM dados2');

      return map;
    } catch (e) {
      return [];
    }
  }
}
