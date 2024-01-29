import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/basepage/basePage.dart';
import 'package:gerenciador_energia/shared/widgets/compartmentalization/containers/texrcardContainers/textCardContainer.dart';

class TextExtends extends BasePage {
  @override
  State<StatefulWidget> createState() => _TextExtendsState();
}

class _TextExtendsState extends BasePageState<TextExtends> {
  Widget body() {
    return LayoutBuilder(builder: (context, constraints) {
      return TextCardContainer(
        constraints: constraints,
        titleController: 'aaaaaaaaa',
      );
    });
  }
}
