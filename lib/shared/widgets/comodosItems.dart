import 'package:flutter/material.dart';
import 'package:gerenciador_energia/models/comodos.dart';
import 'package:gerenciador_energia/utils/app_routes.dart';

class ComodoItem extends StatelessWidget {
  const ComodoItem({super.key, required this.comodo});
  final Comodos comodo;

  void _selectComodo(BuildContext context) {
    Navigator.of(context)
        .pushNamed(AppRoutes.GERENCIARCOMODO, arguments: comodo);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectComodo(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(comodo.urlImagem), fit: BoxFit.fill, colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),),
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [Theme.of(context).cardColor, Theme.of(context).canvasColor, ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child:
            Container(
              alignment: Alignment.bottomRight,
              color: Color.fromRGBO(225, 218, 218, 0.306),
              child: Text(comodo.nome, style: Theme.of(context).textTheme.titleSmall, textAlign: TextAlign.left,)),
      ),
    );
  }
}
