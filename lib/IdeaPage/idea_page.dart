import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/Model/Idea_ViewModel.dart';


class IdeaPage extends ConsumerWidget {
  const IdeaPage( {super.key, required this.title, required this.index});
  
  //final index;
  final int index;
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
        child: Column(

          children: <Widget>[   
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 60),
              
             Text(
               "Idea "+ ideaViewModel.allIdeas[index].ideaName, style: const TextStyle(fontFamily: 'Lexend', fontSize: 20, color:Colors.yellow)
                ),
              
          ],
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(ideaViewModel.allIdeas[index].colorPalette.length, (i){
                  return Icon(
                    Icons.stop,
                      color: ideaViewModel.allIdeas[index].colorPalette[i],
                      size: 40.0,
                  );      
          }
          ,)),
          Text("Decription: \n"+ideaViewModel.allIdeas[index].description, style: const TextStyle(color:Colors.yellow)),
          const SizedBox(height:40.0),
          const Text("Add your artworks: ",),

          //miejsce na dodanie zdjęć (GALERIA?)
          //ikonka dodaj zdjęcie
          //SCROLLABLE LIST na zdjęcia
          ],
          
        ),
      ),
    );
  }
}