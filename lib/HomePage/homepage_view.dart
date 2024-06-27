import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/utils/route_constants.dart';
import 'package:get_inspired/utils/routes.dart';

class HomePage extends ConsumerWidget{
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.yellow,
        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
          
          const Text("GetInspired", style: TextStyle(fontFamily: 'Lexend', fontWeight: FontWeight.bold, fontSize: 30, color: Colors.yellow)), 
          
          const SizedBox(height:100),
          
          ElevatedButton(
          style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor:  Colors.yellow, //fromRGBO( 247, 255, 170, 1),
          shadowColor: Colors.orange,
          fixedSize: const Size.fromWidth(180),
          ),
          
          onPressed: () {
            Navigator.pushNamed(context, RoutePaths.createIdea);
          },
          child: const Text('Create a new idea'),
        ),
        const SizedBox(height:10),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor:  Colors.yellow,
          shadowColor: Colors.orange,
          fixedSize: const Size.fromWidth(180),
          ),
          onPressed: () {
            Navigator.pushNamed(context, RoutePaths.ideaList);
          },
          child: const Text('Your ideas'),
        ),
          ],
        ),
      ),
    );
  }
}