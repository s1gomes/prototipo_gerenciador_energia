import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gerenciador_energia/models/comodos.dart';
import 'package:gerenciador_energia/pages/homepage/cadastrar_iconButton_comodo_page.dart';
import 'package:gerenciador_energia/shared/widgets/views/gridView_comodos.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
//  List<Comodos> get _newComodos {
//     return _comodos.where((comodo) {
//       return comodo.date.isAfter(DateTime.now().subtract(Duration(days: 7)));
//     }).toList();
//   }

  _addComodo(String nome, String urlImage) {
    final newTransaction = Comodos(
      id: Random().nextDouble().toString(),
      nome: nome,
      urlImagem: urlImage,
    );
    setState(() {
      _comodos.add(newTransaction);
    });
  }

  _deleteComodo(String id) {
    setState(() {
      _comodos.removeWhere((comodo) => comodo.id == id);
    });
  }

  final List<Comodos> _comodos = [
    Comodos(
        id: Random().nextDouble().toString(),
        nome: "Sala",
        urlImagem: "assets/images/sala.jpg"),
    Comodos(
        id: Random().nextDouble().toString(),
        nome: "Cozinha",
        urlImagem: "assets/images/cozinha.jpg"),
    Comodos(
        id: Random().nextDouble().toString(),
        nome: "Ventilador",
        urlImagem: "assets/images/ventilador.jpg"),
  ];
  bool _showChart = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  _openCadastroComodo(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return CadastroComodosPage(onSubmit: _addComodo);
        });
  }

  Widget _getIconButton(IconData icon, Function() fn) {
    return Platform.isIOS
        ? GestureDetector(onTap: fn, child: Icon(icon))
        : IconButton(icon: Icon(icon), onPressed: fn);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      return Scaffold(
          body: Column(
        children: [
          Card(
            elevation: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: constraints.maxWidth * 0.07,
                ),
                Container(
                    height: constraints.maxHeight * 0.065,
                    width: constraints.maxWidth * 0.75,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Cômodos",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CadastroComodosPage(onSubmit: _addComodo)),
                    );
                  },
                  icon: const Icon(Icons.add),
                )
              ],
            ),
          ),
          SizedBox(height: constraints.maxHeight * 0.015),
          GridViewComodos(comodos: _comodos),
          Card(
            elevation: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: constraints.maxWidth * 0.01),
                Container(
                    height: constraints.maxHeight * 0.065,
                    width: constraints.maxWidth * 0.96,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Eletrodomésticos mais custosos",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
                // IconButton(
                //   onPressed: () {

                //   },
                //   icon: const Icon(Icons.add),
                // )
              ],
            ),
          ),
          Container(
              height: 40,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Ainda não há eletrodomésticos cadastrados",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
              )),
        ],
      ));
    }));
  }
}
