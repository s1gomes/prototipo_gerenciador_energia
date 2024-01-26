import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/login/extendsbasetest.dart';
import 'package:gerenciador_energia/utils/app_routes.dart';

class AppDrawerWidget extends StatelessWidget {
  const AppDrawerWidget({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Bem vindo usuário!'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Home'),
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TestExtends()),
              );
            },
          ),
          // Divider(),
          // ListTile(
          //   leading: Icon(Icons.delivery_dining),
          //   title: Text('Pedidos'),
          //   onTap: () {
          //     Navigator.of(context).pushReplacementNamed(AppRoutes.ORDERS);
          //   },
          // ),
          // Divider(),
          // ListTile(
          //   leading: Icon(Icons.edit),
          //   title: Text('Gerenciar Produtos'),
          //   onTap: () {
          //     Navigator.of(context).pushReplacementNamed(AppRoutes.PRODUCTS);
          //   },
          // )
        ],
      ),
    );
  }
}