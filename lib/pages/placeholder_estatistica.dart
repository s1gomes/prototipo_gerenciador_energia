import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/entendaseuconsumor.dart';
import 'package:gerenciador_energia/shared/widgets/app_imagens.dart';
import 'package:gerenciador_energia/shared/widgets/textoCards.dart';
import 'package:gerenciador_energia/shared/widgets/titulotextocards.dart';

class PlaceholderEstatistica extends StatelessWidget {
  PlaceholderEstatistica({super.key});

  // final Future<SharedPreferences> titulo = SharedPreferences.getInstance();
  // final Future<SharedPreferences> comodo = SharedPreferences.getInstance();
  // final Future<SharedPreferences> voltagem = SharedPreferences.getInstance();

  //  final _EletroSala = [
  //   EletroSala(
  //     title: titulo.toString(),
  //     voltagem:
  // voltagem.toString(),
  //     comodo: comodo.toString()
  //   ),
  // ];
//  final _EletroSala = [
//     EletroSala(
//       comodo: 'Sala',
//       title: 'Ventilador',
//       voltagem: 220,
//     ),
//     EletroSala(
//       comodo: 'Sala',
//       title: 'Televisão',
//       voltagem: 110,
//     ),
//   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Card(
                child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Seu consumo mensal",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 1.0),
                child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Image.asset(AppImages.grafico1, fit: BoxFit.cover),
                ),
              ),
              const Card(
                child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Consumo por cômodo",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 1.0),
                child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Image.asset(AppImages.grafico2, fit: BoxFit.cover),
                ),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    
                      onPressed: () {
                        showModalBottomSheet(context: context, builder: (BuildContext bc) {
                          return const Wrap(children: [
            Card(
              child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 20),
                Center(
                  child: Text("Possíveis causas de alterações",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w700)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextoCards(texto: "Podem ocorrer pela má instalação da fiação da residência:"),
                      TituloTextoCards(titulo: "Escape de energia"),
                      TituloTextoCards(titulo: "Sobreaquecimento dos fios"),
                      TextoCards(texto: " Estes são riscos de incendio e devem ser tratatos imediatamente."),
                      TituloTextoCards(titulo: "Agende consulta com técnico eletricista."),
                      SizedBox(height: 20),
                      Text("Não identificamos nenhum eletrodoméstico causando discrepância em sua conta de energia.", textAlign: TextAlign.justify, style: TextStyle(fontSize: 18, color: Colors.red),)

                    ],
                  ),

                )
              ],
            ),
          ))
                          ],);
                        });
                      // Navigator.pushReplacement(
                      //         context, 
                      //           MaterialPageRoute(
                      //             builder: (context) => const EntendaSeuConsumoPage()));
              },
                      child: const Text(
                        "Entenda seu consumo",
                        style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 0, 0)),
                      )
                      ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add_to_queue_outlined,
//         ),
//         onPressed: () {
//           showModalBottomSheet(context: context,
//             builder: (BuildContext bc) {
//               return const Wrap(
//                 children: [
//                   SizedBox(
//                     height: 50,
//                     width: double.infinity,
//                     child: Text("Cadastre seu eletrodoméstico",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500

//                     ),
//                     textAlign: TextAlign.center,
//                     )
//                     ),

//                   ],
//               );
//           });
//           // Navigator.pushReplacement(
//           //                     context,
//           //                       MaterialPageRoute(
//           //                         builder: (context) => const showmoda()));
//       }),
//       body:

//        Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children:
//           _EletroSala.map((sala) {

//              cordaVoltagem () {
//                   if (sala.voltagem > 200) {
//                     return Text("${sala.voltagem.toString()} V",
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w700,
//                       color: Color.fromARGB(255, 203, 150, 17)
//                     ),
//                     );
//                   } else {
//                     return Text("${sala.voltagem.toString()} V",
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w700,
//                       color: Color.fromARGB(255, 30, 110, 202)
//                     ),
//                     );
//                   }
//                  }
//             return Card(

//               child: Row(

//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   Column(

//                     children: <Widget>[
//                       Text("Placeholder"),
//                       Text(sala.title,
//                           style: const TextStyle(
//                               fontSize: 19,
//                               fontWeight: FontWeight.w500
//                         )
//                       ),
//                       Text(sala.comodo,
//                             style: const TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500
//                             )),
//                     ],
//                   ),
//                   Container(child: cordaVoltagem())
//                 ],
//               ),
//             );
//         }).toList()
//       ),
