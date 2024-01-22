import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gerenciador_energia/data/db/db.dart';
import 'package:gerenciador_energia/models/comodos.dart';
import 'package:gerenciador_energia/pages/homepage/administrarComodos/cadastrar_iconButton_comodo_page.dart';
import 'package:gerenciador_energia/pages/homepage/administrarComodos/gerenciar_comodo_page.dart';
import 'package:gerenciador_energia/pages/homepage/mainPage/comodosCardMP.dart';
import 'package:gerenciador_energia/pages/homepage/mainPage/eletrodomesticosUsadosCardMP.dart';
import 'package:gerenciador_energia/pages/homepage/mainPage/gridviewComodos.dart';
import 'package:gerenciador_energia/shared/widgets/compartmentalization/containers/texrcardContainers/textCardContainer.dart';
import 'package:gerenciador_energia/shared/widgets/compartmentalization/text/textoCardAtualizacao.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  // final Future<SharedPreferences> SPidComodo = SharedPreferences.getInstance();

  // Widget _getIconButton(IconData icon, Function() fn) {
  //   return Platform.isIOS
  //       ? GestureDetector(onTap: fn, child: Icon(icon))
  //       : IconButton(icon: Icon(icon), onPressed: fn);
  // }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          body: Column(
        children: [
          ComodosCardMP(constraints: constraints),
          SizedBox(height: constraints.maxHeight * 0.015),
          ComodosGridView(constraints: constraints),
          EletrodomesticosMaisUsadosCard(constraints: constraints)
        ],
      ));
    });
  }
}
