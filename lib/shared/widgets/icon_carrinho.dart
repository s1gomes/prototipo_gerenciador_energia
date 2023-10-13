import 'package:flutter/material.dart';

class IconCarrinho extends StatefulWidget {
  const IconCarrinho({super.key});

  @override
  State<IconCarrinho> createState() => _IconCarrinhoState();
}

class _IconCarrinhoState extends State<IconCarrinho> {
  @override
  Widget build(BuildContext context) {
    
    return const IconButton(
      icon: Icon(Icons.shopping_cart),
      onPressed: null
    );
  }
}