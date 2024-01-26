import 'package:flutter/material.dart';
import 'package:gerenciador_energia/data/db/db.dart';
import 'package:gerenciador_energia/pages/homepage/mainPage/home_pageMP.dart';
import 'package:gerenciador_energia/shared/widgets/AppDrawer_widget.dart';
import 'package:gerenciador_energia/shared/widgets/adaptatives/adaptativeButton.dart';
import 'package:gerenciador_energia/shared/widgets/adaptatives/adaptativeTextField.dart';
import 'package:gerenciador_energia/shared/widgets/compartmentalization/cards/eletrodomesticosCard.dart';
import 'package:gerenciador_energia/shared/widgets/compartmentalization/containers/imageContainers/CadastrarImagemCotainer.dart';
import 'package:gerenciador_energia/shared/widgets/compartmentalization/containers/texrcardContainers/textCardContainer.dart';
import 'package:gerenciador_energia/shared/widgets/dropdownMenus/imageDropdownMenu.dart';

// enum Imagens {
//   cozinha("cozinha", "assets/images/cozinha.jpg"),
//   duasMesas("duasMesas", "assets/images/duas_mesas.jpg"),
//   graficoBarras("graficoBarras", "assets/images/grafico1.png"),
//   graficoLinha("graficoLinha", "assets/images/grafico2.png"),
//   mesaCadeiraPreta("mesaCadeiraPreta", "assets/images/mesa_cadeira_preta.jpg"),
//   mesaJanela("mesaJanela", "assets/images/mesa_com_janela.jpg"),
//   plantaCasa("plantaCasa", "assets/images/planta.jpeg"),
//   productImageNoAvailable("productImageNoAvailable",
//       "assets/images/product_Fimage_not_available.png"),
//   sala("sala", "assets/images/sala.jpg"),
//   televisao("televisao", "assets/images/televisao.jpg"),
//   ventilador("ventilador", "assets/images/ventilador.jpg");

//   const Imagens(this.label, this.url);
//   final String label;
//   final String url;
// }

enum ImagensSubstitutas {
plantaCasa("Planta da Casa", "assets/images/planta.jpeg"),
productImageNoAvailable("productImageNotAvailable",
      "assets/images/product_Fimage_not_available.png");
  
  const ImagensSubstitutas(this.label, this.url);
  final String label;
  final String url;
}

enum ImagensComodos {
  cozinha("Cozinha", "assets/images/cozinha.jpg"),
  mesaCadeiraPreta("Sala de jantar", "assets/images/mesa_cadeira_preta.jpg"),
  mesaJanela("Varanda", "assets/images/mesa_com_janela.jpg"),
  plantaCasa("Planta da Casa", "assets/images/planta.jpeg"),
  sala("Sala", "assets/images/sala.jpg");

  const ImagensComodos(this.label, this.url);
  final String label;
  final String url;
}

class CadastroComodosPage extends StatefulWidget {
  const CadastroComodosPage({super.key});

  @override
  State<CadastroComodosPage> createState() => _CadastroComodosPageState();
}

class _CadastroComodosPageState extends State<CadastroComodosPage> {
  // ImagensComodos? selectedImage;
  
  ImagensComodos? selectedImage = ImagensComodos.plantaCasa;
  // ImagensSubstitutas? substituteImage; later

  // var selectedImage = ImagensComodos;

  final titleController = TextEditingController();
  final imageController = TextEditingController();

