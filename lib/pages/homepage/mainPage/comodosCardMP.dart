import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gerenciador_energia/pages/homepage/administrarComodos/cadastrar_iconButton_comodo_page.dart';
import 'package:gerenciador_energia/shared/widgets/compartmentalization/containers/texrcardContainers/textCardContainer.dart';

class ComodosCardMP extends StatelessWidget {
  const ComodosCardMP({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth * 0.98,
      height: constraints.maxHeight * 0.07,
      child: Card(
          elevation: 3,
          child: TextCardContainer(
            titleController: "Cômodo",
            constraints: constraints,
            functionOnpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CadastroComodosPage()),
              );
            },
            iconData: Icons.add,
          )),
    );
  }
}
