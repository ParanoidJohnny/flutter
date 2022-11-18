import 'package:flutter/material.dart';

class GameDetails extends StatelessWidget {
  const GameDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Devil May Cry 5",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("Assets/dmc5.jpg"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 40.0),
              child: 
              
              Text(
                "200 TND",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  
                  fontSize: 60,
                ),
              ),
              
            ),
              Padding(
             padding: const EdgeInsets.symmetric(horizontal: 70.0,vertical: 50),
            child: 
            ElevatedButton.icon(
             onPressed: () {},
             
             icon: const Icon( // <-- Icon
             Icons.shop_2_rounded,
             size: 30.0,
              ),
              style: ElevatedButton.styleFrom(
    minimumSize: const Size(250, 65),
    
    ),
  label: const Text('Acheter',style: TextStyle(fontSize: 25),),
  
   // <-- Text
),
        
      )
          ],
        ),
      ),
        
    );
  }
}