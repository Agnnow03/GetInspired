import 'package:flutter/material.dart';
import 'package:get_inspired/CreateIdeaPage/createIdeaPage_view.dart';
import 'package:get_inspired/Service/idea_service.dart';
import 'package:get_inspired/utils/route_constants.dart';
import 'package:get_inspired/utils/routes.dart';
import 'HomePage/homepage_view.dart';
import 'ResultsPage/results_page.dart';
import 'IdeaListPage/listpage_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'name-here',
    options: FirebaseOptions(
      apiKey: 'key',
      appId: '1:214239220035:android:b9b8bed916a8acaf18dff6',
      messagingSenderId: "sendid",
      projectId: 'getinspired-7f0ae',
      storageBucket: 'myapp-b9yt18.appspot.com'
    )
  ); 
  IdeaService service = IdeaService();
  service.getIdeaList();
  runApp(
    ProviderScope( 
        child: MyApp(),
      ),
    );
}

//@override
 // void initState() {
  //await Firebase.initializeApp(
    //options: DefaultFirebaseOptions.currentPlatform,
//);

//  }

class MyApp extends ConsumerWidget{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Getinspired',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      //home: const HomePage(title: 'Get inspired'),
      initialRoute: RoutePaths.home,
      onGenerateRoute: Routes.routeTo,
    );
  }
}


