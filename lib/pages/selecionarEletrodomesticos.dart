import 'package:flutter/material.dart';
import 'package:gerenciador_energia/data/models/eletrodomesticos_sala_model.dart';
import 'package:gerenciador_energia/pages/image_assets.dart';
import 'package:gerenciador_energia/pages/pageview1.dart';
import 'package:gerenciador_energia/shared/widgets/app_imagens.dart';
import 'package:gerenciador_energia/shared/widgets/menu_lateral.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EletrodomesticosSala extends StatefulWidget {
  EletrodomesticosSala({super.key});

  @override
  State<EletrodomesticosSala> createState() => _EletrodomesticosSalaState();
}

class _EletrodomesticosSalaState extends State<EletrodomesticosSala> {
  final Future<SharedPreferences> titulo = SharedPreferences.getInstance();

  final Future<SharedPreferences> comodo = SharedPreferences.getInstance();

  final Future<SharedPreferences> voltagem = SharedPreferences.getInstance();

  List<DropdownMenuItem<String>> get dropdownGiro {
    List<DropdownMenuItem<String>> menuGiro = [
      const DropdownMenuItem(child: Text("Abajur"), value: "0"),
      const DropdownMenuItem(child: Text("Frigobar"), value: "1"),
      const DropdownMenuItem(child: Text("Ar condicionado"), value: "2"),
    ];
    return menuGiro;
  }

  String selectedGiro = "0";

  //  final _EletroSala = [
  final _EletroSala = [
    EletroSala(
      comodo: 'Sala',
      title: 'Ventilador',
      voltagem: 220,
    ),
    EletroSala(
      comodo: 'Sala',
      title: 'Televisão',
      voltagem: 110,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            width: 50,
            height: 50,
            child: BackButton(
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Pageview1())),
            ),
          ),
        ],
        title: const Text('Eletrodomésticos da sala'),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add_to_queue_outlined,
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext bc) {
                  return Wrap(
                    children: [
                      const SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: Text(
                            "Cadastre seu eletrodoméstico",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, bottom: 8),
                            child: Text(
                              "Nome",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Eletrodoméstico",
                                style: TextStyle(fontSize: 20)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 35,
                              width: 180,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton(
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 18),
                                    items: dropdownGiro,
                                    value: selectedGiro,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedGiro = newValue!;
                                      });
                                    }),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                        onPressed: () { Navigator.pop(context);}, 
                        child: const Text("Salvar", style: TextStyle(fontSize: 20),)),
                            ],
                          )
                        ],
                      ),
                      
                    ],
                  );
                });
            // Navigator.pushReplacement(
            //                     context,
            //                       MaterialPageRoute(
            //                         builder: (context) => const showmoda()));
          }),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: _EletroSala.map((sala) {
            cordaVoltagem() {
              if (sala.voltagem > 200) {
                return Text(
                  "${sala.voltagem.toString()} V",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 203, 150, 17)),
                );
              } else {
                return Text(
                  "${sala.voltagem.toString()} V",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 30, 110, 202)),
                );
              }
            }

            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(sala.title,
                          style: const TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500)),
                      Text(sala.comodo,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Container(child: cordaVoltagem())
                ],
              ),
            );
          }).toList()),
    );
  }
}
