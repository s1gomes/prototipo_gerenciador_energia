import 'package:flutter/material.dart';

class TituloTextoCards extends StatelessWidget {
  const TituloTextoCards({super.key, required this.titulo});
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return  Text(
      titulo,
      textAlign: TextAlign.justify,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.w600),
    );
  }
}
