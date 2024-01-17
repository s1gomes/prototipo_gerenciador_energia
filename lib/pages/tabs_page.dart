import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/homepage/gerenciar_comodo_page.dart';
import 'package:gerenciador_energia/pages/estatistica_page.dart';
import 'package:gerenciador_energia/pages/homepage/home_page.dart';
import 'package:gerenciador_energia/shared/widgets/AppDrawer_widget.dart';
import 'package:gerenciador_energia/utils/app_routes.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  // final List<Meal> favoriteMeals;

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  int _selectedScreenIndex = 0;
  late List<Map<String, dynamic>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
       {'title': 'Gerenciador', 'screen': HomePage()},
       {'title': 'Estatística', 'screen': EstatisticaPage()},
    // {'title': 'Meus favoritos', 'screen': FavoriteScreen(favoriteMeals: widget.favoriteMeals)}
    ];
  }


  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['title'].toString()),
      ),
      drawer: const AppDrawerWidget(),
      body: _screens[_selectedScreenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).cardColor,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.amber,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.shifting,
        items: [
           BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.lightbulb),
            label: 'Gerenciar'
            ),
           BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.bar_chart),
            label: 'Estatística'
            ),
        ],
      ),
    );
  }
}