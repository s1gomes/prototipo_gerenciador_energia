import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/iconButtoncadastramento_comodo_page.dart';
import 'package:gerenciador_energia/shared/widgets/gridView_comodos.dart';
import 'package:gerenciador_energia/utils/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Card(
          elevation: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                  height: 40,
                  width: 300,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Cômodos",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const IconButtonComodosCadastros()),
                  );
                },
                icon: const Icon(Icons.add),
              )
            ],
          ),
        ),
        SizedBox(height: 12),
        GridViewComodos(),
        Card(
          elevation: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 30),
              Container(
                  height: 40,
                  width: 300,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Eletrodomésticos mais custosos",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
              // IconButton(
              //   onPressed: () {

              //   },
              //   icon: const Icon(Icons.add),
              // )
            ],
          ),
        ),
        Container(
            height: 40,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Ainda não há eletrodomésticos cadastrados",
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
            )),
      ],
    ));
  }
}
