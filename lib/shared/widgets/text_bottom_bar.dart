import 'package:flutter/material.dart';

class TextBarraBottom extends StatelessWidget {
  const TextBarraBottom({super.key, required this.texto, required this.icone});
  final String texto;
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      
    );
  }
}