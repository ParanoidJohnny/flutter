import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {

  ResetPassword({super.key});
  @override
  State<ResetPassword> createState() => _ResetPassword();
}

class _ResetPassword extends State<ResetPassword> {
  
   GlobalKey<FormState> formKey = GlobalKey();

  late String username;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Réinitialiser le mot de passe"),
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
        
          Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
           
            children: [
              Padding(
                padding: const EdgeInsets.only(top : 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(391,50),
                     backgroundColor: Colors.blue,
                     
                  ),
                  child: const Text("Réinitialiser le mot de passe"),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                  }},
                  
                  
                ),
              ),
              
              
            ],
          ),
          
      
        ],
      ),
    ),
    );
  }
}