  // _imagemSelecionada() {
  //   if (selectedImage == null) {
  //     selectedImage = ImagensComodos.productImageNoAvailable;
  //     return selectedImage?.url;
  //   } 
  // }

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
                  child: TextCardContainer(
                      constraints: constraints,
                      titleController: "Cômodo " + titleController.text,
                      functionOnpressed: () {
                        setState(() {
                          hasComodo = false;
                        });
                      },
                      iconData: Icons.edit),
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
                          color: const Color.fromARGB(255, 235, 245, 235),
                          elevation: 1,
                          child: CadastrarImageContainer(
                            constraints: constraints,
                            imageController: selectedImage?.url,
                          ))
                      : Column(
                          children: [
                            // futura implementação: listar todos os eletrodomésticos em uma categoria
                            adaptativeTextField(
                                keyboardType: TextInputType.text,
                                controller: titleController,
                                label: 'Nome: '),

                            // implementar dropdown com imagens fixas de eletrodomésticos
                            SizedBox(height: constraints.maxHeight * 0.02),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      child: DropdownMenu(
                                          initialSelection:
                                              ImagensComodos.plantaCasa,
                                          controller: imageController,
                                          requestFocusOnTap: true,
                                          label: const Text('Cômodo'),
                                          onSelected: (ImagensComodos? url) {
                                            setState(() {
                                              selectedImage = url;
                                            });
                                          },
                                          dropdownMenuEntries:
                                              ImagensComodos.values.map<
                                                      DropdownMenuEntry<
                                                          ImagensComodos>>(
                                                  (ImagensComodos url) {
                                            return DropdownMenuEntry<
                                                ImagensComodos>(
                                              value: url,
                                              label: url.label,
                                              enabled: url.label !=
                                                  'Selecionar imagem ',
                                            );
                                          }).toList()),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: 110,
                                    width: 110,
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 1),
                                    ),
                                    alignment: Alignment.center,
                                    child: imageController.text.isEmpty
                                        ? Text('Informe a Url')
                                        : FittedBox(
                                            child: Image.asset(
                                              selectedImage!.url,
                                              fit: BoxFit.cover,
                                              errorBuilder:
                                                  (context, error, stackTrace) {
                                                return Image.asset(
                                                  "assets/images/product_image_not_available.png",
                                                  fit: BoxFit.cover,
                                                );
                                              },
                                            ),
                                          ))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                AdaptativeButton(
                                  label: 'Criar cômodo',
                                  onPressed: () async {
                                    await ComodoBancodeDados.instance
                                        .salvarComodos(titleController.text,
                                            selectedImage!.url)
                                        .then(
                                      (value) {
                                        setState(() {
                                          hasComodo = true;
                                        });
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            // Row(
                            //   crossAxisAlignment: CrossAxisAlignment.end,
                            //   children: [
                            //     Expanded(
                            //       child: TextFormField(
                            //         decoration: InputDecoration(
                            //             labelText: 'Url da imagem',
                            //             labelStyle:
                            //                 const TextStyle(fontSize: 18),
                            //             enabledBorder: UnderlineInputBorder(
                            //                 borderSide: BorderSide(
                            //                     color: Theme.of(context)
                            //                         .primaryColor))),
                            //         // focusNode: _imageURLFocus,
                            //         controller: imageUrlController,
                            //         textInputAction: TextInputAction.done,
                            //         // onFieldSubmitted: (_) => _submitForm(),
                            //       ),
                            //     ),
                            //     Container(
                            //         height: 100,
                            //         width: 100,
                            //         margin: const EdgeInsets.only(
                            //             top: 10, left: 10),
                            //         decoration: BoxDecoration(
                            //           border: Border.all(
                            //               color: Colors.grey, width: 1),
                            //         ),
                            //         alignment: Alignment.center,
                            //         child: imageUrlController.text.isEmpty
                            //             ? Text('Informe a Url')
                            //             : FittedBox(
                            //                 child: Image.network(
                            //                   imageUrlController.text,
                            //                   fit: BoxFit.cover,
                            //                   errorBuilder:
                            //                       (context, error, stackTrace) {
                            //                     return Image.asset(
                            //                       "assets/images/product_image_not_available.png",
                            //                       fit: BoxFit.cover,
                            //                     );
                            //                   },
                            //                 ),
                            //               ))
                            //   ],
                            // ),
                          ],
                        ),
                ),
                Card(
                    color: const Color.fromARGB(255, 235, 245, 235),
                    child: EletrodomesticosCard(constraints: constraints)),
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
