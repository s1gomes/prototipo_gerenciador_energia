import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/dados_cadastrais.dart';
import 'package:gerenciador_energia/pages/pageview1.dart';
import 'package:gerenciador_energia/shared/widgets/botao_elevado.dart';
import 'package:gerenciador_energia/shared/widgets/subtitulo_nu.dart';
import 'package:gerenciador_energia/shared/widgets/titulo_n.dart';

class NuLogin extends StatefulWidget {
  const NuLogin({super.key});

  @override
  State<NuLogin> createState() => _NuLoginState();
}

class _NuLoginState extends State<NuLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pushReplacement(
              context, 
                MaterialPageRoute(
                  builder: (context) => const Pageview1()));
            },
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Align(
            alignment: Alignment(-0.3, 0.0),
            child: Padding(
              padding: EdgeInsets.all(6.0),
              child: Text('Entrar', 
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: Container(
                        height: 350,
                      )),
                  ],
                  ),
                  const Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TituloN(texto: "Olá, User",
                          cor: Color.fromARGB(255, 46, 19, 91)
                          ),
                      SubtituloNu(
                        texto: "Conta NuInvest __", 
                        cor: Color.fromARGB(255, 196, 193, 193)),
                      SubtituloNu(
                        texto: "O que você deseja fazer?", 
                        cor: Colors.black),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: Container()),
                      const InkWell(
                        child: BotaoElevado(
                          corIcone: Colors.white,
                          icone: Icons.monetization_on_rounded,
                          corBack: Color.fromARGB(255, 46, 19, 91),
                          corTexto:  Color.fromARGB(255, 255, 255, 255),
                          texto: "Acessar Conta",
                          rotaBotaoElevado: DadosCadastrais(),
                          ),
                      ),
                    Expanded(child: Container()),
                      const InkWell(
                        child: BotaoElevado(
                          corIcone: Colors.black,
                          icone: Icons.lock_outline_sharp,
                          corBack: Color.fromARGB(255, 255, 255, 255),
                          corTexto:  Color.fromARGB(255, 0, 0, 0),
                          texto: "Gerar EasyToken",
                          rotaBotaoElevado: Pageview1(),
                      ),
                    )
                  ],
                )  
              ],
            ),
          ),
        ),
      ),
    );
  }
}