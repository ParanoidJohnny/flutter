import 'package:flutter/material.dart';
import 'package:myapp/components/grid.dart';
import 'package:myapp/models/game.dart';

class LibraryScreen extends StatefulWidget {
  
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreen();
}

class _LibraryScreen extends State<LibraryScreen> {

  final List<Game> games = [
    Game("dmc5.jpg", "Devil May Cry 5",200),
    Game("re8.jpg", "Resident Evil VIII",120),
    Game("nfs.jpg", "Need For Speed Heat",100),
   
  ];
  
   @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G-Store Esprit"),
      ),
      body: GridView.count(crossAxisCount: 2,
       primary: true,
  padding: const EdgeInsets.all(10),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
    

      children: 
        List.generate(games.length, (index)  {
       return  Grid(games[index]);
       
        },
        )
      ,
      
      
      )
      
    );
  }
}

