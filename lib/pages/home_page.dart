import 'package:flutter/material.dart';
import 'package:gerenciador_energia/shared/widgets/AppBar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gerenciador de energia")
    ),
    
    );
  }
}