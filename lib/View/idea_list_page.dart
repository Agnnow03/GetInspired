import 'package:flutter/material.dart';
import 'widget_list_item.dart';

class IdeaListPage extends StatefulWidget {
  const IdeaListPage({super.key, required this.title});

  final String title;

  @override
  State<IdeaListPage> createState() => _IdeaListPageState();
}

class _IdeaListPageState extends State<IdeaListPage> {

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.yellow,
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      body: Center(
        //ZMIENIC NA ListView builder
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[  
            //PRZYKLADOWO
            ListItem(),
            ListItem(),
          ],
          
        ),
      ),
    );
  }
}