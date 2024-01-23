import 'package:flutter/material.dart';

class AddNumbers extends StatefulWidget {
  const AddNumbers({super.key});



  @override
  State<AddNumbers> createState() => _AddNumbersState();
}

class _AddNumbersState extends State<AddNumbers> {
  TextEditingController num1=TextEditingController();
   TextEditingController num2 = TextEditingController();
    TextEditingController tot = TextEditingController();
  @override
  Widget build(BuildContext context) {
    int result;
    int sum;

    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child:  Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
            child: Column(
                
                children: [
                  const SizedBox(height: 45,),
                  const Text("Add Numbers", 
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black)
                  ),
              
                  const SizedBox(height: 25,),
              
                  TextField(
                    controller: num1,
                    decoration: InputDecoration(
                      labelText: "Number 1",
                      labelStyle: const TextStyle(fontSize: 15,color: Colors.grey),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(23))
                    ),  
                  ),
                  
                  const SizedBox(height: 10,),
                  
                  TextField(
                     controller: num2,
                    decoration: InputDecoration(
                      labelText: "Number 2",
                      labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(23))
                    ),
                  ),
              
                  const SizedBox(height: 35,),
              
                  TextField(
                     controller: tot,
                    decoration: InputDecoration(
                      labelText: "Total",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade400
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(23)),
                    ),
                  ),
              
                  const SizedBox(height: 15,),
              
                 GestureDetector(
                  onTap: ()
                  {
                    sum = int.parse(num1.text) + int.parse(num2.text);
                    result = sum;
                    tot.text = result.toString();
                  },child:  Container
                  (
                    alignment: Alignment.center,
                    height: size.height/14,
                    width: size.width/3,
                   
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(193, 244, 67, 54),
                      borderRadius: BorderRadius.circular(15)
                    ),
              
                    child: const Text("Add",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                     
                    ),
                  ), 
                ),
              
              
                
                  
                ],
              ),
          ),
      ),
    );
  }
}