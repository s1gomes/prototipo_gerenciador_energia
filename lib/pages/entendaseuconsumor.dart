import 'package:flutter/material.dart';
import 'package:gerenciador_energia/shared/widgets/menu_lateral.dart';
import 'package:gerenciador_energia/shared/widgets/textoCards.dart';
import 'package:gerenciador_energia/shared/widgets/titulotextocards.dart';

class EntendaSeuConsumoPage extends StatefulWidget {
  const EntendaSeuConsumoPage({super.key});

  @override
  State<EntendaSeuConsumoPage> createState() => _EntendaSeuConsumoPageState();
}

class _EntendaSeuConsumoPageState extends State<EntendaSeuConsumoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Gaveta(),
      appBar: AppBar(
        title: const Text(
          "Cômodos",
          style: TextStyle(
              color: Color.fromARGB(255, 150, 140, 140), fontFamily: 'Raleway'),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
              child: SizedBox(
            width: double.infinity,
            height: 600,
            child: Column(
              children: [
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
                      TextoCards(texto: " Estes são riscos de incendio e devem ser tratatos imediatamente"),
                      TituloTextoCards(titulo: "Agende consulta com técnico eletricista"),
                      SizedBox(height: 20),
                      Text("Não identificamos nenhum eletrodoméstico causando discrepância em sua conta de energia.", textAlign: TextAlign.justify, style: TextStyle(fontSize: 18, color: Colors.red),)

                    ],
                  ),

                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
