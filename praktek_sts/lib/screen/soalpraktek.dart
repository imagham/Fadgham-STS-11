import 'package:flutter/material.dart';
class Praktek extends StatefulWidget {
  const Praktek({super.key});

  @override
  
  State<Praktek> createState() => _PraktekState();
}

bool obscured =true;
class _PraktekState extends State<Praktek> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
    @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page',style: TextStyle(color: Colors.lightBlueAccent),),
        backgroundColor: const Color.fromARGB(255, 10, 3, 52),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          Text('Login Ke Akun Anda',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              spacing: 15,
              children: [
               
                 TextField(
                  style: TextStyle(color: Colors.white),
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: const Color.fromARGB(255, 10, 3, 52))),
                    prefixIcon:Icon(Icons.person,color: const Color.fromARGB(255, 10, 3, 52),),
                    label: 
                        Text("Username",style: TextStyle(color: Colors.lightBlueAccent),),
                
                  ),
                ),
                 TextField(
                  controller: passwordController,
                  style: TextStyle(color: Colors.white),
                  obscureText: obscured,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: const Color.fromARGB(255, 10, 3, 52))),
                    prefixIcon:  Icon(Icons.lock,color: const Color.fromARGB(255, 10, 3, 52),),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        obscured = !obscured;
                      });
                    }, icon:Icon(
                      obscured ? Icons.visibility_off : Icons.visibility,color: const Color.fromARGB(255, 10, 3, 52),
                    ),),
                     label: 
                        Text("Password",style: TextStyle(color: Colors.lightBlueAccent),),
                  ),
                ),
               SizedBox(
                height: 50,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('LOGIN',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum Punya Akun?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.lightBlueAccent)),
                    Text("Sing Up",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blueAccent)),
                    
                  ],
                ),
              )
              ],
            ),
          )
          
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 47, 72, 93),
    );
  }
}