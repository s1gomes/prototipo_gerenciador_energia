import 'package:logger/logger.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';



class BancodeDados {
  BancodeDados._();
    static final BancodeDados instance = BancodeDados._(); 
    String urlBasee = ''; 
    bool updateBanco = false;
    Map<String, dynamic> mapa = {};
    static Database? _database;

    get database async {
      if (_database != null) return _database;
      return await _initDatabase();
    }

    _initDatabase() async {
      var dbCaminho = await getDatabasesPath();
      return await openDatabase(join(dbCaminho, 'local.db'),
          version: 1, onCreate: _onCreate);        
    }

    _onCreate(Database db, int version) async {
      return await db.execute(
        'CREATE TABLE dados (id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, porta TEXT, url TEXT)'
      );
    }

    Future<bool> salvar(String nome, String porta, String url) async {
      Database db = await instance.database;
      Map<String, dynamic> map = {'nome': nome, 'porta': porta, 'url': url};
      try {
        db.insert('dados', map);
        updateBanco = true;

        return true;
      } catch (e) {
        return false;
      }
    }

    Future atualizar (String porta, String novaUrl) async {
      Database db = await instance.database;
      try {
        var newMap = db.rawUpdate(
          'UPDATE dados SET porta = ?, url = ? WHERE id = ?',
          [porta, novaUrl, 1]
        );
        return newMap; 
      }  catch (e) {
        e.toString();
      }
      return {};
    }

    Future<Map<String, dynamic>> recuperarPorId(int id) async {
      Database db = await instance.database;
      try {
        List<Map<String, dynamic>> map = 
          await db.rawQuery('SELECT * FROM dados WHERE id=$id');  
        return map.first;
      } catch (e) {
        e.toString();
      }
      return {};
    }

    Future<int> deletarCampo(int id) async {
      Database db = await instance.database;
      try {
        int registro = await db.delete('dados', where: 'id = ?', whereArgs: [id]);
      return registro;
      } catch (e) {
        e.toString();
      }
      return 0;
    }

  Future<List<Map<String, dynamic>>> recuperarTodos() async {
    Database db = await instance.database;
    try {
      var map = await db.rawQuery('SELECT * FROM dados');

      return map;
    } catch (e) {
      return [];
    }
  }
}