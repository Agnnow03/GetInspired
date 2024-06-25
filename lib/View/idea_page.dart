import 'package:flutter/material.dart';


class IdeaPage extends StatefulWidget {
  const IdeaPage({super.key, required this.title});

  final String title;

  @override
  State<IdeaPage> createState() => _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {

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
          Text("Idea name TEST", style: const TextStyle(fontFamily: 'Lexend', fontSize: 20, color:Colors.yellow)),
          //wyswietlenie opisu projektu
          //miejsce na dodanie zdjęć (GALERIA?)
          //ikonka dodaj zdjęcie
          //SCROLLABLE LIST na zdjęcia
          ],
          
        ),
      ),
    );
  }
}