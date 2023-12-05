import 'package:flutter/material.dart';

class TextoCards extends StatelessWidget {
  const TextoCards({super.key, required this.texto});
  final String texto;

  @override
  Widget build(BuildContext context) {
    return  Text(
      texto,
      textAlign: TextAlign.justify,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.black),
    );
  }
}
