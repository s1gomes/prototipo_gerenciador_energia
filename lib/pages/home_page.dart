import 'package:flutter/material.dart';
import 'package:gerenciador_energia/shared/widgets/AppDrawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Gerenciador de energia")),
        drawer: AppDrawerWidget(),
        body: Column(
          children: [
            Card(
              elevation: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 30,),
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
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  )
                ],
              ),
            ),
            Container(
                height: 40,
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Ainda não há comodos cadastrados",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
            Card()
          ],
        ));
  }
}
