import 'package:flutter/material.dart';
import 'package:gerenciador_energia/models/comodos.dart';
import 'package:gerenciador_energia/shared/widgets/AppDrawer_widget.dart';
import 'package:gerenciador_energia/shared/widgets/adaptatives/adaptativeButton.dart';
import 'package:gerenciador_energia/shared/widgets/adaptatives/adaptativeTextField.dart';

class IconButtonComodosCadastros extends StatefulWidget {
  const IconButtonComodosCadastros({super.key, required this.onSubmit});
  final void Function(String, String) onSubmit;

  @override
  State<IconButtonComodosCadastros> createState() =>
      _IconButtonComodosCadastrosState();
}

class _IconButtonComodosCadastrosState
    extends State<IconButtonComodosCadastros> {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  _submitForm() {
    final nome = titleController.text;
    final urlImage = titleController.text;

    if (nome.isEmpty || urlImage.isEmpty == null) {
      return;
    }

    widget.onSubmit(nome, urlImage);
  }

  @override
  Widget build(BuildContext context) {
    bool comodoHasName = false;

    return LayoutBuilder(builder: ((context, constraints) {
      return Scaffold(
          appBar: AppBar(
            title: const Text("Criar Comodo"),
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
                      width: constraints.maxWidth * 0.09,
                    ),
                    Container(
                        height: 40,
                        width: constraints.maxWidth * 0.7,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Cômodo",
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

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 10,
                  top: 8,
                ),
                child: Column(
                  children: [
                    // futura implementação: listar todos os eletrodomésticos em uma categoria
                    adaptativeTextField(
                        keyboardType: TextInputType.text,
                        controller: titleController,
                        onSubmitted: (_) => _submitForm(),
                        label: 'Nome: '),
                    adaptativeTextField(
                        keyboardType: TextInputType.text,
                        controller: valueController,
                        onSubmitted: (_) => _submitForm(),
                        label: 'Url da imagem'),
                    // implementar dropdown com imagens fixas de eletrodomésticos
                  ],
                ),
              ),
              // Card(
              //   color: Color.fromARGB(255, 235, 245, 235),
              //   elevation: 1,
              //   child: Container(
              //         height: 200,
              //         width: double.infinity,
              //         child: Image.asset(comodos.urlImageImagem, fit: BoxFit.fill),
              //       ),

              // ),
              Card(
                color: const Color.fromARGB(255, 235, 245, 235),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: constraints.maxWidth * 0.2),
                    Container(
                      height: 40,
                      width: constraints.maxWidth * 0.6,
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AdaptativeButton(
                    label: 'Criar cômodo',
                    onPressed: _submitForm,
                  ),
                ],
              ),
            ],
          ));
    }));
  }
}

// Text(
//                     "Ainda não há cômodos cadastrados",
//                     style: TextStyle(
//                       fontSize: 17,
//                     ),
//                     textAlign: TextAlign.center,
                  // ),