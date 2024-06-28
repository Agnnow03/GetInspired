import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_inspired/Model/color_palettes.dart';
import 'package:get_inspired/Model/idea_model.dart';
import 'package:get_inspired/Model/types.dart';
import 'package:get_inspired/Service/idea_service.dart';


class Idea_ViewModel extends StateNotifier<Idea>{
 final IdeaService ideaService;
  List<Idea> allIdeas = [];
  final List<String> types = IdeaType.stringValues();
  final List<String> themes  = IdeaTheme.stringValues();
  final List<String> scienceFictionTypes = ScienceFictionType.stringValues();
  final List<String> fantasyTypes = FantasyType.stringValues();
  final List<String> realLifeTypes = RealLifeType.stringValues();
  final List<String> mitologyTypes = MitologyType.stringValues();

  Idea_ViewModel(this.ideaService) : super(Idea(id: "", ideaName: "",themeExample: "",ideaType: "",ideaSubType: "",ideaTheme:"",  description: '',ideaMood:'',colorPalette: [],drawings: []));
  
  String get ideaType => state.ideaType;
  String get ideaName => state.ideaName;
  String get description => state.description;
  String get ideaTheme => state.ideaTheme; 
  String get ideaSubType => state.ideaSubType;
  String get ideaMood => state.ideaMood;
  List<Color> get colorPalette => state.colorPalette;

  Future<void> saveIdea() async{
    await ideaService.saveIdea(state);
  }
 void loadAllIdeas() async{
  List<Idea> listOfAllIdeas = await ideaService.getIdeaList();
  allIdeas = listOfAllIdeas;
 }
  void swapIdea(Idea newIdea)async{
    state = newIdea;
  }
  
  void chooseType(String type){
    state = state.copyWith(ideaType: type);
    
  }

  void chooseSubType(String subType){
    
    state = state.copyWith(ideaSubType: subType);
  }
   void chooseTheme(String theme){
    state = state.copyWith(ideaTheme: theme);
    String concrete = generateThemeExample();
    state = state.copyWith(themeExample: concrete);
  }
  
  void setName(String name){
    state = state.copyWith(ideaName: name);
  }

  void clearIdea(){
    state = Idea(id: "",ideaName: "",ideaType: "",themeExample: "",ideaSubType: "",ideaTheme: "", description: '',ideaMood:"",colorPalette: [],drawings: []);
  }

  List<Color> generateColorPalette(String mood){
    final _random = new Random();
    switch (mood){
      case "uplifting": return warmSoft[_random.nextInt(warmSoft.length)];
      case "dramatic":  return (warmDramatic+coldDramatic)[_random.nextInt((warmDramatic+coldDramatic).length)];
      case "warm": return (warmDramatic+warmSoft)[_random.nextInt((warmDramatic+warmSoft).length)];
      case "sad": return coldSoft[_random.nextInt(coldSoft.length)];
      case "angry": return warmDramatic[_random.nextInt(warmDramatic.length)];
      case "calm": return (coldSoft+warmSoft)[_random.nextInt((coldSoft+warmSoft).length)];
      case "cold": return (coldSoft+coldDramatic)[_random.nextInt((coldSoft+coldDramatic).length)];
      case "scary":return coldDramatic[_random.nextInt(coldDramatic.length)];
      default: return [];
    }
    
  }

  void chooseMood(String mood){
    List<Color> colorPalette = generateColorPalette(mood);
    state = state.copyWith(ideaMood: mood, colorPalette : colorPalette);

  }
  
  void generateBasedOnParameters() async{
    
    String generateDescription = "";
//will generate a description of an idea
    generateDescription+= state.ideaType;
    if(state.ideaType!="") {generateDescription+= " of a ";}
    if(state.ideaType!="object concept art"){
     generateDescription+=state.ideaMood;
    }
    generateDescription+=" "+state.themeExample+" ";
    generateDescription+= state.ideaSubType;
    state = state.copyWith(description: generateDescription);
  }

  String showResults(){
    generateBasedOnParameters();
    return state.description;
  }
  String generateThemeExample(){
    final _random = new Random();
    switch (state.ideaTheme){
    case "science fiction": return scienceFictionTypes[_random.nextInt(scienceFictionTypes.length)];
    case "fantasy": return fantasyTypes[_random.nextInt(fantasyTypes.length)];
    case "mitology":  return mitologyTypes[_random.nextInt(mitologyTypes.length)];
    case "real life": return realLifeTypes[_random.nextInt(realLifeTypes.length)];
    
    default: return "";
    }
  }
}

final ideaViewModelProvider = StateNotifierProvider<Idea_ViewModel,Idea>((ref){
  return Idea_ViewModel(IdeaService());
});