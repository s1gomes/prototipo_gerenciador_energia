import 'package:flutter/material.dart';
import 'package:gerenciador_energia/data/models/eletrodomesticos_sala_model.dart';
import 'package:gerenciador_energia/shared/widgets/app_imagens.dart';
import 'package:gerenciador_energia/shared/widgets/menu_lateral.dart';

class EletrodomesticosSala extends StatelessWidget {
  EletrodomesticosSala({super.key});
  
   final _EletroSala = [
    EletroSala(
      id: '1',
      title: 'Televisão',
      icone: "assets/images/televisao.jpg",
      voltagem: 120,
      comodo: 'Sala'
    ),
    EletroSala(
      comodo: 'Sala',
      icone: "assets/images/ventilador.jpg",
      id: '2',
      title: 'Ventilador',
      voltagem: 120
    ),
  ];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Gaveta(),
      appBar: AppBar(
        title: const Text('Eletrodomésticos da sala'),
      ),
      body:
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
          _EletroSala.map((sala) {
             cordaVoltagem () {
                  if (sala.voltagem > 200) {
                    return Text(sala.voltagem.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 203, 150, 17)
                    ),
                    );
                  } else {
                    return Text(sala.voltagem.toString(),
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
                  Container(
                    child:  Image.asset(sala.icone.toString(),
                    height: 50,
                    width: 50
                    )
                  ),
                  Column(
                    children: <Widget>[
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(child: cordaVoltagem())
                              ],
                            )
                    ],
                  )
                ],

              ),
            );
        }).toList()
      ),
    );
  }
}