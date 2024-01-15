import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/home_page.dart';
import 'package:gerenciador_energia/utils/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static MaterialColor green =
      const MaterialColor(_greenPrimaryValue, <int, Color>{
    50: Color(0xFF4CAF50),
    100: Color(0xFF43A047),
    200: Color(0xFF388E3C),
    300: Color(_greenPrimaryValue),
    500: Color(0xFF1B5E20),
    600: Color(0xFF2196F3),
    700: Color(0xFF1E88E5),
    800: Color(0xFF1976D2),
    900: Color(0xFF1565C0),
  });
  static const int _greenPrimaryValue = 0xFF2E7D32;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      title: 'Gerenciador de energia',
      theme: ThemeData(
          primarySwatch: MyApp.green,
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          colorScheme: ColorScheme.fromSeed(
            error: Colors.red,
              seedColor: const Color.fromARGB(255, 227, 201, 194),
              ),

          useMaterial3: true,
          textTheme: ThemeData.light().textTheme.copyWith(
              titleSmall: const TextStyle(
                  fontSize: 20, fontFamily: 'RobotoCondensed'))),

        routes: {
          AppRoutes.HOME: (ctx) => HomePage(),
          // AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage(),
          // AppRoutes.CART: (ctx) => CartPage(),
          // AppRoutes.ORDERS: (ctx) => OrdersPage(),
          // AppRoutes.PRODUCTS: (ctx) => ProductPage(),
          // AppRoutes.PRODUCT_FORM: (ctx) => ProductFormPage(),
        },
    );
  }
}
