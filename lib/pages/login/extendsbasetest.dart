import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/basePage.dart';
import 'package:gerenciador_energia/pages/homepage/mainPage/comodosCardMP.dart';
import 'package:gerenciador_energia/pages/homepage/mainPage/eletrodomesticosUsadosCardMP.dart';
import 'package:gerenciador_energia/pages/homepage/mainPage/gridviewComodos.dart';

class TestExtends extends BasePage {
  const TestExtends({super.key});

  @override
  State<StatefulWidget> createState() => _TestExtendsState();
}

class _TestExtendsState extends BasePageState<TestExtends> {
  
  final pageTitle = "Cômodo";

  @override
  set pageTitle(String _pageTitle) {
    // TODO: implement pageTitle
    super.pageTitle = _pageTitle;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          body: Column(
        children: [
          // Container(
          //   child: headCardComodos(constraints, "Cômodos", Icons.add,  ),
          // ),
          ComodosCardMP(constraints: constraints),
          SizedBox(height: constraints.maxHeight * 0.015),
          // Container(
          //   child: boxComodos(),
          // ),
          // Container(
          //   child: headCardComodos(),
          // ),
          // Container(
          //   child: boxEletronics(),
          // ),
          ComodosGridView(constraints: constraints),
          EletrodomesticosMaisUsadosCard(constraints: constraints)
        ],
      ));
    });
  }
}
