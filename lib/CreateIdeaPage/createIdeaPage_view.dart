import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/Model/Idea_ViewModel.dart';
import 'package:get_inspired/Model/types.dart';
import 'package:get_inspired/utils/route_constants.dart';

import '../Model/idea_model.dart';


class CreateIdeaPage extends ConsumerWidget{
  const CreateIdeaPage({super.key, required this.title});

  final String title;
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final ideaViewModel = ref.watch(ideaViewModelProvider.notifier);
    final ideaProvider = ref.watch(ideaViewModelProvider);
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.yellow,
        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
      body: Center(

        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          SizedBox(height: 20),
          const Text("Choose an idea type to explore", style: TextStyle(fontFamily: 'Lexend', fontSize: 20, color:Colors.yellow)), 
        SizedBox(height: 80),
        Expanded(child: 
           ListView.builder(
              itemCount: ideaViewModel.types.length,
              itemBuilder: (_, index) {
                return Card(
                  child: ListTile(
                  title: Text(ideaViewModel.types[index], style: TextStyle(color: ideaViewModel.types[index] ==ideaViewModel.ideaType? Colors.white : Colors.yellow)),
                  trailing:
                      ideaViewModel.types[index] ==ideaViewModel.ideaType ? const Icon(Icons.check) : null,
                  
                  onTap: () {
                    //setState(() {
                     // if (_selectedIndex == index) {
                      //  _selectedIndex = null;
                     // } else {
                     // _selectedIndex = index;
                     ideaViewModel.chooseType(ideaViewModel.types[index]);
                     
                
                    //}
                //  });
                },
                selected: ideaViewModel.types[index] ==ideaViewModel.ideaType,
                selectedTileColor: Colors.yellow,
                selectedColor: Colors.white,
              ),
            );
          }),
    
           ),  
          ],
          
        ),
      ),
      //no action yet BUT it will direct to a new page
   
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        if (ideaViewModel.ideaType == "") null;
        else{
          Navigator.pushNamed(context, RoutePaths.subType);
        }

      }, 
      tooltip: 'Next',
      child: new Icon(Icons.arrow_right_alt, color:Colors.white)),
    );
  }
}
