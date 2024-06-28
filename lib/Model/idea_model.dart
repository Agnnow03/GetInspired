import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get_inspired/Model/picture.dart';

import 'types.dart';


//parameter isComplex = simple/complex idea
class Idea{
final String id;
final String ideaName;
final String ideaType; // I will convert from enum to string by  IdeaType.character.toString();
final String ideaTheme;
final String description;
final String ideaSubType;
final String ideaMood;
final List<Color> colorPalette;
final String themeExample;
final List<Image> drawings;
//late Picture picture;   reference to a picture
// IDEA - include tips like - TRY to explore (...) mythology or culture
//late bool isComplex;
//methods

// opdowiednie listy
Idea({
    required this.id,
    required this.themeExample,
    required this.ideaName,
    required this.ideaType,
    required this.ideaSubType,
    required this.ideaTheme,
    required this.description,
    required this.drawings,
    required this.ideaMood,
    required this.colorPalette,
  });
Idea copyWith({
  String? id,
  String? ideaName,
  String? ideaType,
  String? ideaSubType,
  String? ideaTheme,
  String? description,
  String ? ideaMood,
  List<Color> ? colorPalette,
  String? themeExample,
  List<Image>? drawings,
})
{
  return Idea(
    id: id ?? this.id,
    ideaType: ideaType ?? this.ideaType,
    ideaName: ideaName ?? this.ideaName,
    ideaTheme: ideaTheme ?? this.ideaTheme,
    description: description ?? this.description,
    ideaSubType: ideaSubType ?? this.ideaSubType,
    ideaMood: ideaMood ?? this.ideaMood,
    colorPalette: colorPalette ?? this.colorPalette,
    themeExample: themeExample ?? this.themeExample,
    drawings: drawings ?? this.drawings,
  );
}
Map<String, dynamic> toMap(){
  return{
    'ideaName': ideaName,
    'ideaType': ideaType,
    'ideaSubType': ideaSubType,
    'ideaTheme': ideaTheme,
    'description': description,
    'ideaMood': ideaMood,
    'colorPalette': colorPalette.map((color) => color.value).toList(),
    'themeExample': themeExample,
    'drawings': drawings.map((image) => image.toString()).toList(),
  };
}
factory Idea.fromMap(DocumentSnapshot<Map<String,dynamic>> document){
final ideaMap = document.data()!;
return Idea(
  id: document.id,
  ideaName :ideaMap['ideaName'] ?? '',
    ideaType: ideaMap[ 'ideaType'] ?? '',
    ideaSubType: ideaMap['ideaSubType'] ?? '',
     ideaTheme: ideaMap['ideaTheme'] ?? '',
    description:ideaMap['description'] ?? '',
    ideaMood : ideaMap['ideaMood'] ?? '',
    colorPalette: (ideaMap['colorPalette'] as List).map((color) => Color(color)).toList(),
    themeExample: ideaMap['themeExample'] ?? "",
    drawings: (ideaMap['drawings'] as List).map((image) => Image.network(image)).toList(),
);
}

} 
