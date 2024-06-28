import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/Model/Idea_ViewModel.dart';
import 'package:get_inspired/utils/route_constants.dart';


class ResultsPage extends ConsumerWidget {
  const ResultsPage({super.key, required this.title});

  final String title;


  @override
  Widget build(BuildContext context,WidgetRef ref) {
  final ideaViewModel = ref.watch(ideaViewModelProvider.notifier);
  final ideaProvider = ref.watch(ideaViewModelProvider);
  TextEditingController userInput = TextEditingController();  
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.yellow,
        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[   
          Text("Results", style: const TextStyle(fontFamily: 'Lexend', fontSize: 20, color:Colors.yellow)),
          //wyswietlenie opisu pomysłu
          const SizedBox(height:20.0),
          Text(ideaViewModel.showResults()),
         Container(child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(ideaViewModel.colorPalette.length, (i){
                  return Icon(
                    Icons.stop,
                      color: ideaProvider.colorPalette[i],
                      size: 40.0,
                  );
                 
          }
          ,)
   
),),
          //przycisk zapis pomysł -> wyświetli się [nazwaDEfault] możliwośc nadania nazwy
          Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
         child: TextFormField(
    controller: userInput,
    expands: false,     
    style: const TextStyle(color:Colors.yellow),
    decoration: const InputDecoration(
    border: UnderlineInputBorder(),
    labelText: 'Enter your idea name', 
  ),
  ),
 // onSaved: (String? value) {
   // ideaViewModel.setName(value.toString());
 // }
),
const SizedBox(height: 20.0,),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor:  Colors.yellow, //fromRGBO( 247, 255, 170, 1),
          shadowColor: Colors.orange,
          fixedSize: const Size.fromWidth(180),
          ),
            onPressed: () {
              if(userInput.text!=null){ 
                ideaViewModel.setName(userInput.text);}
                ideaViewModel.saveIdea(); 
                Navigator.pushNamed(context, RoutePaths.ideaPage);
            },
            child: const Text('Save'),
          ),
          SizedBox(height: 10.0,),
           ElevatedButton(
          style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor:  Colors.yellow, //fromRGBO( 247, 255, 170, 1),
          shadowColor: Colors.orange,
          fixedSize: const Size.fromWidth(180),
          ),
            onPressed: () {
                  ideaViewModel.clearIdea();
                  Navigator.pushNamed(context, RoutePaths.createIdea);
            },
            child: const Text('Retry'),
          ),
          ],
          
        ),
      ),
    );
  }
}