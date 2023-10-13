import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/dados_cadastrais.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 227, 201, 194)),
        useMaterial3: true,
      ),
      home: const DadosCadastrais()
    );
  }
}


