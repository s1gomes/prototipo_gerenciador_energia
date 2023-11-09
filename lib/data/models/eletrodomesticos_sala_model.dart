import 'package:flutter/material.dart';

class EletroSala {
  final String id;
  final String title;
  final String icone;
  final int voltagem;
  final String comodo;
 
  EletroSala({
    required this.id,
    required this.icone,
    required this.title,
    required this.voltagem,
    required this.comodo
  });
}