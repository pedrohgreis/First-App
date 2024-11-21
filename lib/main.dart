import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp(name: "John"));
}

// data wont't be modified
class Myapp extends StatefulWidget {
  final String name;
  const Myapp({super.key, required this.name});

  @override
  State<Myapp> createState() => _MyappState();
}

// data can be modified
class _MyappState extends State<Myapp> {
  double salary = 7000.55;

  void increaseSalary(double value){
    setState(() {
      salary += value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Salaries"),
          backgroundColor: Colors.blueAccent,
        ),
        
        body: Center(
          // whenever touched there'll be an action
          child: GestureDetector(
            onTap: (){
              increaseSalary(200);
            },

            child: Text(
              "${widget.name}'s salary is $salary",
              textDirection: TextDirection.ltr,
                style: const TextStyle(
                fontSize: 27,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

