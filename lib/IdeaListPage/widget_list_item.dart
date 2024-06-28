import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/Model/Idea_ViewModel.dart';
import 'package:get_inspired/utils/route_constants.dart';

class ListItemIdea extends ConsumerWidget{
const ListItemIdea( {super.key, required this.index});
final index;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    
    final ideaViewModel = ref.watch(ideaViewModelProvider.notifier);
    final ideaProvider = ref.watch(ideaViewModelProvider);
    
   // allIdeas = ideaViewModel.loadAllIdeas();
   
      //body: Material(
        
        return Material(
          color: Colors.yellow,
          child:InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () {
            ideaViewModel.swapIdea(ideaViewModel.allIdeas[index]);
            Navigator.pushNamed(context, RoutePaths.ideaPage);
          }, 
          child: Container(
           
            //width: 300,
            //height: 300,
              child: Padding(
              padding: EdgeInsets.all(16.0),
              
              child: Row( 
                mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                  Text(ideaViewModel.ideaName+"  " ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(ideaViewModel.description, style: TextStyle(color: Colors.white)),
              ],
              ),
              ),
          ),  
            
            ),
        );
       
    //  ),      
    
  }

}
