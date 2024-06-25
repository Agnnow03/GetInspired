import 'package:flutter/material.dart';

class ListItem extends StatelessWidget{
const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //body: Material(
        
        body: Material(
          color: Colors.yellow,
          child:InkWell(
          borderRadius: BorderRadius.circular(30),
          //onTap: () {}, 
          child: Container(
            width: 300,
            height: 300,
              child: const Row( 
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                  Text("MYIDEANAME test1" ,style: TextStyle(color: Colors.white)),
                  Text("MyIdeaDescription test1", style: TextStyle(color: Colors.white)),
              ],
              ),
              
          ),  
            
            ),
        ),
       
    //  ),      
    );
  }

}
