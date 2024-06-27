
import 'package:get_inspired/Model/types.dart';

class Mood_ViewModel{
  final String ideaType;
  final List<String> moods = Mood.stringValues();
  final List<String> colorPaletteType = ColorPaletteType.stringValues();
  
  Mood_ViewModel({required this.ideaType});
  String moodTextShow(){
    switch (ideaType){
    case "object concept art": return "Choose color palette";
    case "character concept art": return "Choose character main characteristic";
    case "environment concept art": return "Choose environment atmosphere";
    default: return "Choose mood";
  }
  }  

  List<String> moodAvailableChoices(){
  switch (ideaType){
    case "object concept art": return colorPaletteType;
    case "character concept art": return moods.map((e) => e.replaceFirst(RegExp('scary'), 'angry')).toList();
    default: return moods;
  }
  }
}
