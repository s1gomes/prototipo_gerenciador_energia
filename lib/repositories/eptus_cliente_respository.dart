import 'package:gerenciador_energia/data/db_eptuslogin.dart';
import 'package:gerenciador_energia/data/models/esptus_modelCliente.dart';
import 'package:gerenciador_energia/repositories/eptus_login_repository.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ClienteRepository {
  static late List<Cliente> listCliente;

  static Future<List<Cliente>> Callcliente() async {
    Map<String, String> headers = {
      'Content-Type' : 'application/json',
      'Accept' : 'application/json',
      'Authorization' : 'Bearer ${LoginRepository.usuario.token}'
    };

    http.Response response = await http.get(
      Uri.parse(
        "${BancodeDados.instance.urlBasee}/api/Cliente/${LoginRepository.usuario.idEmp}/1/0/*/*/*/*/*/"
      ),
      headers: headers
    );
    if (response.statusCode == 200) {
      List caixas = json.decode(response.body);
      listCliente = caixas.map((json) => Cliente.fromMap(json)).toList();
      return listCliente;
    } else {
      throw Exception("Erro ao carregar Api. Faça login.");
    }
  }
}