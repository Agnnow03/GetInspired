import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/Model/Idea_ViewModel.dart';
import 'package:get_inspired/Service/idea_service.dart';


class IdeaPage extends ConsumerWidget {
   IdeaPage( {super.key, required this.title});
  
  //final index;
  final String title;
  final IdeaService _db = IdeaService();
  
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
               "Idea "+ ideaViewModel.ideaName, style: const TextStyle(fontFamily: 'Lexend', fontSize: 20, color:Colors.yellow)
                ),
              //const Text("Double click to change name",style: TextStyle(fontSize: 12.0, color: Color.fromARGB(255, 180, 180, 180))),
           
          ],
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(ideaViewModel.colorPalette.length, (i){
                  return Icon(
                    Icons.stop,
                      color: ideaProvider.colorPalette[i],
                      size: 40.0,
                  );      
          }
          ,)),
          Text("Decription: \n"+ideaViewModel.description, style: const TextStyle(color:Colors.yellow)),
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