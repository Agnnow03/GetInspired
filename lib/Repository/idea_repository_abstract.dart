

import 'package:get_inspired/Model/idea_model.dart';

abstract class IdeaRepositoryAbstract{

  saveIdea({required String ideaId});
  
  //Future<Idea> getIdeas();
  Idea getIdeas();
 
}