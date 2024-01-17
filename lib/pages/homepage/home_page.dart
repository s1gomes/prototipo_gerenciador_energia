import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gerenciador_energia/models/comodos.dart';
import 'package:gerenciador_energia/pages/homepage/cadasstrar_iconButton_comodo_page.dart';
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
        id: Random().nextDouble().toString(), nome: nome, urlImagem: urlImage);
    setState(() {
      _comodos.add(newTransaction);
    });
  }

  _deleteComodo(String id) {
    setState(() {
      _comodos.removeWhere((comodo) => comodo.id == id);
    });
  }

  final List<Comodos> _comodos = [];
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

  _openCadastroComodo(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return IconButtonComodosCadastros(onSubmit: _addComodo);
        });
  }

  Widget _getIconButton(IconData icon, Function() fn) {
    return Platform.isIOS
        ? GestureDetector(onTap: fn, child: Icon(icon))
        : IconButton(icon: Icon(icon), onPressed: fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Card(
          elevation: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                  height: 40,
                  width: 300,
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
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            IconButtonComodosCadastros(onSubmit: _addComodo)),
                  );
                },
                icon: const Icon(Icons.add),
              )
            ],
          ),
        ),
        SizedBox(height: 12),
        GridViewComodos(),
        Card(
          elevation: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 30),
              Container(
                  height: 40,
                  width: 300,
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
  }
}
