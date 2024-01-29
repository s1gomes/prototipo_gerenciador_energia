// import 'package:flutter/widgets.dart';

// abstract class BasePage extends StatefulWidget {
//   const BasePage({super.key});

//   // @override
//   // State<BasePage> createState() => _BasePageState();
//   _BasePageState getState();
// }

// abstract class _BasePageState<T extends BasePage> extends State<T> {

//   State get state => this;

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

import 'package:flutter/material.dart';
import 'package:gerenciador_energia/shared/widgets/AppDrawer_widget.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});
  @override
  State<StatefulWidget> createState() => BasePageState<BasePage>();
}

// Widget? body;
String pageTitle = '';

class BasePageState<T extends StatefulWidget> extends State<T> {
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
    return body();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:gerenciador_energia/pages/homepage/mainPage/comodosCardMP.dart';
// import 'package:gerenciador_energia/pages/homepage/mainPage/eletrodomesticosUsadosCardMP.dart';
// import 'package:gerenciador_energia/pages/homepage/mainPage/gridviewComodos.dart';
// import 'package:gerenciador_energia/shared/widgets/AppDrawer_widget.dart';

// class BasePage extends StatefulWidget {
//   const BasePage({super.key});

//   @override
//   State<StatefulWidget> createState() => BasePageState<BasePage>();
// }

// String pageTitle = '';

// class BasePageState<T extends StatefulWidget> extends State<T> {
//   @override
//   Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text(pageTitle),
//           automaticallyImplyLeading: false,
//           backgroundColor: Theme.of(context).primaryColor,
//         ),
//         drawer: AppDrawerWidget(),
//         body: body(),
//       );

//   }

//   // headCardComodos(constraints, String title, IconData? icondata, VoidCallback? functionOnpressed) {
//   //   return Row(
//   //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //     children: [
//   //       SizedBox(height: constraints.maxHeight * 0.03),
//   //       Container(
//   //         height: constraints.maxHeight * 0.04,
//   //         width: constraints.maxWidth * 0.75,
//   //         child: Padding(
//   //           padding: const EdgeInsets.all(8.0),
//   //           child: Text(
//   //             title,
//   //             style: const TextStyle(
//   //               fontSize: 17,
//   //             ),
//   //             textAlign: TextAlign.center,
//   //           ),
//   //         ),
//   //       ),
//   //       IconButton(
//   //        onPressed: functionOnpressed,
//   //             icon: Icon(icondata),
//   //       ),
//   //     ],
//   //   );
//   // }

//   // boxComodos () {

//   // }

//   // boxEletronics () {

//   // }

//   Widget body() {

//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }
// }
