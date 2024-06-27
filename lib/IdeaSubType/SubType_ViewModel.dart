import 'package:get_inspired/Model/types.dart';

class SubType_ViewModel{
  final String ideaType;
  final List<String> environmentType = EnvironmentType.stringValues();
  final List<String> characterType = CharacterType.stringValues();
  final List<String> objectType= ObjectType.stringValues();

  SubType_ViewModel({required this.ideaType});
  String subTypeTextShow(){
    switch (ideaType){
    case "object concept art": return "Choose object type";
    case "character concept art": return "Choose character type";
    case "environment concept art": return "Choose environment type";
    default: return "Choose subtype";
  }
  }  

  List<String> subTypeAvailableChoices(){
  switch (ideaType){
    case "object concept art": return objectType;
    case "character concept art": return characterType;
    case "environment concept art": return environmentType;
    default: return [""];
  }
  }



}