import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.yellow,
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
          
          const Text("GetInspired", style: TextStyle(fontFamily: 'Lexend', fontWeight: FontWeight.bold, fontSize: 30, color: Colors.yellow)), 
          
          const SizedBox(height:100),

          ElevatedButton(
          style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor:  Colors.yellow, //fromRGBO( 247, 255, 170, 1),
          shadowColor: Colors.orange,
          fixedSize: const Size.fromWidth(180),
          ),
          
          onPressed: () {},
          child: const Text('Create a new idea'),
        ),
        const SizedBox(height:10),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor:  Colors.yellow,
          shadowColor: Colors.orange,
          fixedSize: const Size.fromWidth(180),
          ),
          onPressed: () {},
          child: const Text('Your ideas'),
        ),
          ],
        ),
      ),
    );
  }
}