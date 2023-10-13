import 'package:flutter/material.dart';
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
          leading: Image.asset(AppImages.mesaCadeiraPreta),
          title: const Text(
            "Comodos"
          ),
          subtitle: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Adicionar comodos"
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
            leading: Image.asset(AppImages.mesaJanela),
          title: const Text(
            "Cozinha"
          ),
          subtitle: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Adicionar eletrodoméstico"
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
           leading: Image.asset(AppImages.duasMesas),
          title: const Text(
            "Sala"
          ),
          subtitle: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Adicionar eletrodoméstico"
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
      ],
    );
  }
}