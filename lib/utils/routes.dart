import "package:flutter/material.dart";
import "package:get_inspired/CreateIdeaPage/createIdeaPage_view.dart";
import "package:get_inspired/HomePage/homepage_view.dart";
import "package:get_inspired/IdeaListPage/listpage_view.dart";
import "package:get_inspired/IdeaPage/idea_page.dart";
import "package:get_inspired/IdeaSubType/SubTypePage.dart";
import "package:get_inspired/MoodPage/MoodPage.dart";
import "package:get_inspired/ResultsPage/results_page.dart";
import "package:get_inspired/ThemePage/themepage.dart";

import "route_constants.dart";
class Routes{
  static Route<dynamic> routeTo(RouteSettings settings){
    switch (settings.name){
      case RoutePaths.home: return MaterialPageRoute(builder: (context) => const HomePage(title: 'Get inspired'),);
      case RoutePaths.createIdea: return MaterialPageRoute(builder: (context) => CreateIdeaPage(title: 'Idea Creator'),);
      case RoutePaths.subType: return MaterialPageRoute(builder: (context)=> SubTypePage(title: "Idea Creator"),);
      case RoutePaths.results: return MaterialPageRoute(builder: (context)=> ResultsPage(title: "Your results"),);
      case RoutePaths.theme: return MaterialPageRoute(builder: (context)=> ThemePage(title: "Idea Creator"),);
      case RoutePaths.mood: return MaterialPageRoute(builder: (context)=> MoodPage(title: "Idea Creator"),);
      case RoutePaths.ideaList: return MaterialPageRoute(builder: (context)=> IdeaListPage(title: "Your ideas"),);
      case RoutePaths.ideaPage: return MaterialPageRoute(builder: (context)=> IdeaPage(title: "Idea Details"),);
      
      //add more
      default: return MaterialPageRoute(builder: (context) {
        return const Scaffold(
          body: Center( child:Text("There is not such a route defined")),
        );
      },  
      ); 
    }

  }

}