import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/IdeaSubType/SubType_ViewModel.dart';
import 'package:get_inspired/Model/Idea_ViewModel.dart';
import 'package:get_inspired/Model/types.dart';
import 'package:get_inspired/utils/route_constants.dart';

import '../Model/idea_model.dart';

class SubTypePage extends ConsumerWidget{
  const SubTypePage({super.key, required this.title});

  final String title;
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ideaViewModel = ref.watch(ideaViewModelProvider.notifier);
    final ideaProvider = ref.watch(ideaViewModelProvider);
    final viewModel = SubType_ViewModel(ideaType: ideaViewModel.ideaType);
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
          
          Text(viewModel.subTypeTextShow(), style: TextStyle(fontFamily: 'Lexend', fontSize: 20, color:Colors.yellow)), 
        SizedBox(height: 80),
        Expanded(child: 
           ListView.builder(
              itemCount: viewModel.subTypeAvailableChoices().length,
              itemBuilder: (_, index) {
                return Card(
                  child: CheckboxListTile(
                  title: Text(viewModel.subTypeAvailableChoices()[index], style: const TextStyle(color: Colors.yellow)),
                  
                  value: ideaViewModel.ideaSubType == viewModel.subTypeAvailableChoices()[index],
                  
                  onChanged: (value) {
                     
                     ideaViewModel.chooseSubType(viewModel.subTypeAvailableChoices()[index]);
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
        if (ideaViewModel.ideaSubType == "") null;
        else{
          Navigator.pushNamed(context, RoutePaths.theme);
        }

      }, 
      tooltip: 'Next',
      child: new Icon(Icons.arrow_right_alt, color:Colors.white)),
    );
  }
}