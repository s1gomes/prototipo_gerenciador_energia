import 'dart:convert';
import 'package:gerenciador_energia/data/db_eptuslogin.dart';
import 'package:gerenciador_energia/data/models/eptus_configuracao_usuario_model.dart';
import 'package:gerenciador_energia/data/models/eptus_empresa.dart';
import 'package:gerenciador_energia/data/models/eptus_usuario.dart';
import 'package:gerenciador_energia/repositories/eptus_cliente_respository.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class LoginRepository {
  static late Usuario usuario;
  static late ConfiguracaoUsuario usuatioT;
  static late String urlBasee;
  static bool statusCode = false;
  static late int idDep;
   
  static Future<Usuario?> fazendoLogin(
    String username,
    String password,
    String empsLogin,
    int idEmpLogin
  ) async {
    try {
      Map<String, dynamic> body = {
        "UserName": username,
        "Pasword": password,
        "EmpsLogin": empsLogin,
        "IdEmpLogin": idEmpLogin
      };
      Map<String, String> headers = {
        'Content-Type': 'application/json; chaset=utf-8'
      };
      var bodyEncode = jsonEncode(body);
      var url = Uri.parse('${BancodeDados.instance.urlBasee}/public/login');
      var response = await http.post(url, body: bodyEncode, headers: headers);
      if (response.statusCode == 401) {
        statusCode = true;
      } 
      if (response.statusCode == 200) {
        Map<String, dynamic> user = json.decode(response.body);
        usuario = Usuario.fromJson(user);

        ClienteRepository.Callcliente();

        statusCode = false;
        return usuario;
      }
    } catch (e) {
      print('$e');
    }
    return null;
  }

  static Future<bool> loginPermissao(String _portaController, String _servidorController) async {
    var url = "http://$_servidorController:$_portaController/welcome";
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      return true;
    }
    return true;
  }

  static Future<List<Empresa>> recuperandoEmpresa() async {
    var url = "http://162.214.74.38:6001/public/empresas";
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        List listaEmpresa = json;
        List<Empresa> empresa = [];
        for (var x in listaEmpresa) {
          empresa.add(Empresa.fromJson(x));
        }
        return empresa;
      } else {
        print('${response.statusCode}');
      }
    } catch (e) {
      print('$e');
    }
    return [];
  }

  static Future<List<Empresa>> recuperandoEmpresa2(
    String _portaController, String _serverController) async {
      var url = "http://$_serverController:$_portaController/public/empresas";

      try {
        var response = await http.get(Uri.parse(url));
        if (response.statusCode == 200) {
          var json = jsonDecode(response.body);
          List listaEmpresa = json;
          List<Empresa> empresa = json;
          for (var x in listaEmpresa) {
            empresa.add(Empresa.fromJson(x));
          }
          print('emp:' + empresa.length.toString());
          return empresa;
        }
      } catch (e) {
          print('Emp 2: ' + e.toString());
      }
      return [];
    }
}