import 'package:flutter/material.dart';
import 'package:myapp/cell.dart';
import 'package:myapp/game.dart';

class Panier extends StatefulWidget {
  const Panier({super.key});

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  //var
  final List<Game> games = [
    Game("dmc5.jpg", "Devil May Cry 5", 200),
    Game("re8.jpg", "Resident Evil 8", 120),
  
    Game("nfs.jpg", "Need For Speed", 100),
    
    
  ];
   late String total;
  
  //actions

  //life cycle
  @override
  void initState() {
    super.initState();
  }

  //build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G-Store Esprit"),
      ),
      body:

        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:10,left: 210),
              child: const Text("Total : 500 TND"
              ,
              style: TextStyle(fontSize: 25),
              )
              
            ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Divider(
                color: Colors.grey
            ),
             ),
             ListView.builder(
               shrinkWrap: true,
                itemCount: games.length,
                itemBuilder: (context, index) {
                  return Cell(games[index]);
                })
          ],
        ),
       
 
  );
}
}
