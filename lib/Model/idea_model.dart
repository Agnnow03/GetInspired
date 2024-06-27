import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get_inspired/Model/picture.dart';

import 'types.dart';


//parameter isComplex = simple/complex idea
class Idea{
final String ideaName;
final String ideaType; // I will convert from enum to string by  IdeaType.character.toString();
final String ideaTheme;
final String description;
final String ideaSubType;
final String ideaMood;
final List<Color> colorPalette;
final String themeExample;
//late Picture picture;   reference to a picture
// IDEA - include tips like - TRY to explore (...) mythology or culture
//late bool isComplex;
//methods

// opdowiednie listy
Idea({required this.themeExample,required this.ideaName,required this.ideaType, required this.ideaSubType, required this.ideaTheme,
 required this.description,
 required this.ideaMood,required this.colorPalette});
Idea copyWith({
  String? ideaName,
  String? ideaType,
  String? ideaSubType,
  String? ideaTheme,
  String? description,
  String ? ideaMood,
  List<Color> ? colorPalette,
  String? themeExample,
})
{
  return Idea(
    ideaType: ideaType ?? this.ideaType,
    ideaName: ideaName ?? this.ideaName,
    ideaTheme: ideaTheme ?? this.ideaTheme,
    description: description ?? this.description,
    ideaSubType: ideaSubType ?? this.ideaSubType,
    ideaMood: ideaMood ?? this.ideaMood,
    colorPalette: colorPalette ?? this.colorPalette,
    themeExample: themeExample ?? this.themeExample,
  );
}

} 
