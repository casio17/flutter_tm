

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          
            child: Column(
              children: [
                const Text("Welcome",style: TextStyle(fontSize: 30,color: Color.fromARGB(123, 0, 0, 0)),),
                const Text("Sign in",style: TextStyle(fontSize: 30,color: Color.fromARGB(123, 0, 0, 0)),),
                const SizedBox(height: 25,),
                
                const Center(
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/images/lock11.jpg"),
                  )
                ),
          
                const SizedBox(height: 25,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email ID",
                    labelStyle: const TextStyle(fontSize: 15,color: Color.fromARGB(255, 214, 37, 37)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
          
                const SizedBox(height: 10,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(fontSize: 15,color: Color.fromARGB(255, 214, 37, 37)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                
                const SizedBox(height: 1,),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Text("Forget Password?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        ), 
                      ),
                    ),
                const SizedBox(height: 15,),
                Container(
                  height: size.height/15,
                  width: size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 180, 51, 42),
                    borderRadius: BorderRadius.circular(5)),
                    
                  child: const Text(
                    "Login",style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold),),
                ),
          
                
          
              ],
            ),
          ),
        )
      )
    );
  }
}