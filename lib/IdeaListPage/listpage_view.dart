import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/Model/Idea_ViewModel.dart';
import 'widget_list_item.dart';

class IdeaListPage extends ConsumerWidget {
  const IdeaListPage({super.key, required this.title});

  final String title;

  
  @override
  Widget build(BuildContext context,WidgetRef ref) {
   
    final ideaViewModel = ref.watch(ideaViewModelProvider.notifier);
    final ideaProvider = ref.watch(ideaViewModelProvider);
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.yellow,
        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: ListItemIdea(),
        //ZMIENIC NA ListView builder
        //ListView.builder(
          //    itemCount: .length,
            //  itemBuilder: (_, index) {
             //   return ListItemIdea(),
              //},
 
      //  ),
      ),
    );
  }
}