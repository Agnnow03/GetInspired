import 'package:get_inspired/Model/idea_model.dart';
import 'package:get_inspired/Repository/idea_repository_abstract.dart';

class IdeaRepository extends IdeaRepositoryAbstract{
  @override
  saveIdea({required String ideaId}){
    //
  }

  @override
  Future<Idea> getIdeas() async{
    final idea = Idea(ideaName: "",ideaType: "",ideaSubType: "",ideaTheme:"",description: "",ideaMood: "",colorPalette: [],themeExample: ""); 
    return idea; //for tetsing ! change later
  }
 
}