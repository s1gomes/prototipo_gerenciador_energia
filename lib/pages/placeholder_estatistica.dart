import 'package:flutter/material.dart';
import 'package:gerenciador_energia/data/models/eletrodomesticos_sala_model.dart';
import 'package:gerenciador_energia/pages/image_assets.dart';
import 'package:gerenciador_energia/pages/pageview1.dart';
import 'package:gerenciador_energia/shared/widgets/app_imagens.dart';
import 'package:gerenciador_energia/shared/widgets/menu_lateral.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlaceholderEstatistica extends StatelessWidget {
  PlaceholderEstatistica({super.key});

  final Future<SharedPreferences> titulo = SharedPreferences.getInstance();  
  final Future<SharedPreferences> comodo = SharedPreferences.getInstance();  
  final Future<SharedPreferences> voltagem = SharedPreferences.getInstance();  

  //  final _EletroSala = [
  //   EletroSala(
  //     title: titulo.toString(),
  //     voltagem: voltagem.toString(),
  //     comodo: comodo.toString()
  //   ),
  // ];
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
      
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_to_queue_outlined,
        ),
        onPressed: () {
          showModalBottomSheet(context: context, 
            builder: (BuildContext bc) {
              return const Wrap(
                children: [
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Text("Cadastre seu eletrodoméstico",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500

                    ),
                    textAlign: TextAlign.center,
                    )
                    ),
                    
                  ],
              );
          });
          // Navigator.pushReplacement(
          //                     context, 
          //                       MaterialPageRoute(
          //                         builder: (context) => const showmoda()));
      }),
      body:
      
       Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: 
          _EletroSala.map((sala) {
            
             cordaVoltagem () {
                  if (sala.voltagem > 200) {
                    return Text("${sala.voltagem.toString()} V",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 203, 150, 17)
                    ),
                    );
                  } else {
                    return Text("${sala.voltagem.toString()} V",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 30, 110, 202)
                    ),
                    );
                  }
                 }
            return Card(

              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    
                    children: <Widget>[
                      Text("Placeholder"),
                      Text(sala.title,
                          style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500
                        )
                      ),
                      Text(sala.comodo,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            )),
                    ],
                  ),
                  Container(child: cordaVoltagem())
                ],
              ),
            );
        }).toList()
      ),
    );
  }
}