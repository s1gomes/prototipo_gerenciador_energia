import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gerenciador_energia/data/db/db.dart';
import 'package:gerenciador_energia/models/comodos.dart';
import 'package:gerenciador_energia/pages/homepage/cadastrar_iconButton_comodo_page.dart';
import 'package:gerenciador_energia/shared/widgets/comodosItems.dart';
import 'package:gerenciador_energia/shared/widgets/views/gridView_comodos.dart';
import 'package:gerenciador_energia/utils/app_routes.dart';

enum FilterOptions { Deletar, Editar }

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


  void _selectComodo(BuildContext context) {
    Navigator.of(context)
        .pushNamed(AppRoutes.GERENCIARCOMODO, arguments: comodo);
  }

  _deleteComodo(String id) {
    setState(() {
      _comodos.removeWhere((comodo) => comodo.id == id);
    });
  }

  // Comodos(
  //     id: Random().nextDouble().toString(),
  //     nome: "Sala",
  //     urlImagem: "assets/images/sala.jpg"),
  // Comodos(
  //     id: Random().nextDouble().toString(),
  //     nome: "Cozinha",
  //     urlImagem: "assets/images/cozinha.jpg"),
  // Comodos(
  //     id: Random().nextDouble().toString(),
  //     nome: "Ventilador",
  //     urlImagem: "assets/images/ventilador.jpg"),
  final List<Comodos> _comodos = [];
  final List<Comodos> _comodosBanco = [];
  late Comodos comodo;

  // recuperarComodos() {
  //   ComodoBancodeDados.instance
  //   .recuperarTodos().then((value) async {
  //     _comodosBanco.addAll(value);
  //   });
  //   return _comodosBanco;
  // }

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
    
    return LayoutBuilder(builder: (context, constraints) {
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
          // GridViewComodos(comodos: _comodosBanco),
          FutureBuilder(
              future: ComodoBancodeDados.instance.recuperarTodos(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text('Ainda não há comodos cadastrados');
                }
                return Container(
                  height: 300,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => _selectComodo(context),
                        splashColor: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 150,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    snapshot.data![index]['urlImageComodo']),
                                fit: BoxFit.fill,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.dstATop),
                              ),
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  colors: [
                                    Theme.of(context).cardColor,
                                    Theme.of(context).canvasColor,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: Container(
                            // height: 300,
                            alignment: Alignment.bottomRight,
                            color: Color.fromRGBO(225, 218, 218, 0.306),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  snapshot.data![index]['nomeComodo'],
                                  style: Theme.of(context).textTheme.titleSmall,
                                  textAlign: TextAlign.left,
                                ),
                                PopupMenuButton(
                            // icon: const Icon(Icons.more_vert),
                            itemBuilder: (_) => [
                              const PopupMenuItem(
                                value: FilterOptions.Deletar,
                                child: Text('Deletar cômodo'),
                              ),
                              const PopupMenuItem(
                                value: FilterOptions.Editar,
                                child: Text('Editar Cômodo'),
                              ),
                            ],
                            onSelected: (FilterOptions selectedValue) {
                              setState(() {
                                if (selectedValue ==
                                    FilterOptions.Deletar) {
                                  ComodoBancodeDados.instance.deletarCampo(
                                      snapshot.data![index]['idComodo']);
                                } else {
                                   Navigator.of(context)
                                  .pushNamed(AppRoutes.GERENCIARCOMODO, arguments: comodo);
                                }
                              });
                            },
                          ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }),

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
    });
  }
}
