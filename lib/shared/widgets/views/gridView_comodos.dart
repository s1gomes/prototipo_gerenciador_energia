import 'package:flutter/material.dart';
import 'package:gerenciador_energia/data/dadosFixos.dart';
import 'package:gerenciador_energia/shared/widgets/comodosItems.dart';

class GridViewComodos extends StatelessWidget {
  const GridViewComodos({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
        height: 200,
        child: GridView(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
            children: comodosCategorias.map((comodo) {
              return ComodoItem(comodo: comodo);
            }).toList()
          ),
      );
    
  }
}