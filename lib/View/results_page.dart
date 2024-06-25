import 'package:flutter/material.dart';


class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key, required this.title});

  final String title;

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {

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
          Text("Results", style: const TextStyle(fontFamily: 'Lexend', fontSize: 20, color:Colors.yellow)),
          //wyswietlenie opisu pomysłu
          
          //przycisk zapis pomysł -> wyświetli się [nazwaDEfault] możliwośc nadania nazwy
          ElevatedButton(
          style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor:  Colors.yellow, //fromRGBO( 247, 255, 170, 1),
          shadowColor: Colors.orange,
          fixedSize: const Size.fromWidth(180),
          ),
            onPressed: () {},
            child: const Text('Save'),
          ),

          ],
          
        ),
      ),
    );
  }
}