import 'package:flutter/material.dart';
import 'package:gerenciador_energia/data/db/db.dart';
import 'package:gerenciador_energia/pages/homepage/administrarComodos/gerenciar_comodo_page.dart';

enum FilterOptions { Deletar, Editar }

class ComodosGridView extends StatefulWidget {
  const ComodosGridView({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  State<ComodosGridView> createState() => _ComodosGridViewState();
}

class _ComodosGridViewState extends State<ComodosGridView> {
  @override
  Widget build(BuildContext context) {
    void _selectComodo(
      BuildContext context,
      comodoImageUrl,
      comodoNome,
      comodoId,
    ) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => GerenciarComodosPage(
                  comodoId: comodoId,
                  comodoImageUrl: comodoImageUrl,
                  comodoNome: comodoNome,
                )),
      );
    }

    return FutureBuilder(
        future: ComodoBancodeDados.instance.recuperarTodos(),
        builder: (context, snapshot) {
          var dados = snapshot.data;
          if (!snapshot.hasData) {
            return Text('Ainda não há comodos cadastrados');
          }
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 3,
              left: 15,
              right: 15,
              top: 3
            ),
            child: Container(
              height: widget.constraints.maxHeight * 0.4,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: dados!.length,
                itemBuilder: (context, index) {
                  String comodoImageUrl =
                      dados[index]['urlImageComodo'].toString();
                  String comodoNome = dados[index]['nomeComodo'].toString();
                  int comodoId = dados[index]['idComodo'].toInt();
          
                  return InkWell(
                    onTap: () => _selectComodo(
                      context,
                      comodoImageUrl,
                      comodoNome,
                      comodoId,
                    ),
                    splashColor: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(comodoImageUrl),
                            fit: BoxFit.fill,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4), BlendMode.dstATop),
                          ),
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              colors: [
                                Theme.of(context).cardColor,
                                Theme.of(context).canvasColor,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight)),
                      child: Container(
                        // height: 300,
                        alignment: Alignment.bottomRight,
                        color: const Color.fromRGBO(225, 218, 218, 0.306),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              comodoNome,
                              style: Theme.of(context).textTheme.titleSmall,
                              textAlign: TextAlign.left,
                            ),
                            PopupMenuButton(
                              itemBuilder: (_) => [
                                const PopupMenuItem(
                                  value: FilterOptions.Deletar,
                                  child: Text('Deletar cômodo'),
                                ),
                                // implementar tela de confirmação pra deletar
                                const PopupMenuItem(
                                  value: FilterOptions.Editar,
                                  child: Text('Editar Cômodo'),
                                ),
                              ],
                              onSelected: (FilterOptions selectedValue) {
                                setState(() {
                                  if (selectedValue == FilterOptions.Deletar) {
                                    ComodoBancodeDados.instance
                                        .deletarCampo(comodoId);
                                  } else {
                                    _selectComodo(
                                      context,
                                      comodoImageUrl,
                                      comodoNome,
                                      comodoId,
                                    );
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        });
  }
}
