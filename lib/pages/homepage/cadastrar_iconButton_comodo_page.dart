import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/homepage/home_page.dart';
import 'package:gerenciador_energia/shared/widgets/AppDrawer_widget.dart';
import 'package:gerenciador_energia/shared/widgets/adaptatives/adaptativeButton.dart';
import 'package:gerenciador_energia/shared/widgets/adaptatives/adaptativeTextField.dart';

class CadastroComodosPage extends StatefulWidget {
  const CadastroComodosPage({super.key, required this.onSubmit});
  final void Function(String, String) onSubmit;

  @override
  State<CadastroComodosPage> createState() =>
      _CadastroComodosPageState();
}

class _CadastroComodosPageState
    extends State<CadastroComodosPage> {
  final titleController = TextEditingController();
  final imageUrController = TextEditingController();

  _submitForm() {
    final nome = titleController.text;
    final urlImage = imageUrController.text;

    if (nome.isEmpty || urlImage.isEmpty == null) {
      return;
    }

    widget.onSubmit(nome, urlImage);
  }

  bool hasComodo = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      return Scaffold(
          appBar: AppBar(
            title: const Text("Criar Comodo"),
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
                        width: constraints.maxWidth * 0.09,
                      ),
                      Container(
                          height: constraints.maxHeight * 0.05,
                          width: constraints.maxWidth * 0.7,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Cômodo ${titleController.text}",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            hasComodo = false;
                          });
                        },
                        icon: const Icon(Icons.edit),
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
                  child: hasComodo
                      ? Card(
                          color: Color.fromARGB(255, 235, 245, 235),
                          elevation: 1,
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            child: Image.asset(imageUrController.text,
                                fit: BoxFit.fill, 
                                errorBuilder: (context, error, stackTrace) {
                                return Image.asset(
                                  "assets/images/product_image_not_available.png",
                                  
                                  fit: BoxFit.cover,
                                );
                              },),
                          ),
                        )
                      : Column(
                          children: [
                            // futura implementação: listar todos os eletrodomésticos em uma categoria
                            adaptativeTextField(
                                keyboardType: TextInputType.text,
                                controller: titleController,
                                onSubmitted: (_) => _submitForm(),
                                label: 'Nome: '),
                            adaptativeTextField(
                                keyboardType: TextInputType.text,
                                controller: imageUrController,
                                onSubmitted: (_) => _submitForm(),
                                label: 'Url da imagem'),
                            // implementar dropdown com imagens fixas de eletrodomésticos
                            SizedBox(height: constraints.maxHeight * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                AdaptativeButton(
                                  label: 'Criar cômodo',
                                  onPressed: () async {
                                    await _submitForm().then(setState(
                                      () {
                                        hasComodo = true;
                                      },
                                    ));
                                  },
                                ),
                              ],
                            ),
                            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Url da imagem',
                        labelStyle: const TextStyle(fontSize: 18),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor))),
                    // focusNode: _imageURLFocus,
                    controller: imageUrController,
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (_) => _submitForm(),
                  ),
                ),
                Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    alignment: Alignment.center,
                    child: imageUrController.text.isEmpty
                        ? Text('Informe a Url')
                        : FittedBox(
                            child: Image.network(
                              imageUrController.text,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Image.asset(
                                  "assets/images/product_image_not_available.png",
                                  fit: BoxFit.cover,
                                );
                              },
                            ),
                          ))
              ],
            ),
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
                      SizedBox(width: constraints.maxWidth * 0.04),
                      Container(
                        height: constraints.maxHeight * 0.05,
                        width: constraints.maxWidth * 0.7,
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
                SizedBox(height: constraints.maxHeight * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    AdaptativeButton(
                      label: 'Concluir',
                      onPressed: () {
                        
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                    ),
                  ],
                ),
              ],
            ),
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