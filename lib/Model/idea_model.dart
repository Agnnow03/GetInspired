import 'package:get_inspired/Model/picture.dart';

import 'types.dart';


//parameter isComplex = simple/complex idea
class Idea{
late String ideaName;
late IdeaType ideaType;
late CharacterType characterType;
late Picture picture;
// IDEA - include tips like - TRY to explore (...) mythology or culture
late bool isComplex;
// opdowiednie listy
Idea(/*this.ideaType*/){
  ideaName="";
  characterType = CharacterType.none;
  isComplex = false; //can be set to is true later
  picture = Picture("");
}

//complex option for certain parameters - mythical robot etc
} 
