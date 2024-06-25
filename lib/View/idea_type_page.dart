import 'package:flutter/material.dart';


class IdeaTypePage extends StatefulWidget {
  const IdeaTypePage({super.key, required this.title});

  final String title;

  @override
  State<IdeaTypePage> createState() => _IdeaTypePageState();
}

class _IdeaTypePageState extends State<IdeaTypePage> {

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
          const Text("Choose an idea type to explore", style: TextStyle(fontFamily: 'Lexend', fontSize: 20, color:Colors.yellow)), 
//jak przekazać liste typów? 
////bo czyste UI
        
          ],
          
        ),
      ),
      //no action yet BUT it will direct to a new page
      floatingActionButton: new FloatingActionButton(onPressed: null, 
      tooltip: 'Next',
      child: new Icon(Icons.arrow_right_alt, color:Colors.white))
    );
  }
}