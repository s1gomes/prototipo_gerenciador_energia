import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/selecionarEletrodomesticos.dart';
import 'package:gerenciador_energia/shared/widgets/app_imagens.dart';

class ImageAssetsPage extends StatefulWidget {
  const ImageAssetsPage({super.key});

  @override
  State<ImageAssetsPage> createState() => _ImageAssetsPageState();
}

class _ImageAssetsPageState extends State<ImageAssetsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.asset(AppImages.planta),
          title: const Text(
            "Cômodos"
          ),
          subtitle: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Adicionar cômodos"
                ),
              Text(
                "Excluir"
              )  
            ],
          ),
          trailing: PopupMenuButton<String>(
            onSelected:  (menu) {
              if (menu == "opcao1") {

              }
            },
            itemBuilder: (BuildContext bc) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: "opcao1",
                  child: Text("Opção 1"),
                )
              ];
            },
          ),
        ),
         ListTile(
            leading: Image.asset(AppImages.cozinha, scale: 5),
          title: const Text(
            "Cozinha"
          ),
          subtitle: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Adicionar item"
                ),
              Text(
                "Excluir"
              )  
            ],
          ),
          trailing: PopupMenuButton<String>(
            onSelected:  (menu) {
              if (menu == "opcao1") {

              }
            },
            itemBuilder: (BuildContext bc) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: "opcao1",
                  child: Text("Opção 1"),
                )
              ];
            },
          ),
        ),
         ListTile(
           leading: Image.asset(AppImages.sala, scale: 5.4),
          title: const Text(
            "Sala"
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
              onPressed: () {
                    Navigator.pushReplacement(
                        context, 
                          MaterialPageRoute(
                            builder: (context) => EletrodomesticosSala()));
                  },
              child: const Text(
                "Adicionar eletrodoméstico"
                )),
            ],
          ),
          trailing: PopupMenuButton<String>(
            onSelected:  (menu) {
              if (menu == "excluir") {

              }
            },
            itemBuilder: (BuildContext bc) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: "excluir",
                  child: Text("Excluir cômodo"),
                )
              ];
            },
          ),
        ),
      ],
    );
  }
}