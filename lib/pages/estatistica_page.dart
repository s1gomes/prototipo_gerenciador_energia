import 'package:flutter/material.dart';

class EstatisticaPage extends StatelessWidget {
  const EstatisticaPage({super.key});

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
                  SizedBox(width: 30,),
                  Container(
                      height: 40,
                      width: 300,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Estatística",
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
                    "Ainda não há dados para análise",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
            Card()
          ],
        )
        );
  }
}