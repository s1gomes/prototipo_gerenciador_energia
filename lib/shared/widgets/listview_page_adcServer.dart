import 'package:flutter/material.dart';

class ListViewAdcServer extends StatefulWidget {
  const ListViewAdcServer({super.key});
  // receber  o valor do servidor para a list view 

  @override
  State<ListViewAdcServer> createState() => _ListViewAdcServerState();
}

class _ListViewAdcServerState extends State<ListViewAdcServer> {
  

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const ListTile(
            title: Column(
              children: [
                  Text("LISTA DE SERVIDORES CADASTRADOS",
            style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.w700  
              ),
              textAlign: TextAlign.center,
            ),
         Divider(
          height: 2,
        ),
                Row(
                  children: [
                Text("Nome: ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  )
                ),
                Text( "",
                  style: TextStyle(
                fontSize: 16,
                color: Colors.amber
              ), 
                ),
                TextField(

                  decoration: InputDecoration(
                    constraints: BoxConstraints(
                      maxWidth: 120,
                      maxHeight: 10
                    ),
                    contentPadding:  EdgeInsets.all(4),
                    enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 60, 60, 60),
                        width: 2
                      )
                    ),
                    focusedBorder:  UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 60, 60, 60)
                      ),
                    ),
                  ),
              style: TextStyle(
                fontSize: 16,
                color: Colors.amber
              ), 
                )
              ],
            ),
            Row(
          children: [
            
            Text("Server:",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              )
            ),
            TextField(
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  maxWidth: 120,
                  maxHeight: 10
                ),
                contentPadding:  EdgeInsets.all(4),
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 60, 60, 60),
                    width: 2
                  )),
                focusedBorder:  UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 60, 60, 60)
                  ),
                ),
              ),
              style: TextStyle(
                fontSize: 16,
                color: Colors.amber
              ), 
            ),
          ]
          ),
          Row(
          children: [
            Text("Porta: ",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 15,
              )
            ),
            TextField(
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  maxWidth: 120,
                  maxHeight: 10
                ),
                contentPadding:  EdgeInsets.all(4),
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 60, 60, 60),
                    width: 2
                    )
                  ),
                focusedBorder:  UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 60, 60, 60)
                  ),
                ),
              ),
              style: TextStyle(
                fontSize: 16,
                color: Colors.amber
              ), 
            )
          ],
        )
      ]
    ));
  })
  );
      }

}
