import 'package:flutter/material.dart';
import 'package:gerenciador_energia/shared/widgets/AppDrawer_widget.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  String pageTitle = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: AppDrawerWidget(),
      body: body(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: Text(pageTitle),
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).primaryColor,
    );
  }

  Widget body() {
    return widget;
  }

  @override
  void dispose() {
    super.dispose();
  }
}