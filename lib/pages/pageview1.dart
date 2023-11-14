import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/card_page.dart';
import 'package:gerenciador_energia/pages/image_assets.dart';
import 'package:gerenciador_energia/pages/placeholder_estatistica.dart';
import 'package:gerenciador_energia/pages/selecionarEletrodomesticos.dart';
import 'package:gerenciador_energia/pages/tarefa_page.dart';
import 'package:gerenciador_energia/shared/widgets/menu_lateral.dart';

class Pageview1 extends StatefulWidget {
  const Pageview1 ({Key? key}) : super(key: key);

  @override
  State<Pageview1> createState() => _PageView1();
}

class _PageView1 extends State<Pageview1> {
  PageController controller = PageController(initialPage: 0);
  var _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Gaveta(),
      appBar: AppBar(
        title: const Text("Cômodos", 
        style: TextStyle(color: Color.fromARGB(255, 150, 140, 140), fontFamily: 'Raleway'), 
        ),
      ),
      body: 
        Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
                children:  [
                  const ImageAssetsPage(),
                  const CardPage(),
                  PlaceholderEstatistica()
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              label: "Cadastro",
              icon: 
              Icon(Icons.book)
              ),
               BottomNavigationBarItem(
              label: "Acompanhamento",
              icon: 
              Icon(Icons.description)
              ),
              BottomNavigationBarItem(
              label: "Estatística",
              icon: 
              Icon(Icons.auto_graph_outlined)
              )
            ],
          
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 118, 11, 11),
          onTap: (value) {
            controller.jumpToPage(value);
        },
      ),
    );
  }
}