import 'package:flutter/material.dart';

class DMEletrodomesticosSala extends StatefulWidget {
  const DMEletrodomesticosSala({super.key});

  @override
  State<DMEletrodomesticosSala> createState() => _DMEletrodomesticosSalaState();
}

class _DMEletrodomesticosSalaState extends State<DMEletrodomesticosSala> {
  final TextEditingController eletrodomesticoSalaController = TextEditingController(text: "");
  String? selectedEletrodomestico;

  @override
  Widget build(BuildContext context) {

    final List<DropdownMenuEntry<String>> eletrodomesticoEntries = 
    <DropdownMenuEntry<String>>[];


    return const Placeholder();
  }
}