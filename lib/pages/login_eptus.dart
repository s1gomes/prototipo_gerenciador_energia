import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/pageview1.dart';
import 'package:gerenciador_energia/shared/widgets/app_imagens.dart';
import 'package:gerenciador_energia/shared/widgets/card_page_login.dart';
import 'package:gerenciador_energia/shared/widgets/texto_rodape.dart';
class TelaLoginEptus extends StatefulWidget {
  const TelaLoginEptus({super.key});

// realizar conexão com o api
  @override
  State<TelaLoginEptus> createState() => _TelaLoginEptusState();
}
// passar as imagens no lugar dos containers
class _TelaLoginEptusState extends State<TelaLoginEptus> {

  @override
  Widget build(BuildContext context) {
    
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 239, 223),
        body: SingleChildScrollView(
          child: Container(
            width: largura,
            height: altura,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                     // fundo
                  SizedBox(
                    height: altura,
                    width: largura,
                    child: 
                      Image.asset(AppImages.fundoLogin, fit: BoxFit.cover),
                  ),
                  // cabeçalho 
                  Container(
                    height: altura,
                    width: largura,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(AppImages.cabecalhoLogin),
                      fit: BoxFit.fill),
                    )
                  ),
                  SizedBox(
                     height: 300,
                      width: double.infinity,
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back,
                        color: Color.fromARGB(255, 0, 0, 0)),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context, 
                              MaterialPageRoute(
                                builder: (context) => const Pageview1()));
                                },
                              ),
                            ],   
                          )
                        ),
                // rodapé
                
                    Positioned(
                      bottom: 0.0,
                      child: Container(
                        width: largura,
                        color: const Color.fromRGBO(23, 33, 42, 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [ 
                          Padding(
                            padding: const EdgeInsets.only(left: 16, bottom: 19, right: 16),
                            child: SizedBox( 
                              height: 130,  
                              width: 130,   
                              child: Image.asset(
                                AppImages.logoPrataLogin,
                                  scale: 17,
                                  alignment: Alignment.centerLeft
                              ),
                            ),
                          ),
                        ]
                      ),
                    ),
                  ),
                    Positioned(
                      top: altura * 0.20,
                      right: 30,
                      left: 30,
                      child: const CardLogin()
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}