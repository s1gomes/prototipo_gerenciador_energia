import 'package:flutter/material.dart';
import 'package:gerenciador_energia/models/comodos.dart';
import 'package:gerenciador_energia/shared/widgets/AppDrawer_widget.dart';

class IconButtonComodosCadastros extends StatelessWidget {
  const IconButtonComodosCadastros({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text("Criar Comodo"),
        ),
        drawer: const AppDrawerWidget(),
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
                          "Adicionar cômodos",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  )
                ],
              ),
            ),
            // Card(
            //   color: Color.fromARGB(255, 235, 245, 235),
            //   elevation: 1,
            //   child: Container(
            //         height: 200,
            //         width: double.infinity,
            //         child: Image.asset(comodos.urlImagem, fit: BoxFit.fill),
            //       ),
                 
            // ),
            Card(
              color: Color.fromARGB(255, 235, 245, 235),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 30),
                  Container(
                    height: 40,
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Eletrodomésticos deste cômodo",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

// Text(
//                     "Ainda não há cômodos cadastrados",
//                     style: TextStyle(
//                       fontSize: 17,
//                     ),
//                     textAlign: TextAlign.center,
                  // ),