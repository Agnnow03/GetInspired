import 'package:flutter/material.dart';
import 'package:get_inspired/View/idea_type_page.dart';
import 'View/homepage.dart';
import 'View/results_page.dart';
import 'View/idea_list_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
}

//@override
 // void initState() {
  //await Firebase.initializeApp(
    //options: DefaultFirebaseOptions.currentPlatform,
//);

//  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Getinspired',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Get inspired'),
    );
  }
}


