import 'package:flutter/material.dart';
import 'package:gerenciador_energia/models/comodos.dart';
import 'package:gerenciador_energia/shared/widgets/AppDrawer_widget.dart';

class GerenciarComodosPage extends StatelessWidget {
  const GerenciarComodosPage({super.key});
  // final List<Comodos> listacomodos;

  // List<DropdownMenuItem<String>> get dropdownItems {

  @override
  Widget build(BuildContext context) {
    final comodos = ModalRoute.of(context)?.settings.arguments as Comodos;

    // final comodofiltrado = listacomodos.where((meal) {
    //   return comodos..contains(category.id);
    // }).toList();
    return LayoutBuilder(
      builder: (ctx, constraints) {
       return Scaffold(
          appBar: AppBar(
            title: Text("Gerenciando: ${comodos.nome}"),
          ),
          drawer: const AppDrawerWidget(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: constraints.maxWidth * 0.03,
                      ),
                      Container(
                           height: constraints.maxHeight * 0.060,
                           width: constraints.maxWidth * 0.75,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Editar cômodo ${comodos.nome}",
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
                        height: constraints.maxHeight * 0.3,
                        width: double.infinity,
                        child: Image.asset(comodos.urlImagem, fit: BoxFit.fill, errorBuilder: (context, error, stackTrace) {
                                return Image.asset(
                                  "assets/images/product_image_not_available.png",
                                  fit: BoxFit.cover,
                                );
                              },),
                      ),
                     
                ),
                Card(
                  color:const Color.fromARGB(255, 235, 245, 235),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: constraints.maxHeight * 0.03),
                      Container(
                        height: constraints.maxHeight * 0.060,
                        width: constraints.maxWidth * 0.75,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Eletrodomésticos",
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
                // Implementar drag and drop
              ],
            ),
          )
          );
      }
      
    );
  }
}