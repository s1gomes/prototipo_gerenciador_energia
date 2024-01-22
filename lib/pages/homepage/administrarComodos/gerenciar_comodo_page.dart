import 'package:flutter/material.dart';
import 'package:gerenciador_energia/data/db/db.dart';
import 'package:gerenciador_energia/pages/homepage/mainPage/home_pageMP.dart';
import 'package:gerenciador_energia/shared/widgets/AppDrawer_widget.dart';
import 'package:gerenciador_energia/shared/widgets/adaptatives/adaptativeButton.dart';
import 'package:gerenciador_energia/shared/widgets/adaptatives/adaptativeTextField.dart';
import 'package:gerenciador_energia/shared/widgets/compartmentalization/cards/eletrodomesticosCard.dart';
import 'package:gerenciador_energia/shared/widgets/compartmentalization/containers/imageContainers/GerenciarImageContainer.dart';

class GerenciarComodosPage extends StatefulWidget {
  const GerenciarComodosPage(
      {super.key,
      required this.comodoImageUrl,
      required this.comodoNome,
      required this.comodoId});
  final String comodoImageUrl;
  final String comodoNome;
  final int comodoId;

  @override
  State<GerenciarComodosPage> createState() => _GerenciarComodosPageState();
}

class _GerenciarComodosPageState extends State<GerenciarComodosPage> {
  final titleController = TextEditingController();
  final imageUrController = TextEditingController();

  bool hasComodo = true;
  bool nomeUpdate = false;
  bool imageUpdate = false;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Scaffold(
          appBar: AppBar(
            title: nomeUpdate
                ? Text("Gerenciando: ${titleController.text}")
                : Text("Gerenciando: ${widget.comodoNome}"),
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
                                nomeUpdate
                                    ? "Editar cômodo ${titleController.text}"
                                    : "Editar cômodo ${widget.comodoNome}",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                                textAlign: TextAlign.center,
                              ))),
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
                            child: GerenciarImageContainer(
                              constraints: constraints,
                              imageController: imageUrController.text,
                              imageDatabase: widget.comodoImageUrl,
                              imageUpdate: imageUpdate,
                            ))
                        : Column(
                            children: [
                              adaptativeTextField(
                                  keyboardType: TextInputType.text,
                                  controller: titleController,
                                  label: 'Nome: '),
                              adaptativeTextField(
                                  keyboardType: TextInputType.text,
                                  controller: imageUrController,
                                  label: 'Url da imagem'),
                              // implementar dropdown com imagens fixas de eletrodomésticos
                              SizedBox(height: constraints.maxHeight * 0.02),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  AdaptativeButton(
                                    label: 'Atualizar cômodo',
                                    onPressed: () async {
                                      await ComodoBancodeDados.instance
                                          .atualizarComodo(
                                              widget.comodoId,
                                              titleController.text,
                                              imageUrController.text)
                                          .then(
                                        (value) {
                                          setState(() {
                                            hasComodo = true;
                                            nomeUpdate = true;
                                            imageUpdate = true;
                                          });
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          )),
                Card(
                    color: const Color.fromARGB(255, 235, 245, 235),
                    child: EletrodomesticosCard(constraints: constraints)),
                // Implementar drag and drop
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
    });
  }
}
