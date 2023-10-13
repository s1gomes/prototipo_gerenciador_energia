import 'package:flutter/material.dart';
import 'package:flutter_application_teste/data/db_eptuslogin.dart';
import 'package:flutter_application_teste/data/models/eptus_empresa.dart';
import 'package:flutter_application_teste/pages/login_eptus.dart';
import 'package:flutter_application_teste/repositories/eptus_login_repository.dart';
import 'package:flutter_application_teste/shared/widgets/listview_page_adcServer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

class CadastroServidorLogin extends StatefulWidget {
  const CadastroServidorLogin({super.key});

  @override
  State<CadastroServidorLogin> createState() => _CadastroServidorLoginState();
}

class _CadastroServidorLoginState extends State<CadastroServidorLogin> {
    final _servidorController = TextEditingController(text: "");
    final _nomeController = TextEditingController(text: "");
    final _portaController = TextEditingController(text: "");
    String message = '';
    List<Empresa> listaEmpresa = [];

     final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override 
  void initState() {
    super.initState();
    _servidorController.addListener(() {
      final String text = _servidorController.text.toLowerCase();
      _servidorController.value = _servidorController.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
    _nomeController.addListener(() {
      final String text = _nomeController.text.toLowerCase();
      _nomeController.value = _nomeController.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
    _portaController.addListener(() {
      final String text = _portaController.text.toLowerCase();
      _portaController.value = _portaController.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });

    // servidor = getServidor();
    // nome = getNome();
    // porta = getPorta();
  }

  @override
  void dispose() {
    _servidorController.dispose();
    super.dispose();
  }

  // Future<String> getServidor() async {
  //   await Future.delayed(const Duration(milliseconds: 100));
  //   return servidorController();
  // }
  
  // Future<String> getServidor() async {
  //   await Future.delayed(const Duration(milliseconds: 100));
  //   return getServidor();
  // }
  // Future<String> getNome() async {
  //   await Future.delayed(const Duration(milliseconds: 100));
  //   return getNome();
  // }
  // Future<String> getPorta() async {
  //   await Future.delayed(const Duration(milliseconds: 100));
  //   return getPorta();
  // }

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
// criar text controler
    return Scaffold(
      backgroundColor: const Color.fromRGBO(60, 62, 64, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions:  [
           Padding(padding: const EdgeInsets.only(right: 5),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 49, 47, 47)),
                  ),
                  onPressed: () async {
                    LoginRepository.loginPermissao(
                      _portaController.text, _servidorController.text
                    ).then((value){
                      debugPrint('valor' + value.toString());
                    if (value) {
                    setState(() {
                      message = 'Servidor Válido';
                      BancodeDados.instance.salvar(_nomeController.text, _portaController.text, _servidorController.text)
                      .then((value) {
                        if (value) {
                          debugPrint(value.toString());
                          setState(() {
                            value;
                            message = '';
                            _nomeController.clear();
                            _servidorController.clear();
                            _portaController.clear();
                            LoginRepository.recuperandoEmpresa2(
                                    _portaController.text, _servidorController.text)
                                .then((value) {
                              if (value.isNotEmpty) {
                                listaEmpresa = value;
                                listaEmpresa
                                    .map((e) => print(e.fant))
                                    .toList();
                              }
                            });
                          });
                        } 
                      });
                    });
                  } else {
                    setState(() {
                      message = 'Servidor Inválido';
                    });
                  }
                });
                  },
                  child: const Row(children: [
                    Icon(Icons.add,
                    color: Colors.white), 
                    Text("Adicionar",
                    style: TextStyle(
                      color: Colors.white
                    )
                  )
                ]
              ),
            ),
          ),
        ],
        title: const Text('SERVIDORES',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600
            )
          ),
            leading:  BackButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pushReplacement(
                              context, 
                                MaterialPageRoute(
                                  builder: (context) => const TelaLoginEptus()));
              },
            ),
          ),
      body: Container(
        width: largura,
        height: altura,
        child: Column(
          children: [
              Padding(
              padding: const EdgeInsets.only(left: 9, right: 9, bottom: 1, top: 1),
              child: Row(
                children: [
                  const Text("Nome:",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    )
                  ),
                  SizedBox(
                    width: 220,
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      controller: _nomeController,
                      decoration: const InputDecoration(
                        contentPadding:  EdgeInsets.all(4),
                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 60, 60, 60),
                            width: 2
                          )
                        ),
                        focusedBorder:  UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 60, 60, 60)
                          ),
                        ),
                        hintText: "Nome do Servidor",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 119, 119, 119),
                          fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 9, bottom: 1, top: 1),
              child: Row(
                children: [
                  const Text("Server: ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    )
                  ),
                  SizedBox(
                    width: largura - 100,
                    child:  TextField(
                       style: const TextStyle(
                        color: Colors.white,
                      ),
                      controller: _servidorController,
                      decoration: const InputDecoration(
                        contentPadding:  EdgeInsets.all(4),
                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 60, 60, 60),
                            width: 2
                          )
                        ),
                        focusedBorder:  UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 60, 60, 60)
                          ),
                        ),
                        hintText: "ex°: 162.192.3.12",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 119, 119, 119),
                          fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 9, bottom: 4, top: 1),
              child: Row(
                children: [
                  const Text("Porta: ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                  )),
                  SizedBox(
                    width: largura - 100,
                    child:  TextField(
                       style: const TextStyle(
                        color: Colors.white,
                      ),
                      controller: _portaController,
                      decoration: const InputDecoration(
                        contentPadding:  EdgeInsets.all(4),
                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 60, 60, 60),
                            width: 2
                          )),
                        focusedBorder:  UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 60, 60, 60)
                          ),
                        ),
                        hintText: "ex°: 5001",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 119, 119, 119),
                          fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Text("LISTA DE SERVIDORES CADASTRADOS",
                    style: TextStyle(
                      color: Colors.white, 
                      fontWeight: FontWeight.w700,
                      fontSize: 16 
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Divider(
                      height: 2,
                    ),
            Expanded(
            child: FutureBuilder(
              future: BancodeDados.instance.recuperarTodos(),
              builder: (context, snapshot) {
                if (!snapshot.hasData)
                          return const CircularProgressIndicator(
                            color: Colors.black,
                          );
                        return ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            debugPrint(snapshot.data![index].toString());
                            return GestureDetector(
                              onTap: () {
                                print(snapshot.data![index]);
                                _prefs.then((SharedPreferences prefs) {
                                  prefs.setInt(
                                      'idServer', snapshot.data![index]['id']);
                                });
                                Navigator.pop(context, snapshot.data![index]);
                              },
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "Nome: ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '${(snapshot.data![index]['nome'])}',
                                          style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 214, 168, 76)),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Text(
                                                "Server: ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                  '${(snapshot.data![index]['url'])}',
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 214, 168, 76))),
                                            ],
                                          ),
                                          GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  BancodeDados.instance.deletarCampo(
                                                      snapshot.data![index]
                                                          ['id']);
                                                });
                                              },
                                              child: const Icon(
                                                Icons.delete,
                                                color: Color.fromARGB(
                                                    255, 204, 18, 43),
                                              )
                                            ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "Porta: ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            '${(snapshot.data![index]['porta'])}',
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 214, 168, 76))),
                                      ],
                                    ),
                                    const Divider(
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    )
                  )
            ]
          ),
        )
      );
    }
  }