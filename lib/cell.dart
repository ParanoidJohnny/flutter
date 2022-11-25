import 'package:flutter/material.dart';
import 'package:myapp/game.dart';

class Cell extends StatelessWidget {
  //var
  final Game mGame;

  const Cell(this.mGame, {super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: [
       
        Row(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
 
                   Padding(
                     padding: const EdgeInsets.only(right:30.0),
                     child: IconButton(
                     iconSize: 45, icon: Icon(Icons.restore_from_trash), onPressed: () {  },
                     ),
                   ),
                    Image.asset(
                      "Assets/${mGame.image}",
                      width: 130,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:20.0),
                            child: Text(
                              "${mGame.price.floor().toString()} TND",
                              style: const TextStyle(
                                  color: Colors.black,
                                  
                                  fontSize: 25),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
