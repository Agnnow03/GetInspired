import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/Model/Idea_ViewModel.dart';
import 'package:get_inspired/utils/route_constants.dart';
import 'widget_list_item.dart';

class IdeaListPage extends ConsumerWidget {
  const IdeaListPage({super.key, required this.title});

  final String title;
  
  @override
  Widget build(BuildContext context,WidgetRef ref) {
   
    final ideaViewModel = ref.watch(ideaViewModelProvider.notifier);
    final ideaProvider = ref.watch(ideaViewModelProvider);
    ideaViewModel.loadAllIdeas();
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.yellow,
        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
      body: Center(
       // child: ListItemIdea(),
        //ZMIENIC NA ListView builder
       child: ListView.builder(
              itemCount: ideaViewModel.allIdeas.length,
              itemBuilder: (context, index) {
                final idea = ideaViewModel.allIdeas[index];
                return ListTile(
                  title: Text(idea.ideaName),
                  onTap: (){
                    Navigator.pushNamed(context, RoutePaths.ideaPage);
                  },
                );
              },
 
        ),
      ),
    );
  }
}