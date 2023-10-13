import 'package:flutter/material.dart';

class TextodoRodape extends StatelessWidget {
  const TextodoRodape({super.key, required this.texto, required this.icone});
  final String texto;
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icone,
        color: Colors.white,
        size: 18),
        Text(
            texto, 
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.white
          )
        ),
      ],
    );
  }
}