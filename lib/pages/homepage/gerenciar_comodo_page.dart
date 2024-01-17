import 'package:flutter/material.dart';
import 'package:gerenciador_energia/models/comodos.dart';
import 'package:gerenciador_energia/shared/widgets/AppDrawer_widget.dart';

class ComodosCadastros extends StatelessWidget {
  const ComodosCadastros({super.key});
  // final List<Comodos> listacomodos;

  // List<DropdownMenuItem<String>> get dropdownItems {

  @override
  Widget build(BuildContext context) {
    final comodos = ModalRoute.of(context)?.settings.arguments as Comodos;

    // final comodofiltrado = listacomodos.where((meal) {
    //   return comodos..contains(category.id);
    // }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text("Gerenciando: ${comodos.nome}"),
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
                          "Editar ou adicionar cômodos",
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
            Card(
              color: Color.fromARGB(255, 235, 245, 235),
              elevation: 1,
              child: Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(comodos.urlImagem, fit: BoxFit.fill),
                  ),
                 
            ),
            Card(
              color:const Color.fromARGB(255, 235, 245, 235),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 30),
                  Container(
                    height: 40,
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Eletrodomésticos de ${comodos.nome}",
                        style: const TextStyle(
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
            // Implementar drag and drop
          ],
        ));
  }
}