import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Inscription",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("Assets/minecraft.jpg"),
            Padding(padding: EdgeInsets.symmetric(vertical:20.0)),
            Column(
           // ignore: prefer_const_literals_to_create_immutables
           children: [
              const TextField( 
                decoration: InputDecoration(
                  labelText: 'Username',  
                   border: OutlineInputBorder(), 
                      hintText: '')),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      
                      const TextField( 
                decoration: InputDecoration(
                  labelText: 'Email',  
                   border: OutlineInputBorder(), 
                      hintText: '')),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      const TextField( 
                decoration: InputDecoration(
                  labelText: 'Password',  
                   border: OutlineInputBorder(), 
                      hintText: '')),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      const TextField( 
                decoration: InputDecoration(
                  labelText: 'Année de naissance',  
                   border: OutlineInputBorder(), 
                      hintText: '')),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      const TextField( 
                decoration: InputDecoration(
                  labelText: 'Adresse de facturation',  
                   border: OutlineInputBorder(), 
                      hintText: '')),
                      Padding(padding: EdgeInsets.symmetric(vertical: 25))
             
           ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical:10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

             children: [
              
            ElevatedButton(
             onPressed: () {},
              style: ElevatedButton.styleFrom(
    minimumSize: const Size(70 , 50),
    
    ),
  child: const Text("S'inscrire",style: TextStyle(fontSize: 15),),
  
   // <-- Text
), ElevatedButton(
             onPressed: () {},
             
             
              style: ElevatedButton.styleFrom(
    minimumSize: const Size(70, 50),
    
    ),
  child: const Text('Annuler',style: TextStyle(fontSize: 15),),
  
   // <-- Text
)
        
          ])
          ],
        ),
      ),
        
    );
  }
}