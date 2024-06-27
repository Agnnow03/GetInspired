import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/Model/Idea_ViewModel.dart';
import 'package:get_inspired/Model/types.dart';
import 'package:get_inspired/utils/route_constants.dart';

import '../Model/idea_model.dart';


class ThemePage extends ConsumerWidget{
  const ThemePage({super.key, required this.title});

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
          const Text("Choose theme", style: TextStyle(fontFamily: 'Lexend', fontSize: 20, color:Colors.yellow)), 
        SizedBox(height: 80),
        Expanded(child: 
           ListView.builder(
              itemCount: ideaViewModel.themes.length,
              itemBuilder: (_, index) {
                return Card(
                  child: CheckboxListTile(
                  title: Text(ideaViewModel.themes[index], style: const TextStyle(color: Colors.yellow)),
                  
                  value: ideaViewModel.ideaTheme==ideaViewModel.themes[index],
                  
                  onChanged: (value) {
                     
                     ideaViewModel.chooseTheme(ideaViewModel.themes[index]);
                     value = value;
                },
              
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
        if (ideaViewModel.ideaTheme == "") null;
        else{
          Navigator.pushNamed(context, RoutePaths.mood);
        }

      }, 
      tooltip: 'Next',
      child: new Icon(Icons.arrow_right_alt, color:Colors.white)),
    );
  }
}