import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/Model/Idea_ViewModel.dart';
import 'package:get_inspired/Model/types.dart';
import 'package:get_inspired/MoodPage/MoodPage_ViewModel.dart';
import 'package:get_inspired/utils/route_constants.dart';

import '../Model/idea_model.dart';


class MoodPage extends ConsumerWidget{
  const MoodPage({super.key, required this.title});

  final String title;
 
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ideaViewModel = ref.watch(ideaViewModelProvider.notifier);
    final ideaProvider = ref.watch(ideaViewModelProvider);
    final viewModel =  Mood_ViewModel(ideaType: ideaViewModel.ideaType);

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
          
          Text(viewModel.moodTextShow(), style: TextStyle(fontFamily: 'Lexend', fontSize: 20, color:Colors.yellow)), 
        SizedBox(height: 80),
        Expanded(child: 
           ListView.builder(
              itemCount: viewModel.moodAvailableChoices().length,
              itemBuilder: (_, index) {
                return Card(
                  child: CheckboxListTile(
                  title: Text(viewModel.moodAvailableChoices()[index], style: const TextStyle(color: Colors.yellow)),
                  
                  value: ideaViewModel.ideaMood==viewModel.moodAvailableChoices()[index],
                  
                  onChanged: (value) {
                     
                     ideaViewModel.chooseMood(viewModel.moodAvailableChoices()[index]);
                     value = value;
                },
              
              ),
            );
          }),
    
           ),  
          ],
          
        ),
      ),
      
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        if (ideaViewModel.ideaMood == "") null;
        else{
          Navigator.pushNamed(context, RoutePaths.results);
        }

      }, 
      tooltip: 'Next',
      child: new Icon(Icons.arrow_right_alt, color:Colors.white)),
    );
  }
}