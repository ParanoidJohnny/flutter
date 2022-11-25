import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
   GlobalKey<FormState> formKey = GlobalKey();

  late String username;

  late String password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S'authentifier"),
      ),
      body: 
       Form( key: formKey,
     child : ListView(
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Image.asset("Assets/minecraft.jpg", width: 460, height: 215),
              padding: const EdgeInsets.only(bottom: 70),
          ),
           Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                onSaved: (newValue) {
                  username = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "username cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
              ),
            ),
          Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                onSaved: (newValue) {
                  password = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Mot de passe"),
              ),
            ),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
           
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(391,50),
                   backgroundColor: Colors.blue,
                   
                ),
                child: const Text("S'authentifier"),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                }},
                
                
              ),
              
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15,bottom: 30),
            child: 
            Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
             
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(391,50),
                     backgroundColor: Colors.red,
                  ),
                  child: const Text("Créer un compte"),
                  onPressed: () {},
                  
                ),
                
              ],
            ),
          ),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
               
               Text("Mot de pass oublié ?"),
               SizedBox(
                width: 10,
               ),
               Text("Cliquez ici",style: TextStyle(
                        color: Colors.blue
               ))
               
               
            ],
            
          )
        ],
      ),
    ),
    );
  }
}
