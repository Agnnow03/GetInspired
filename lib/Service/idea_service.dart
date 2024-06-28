import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_inspired/Model/idea_model.dart';

class IdeaService{
  final CollectionReference ideaCollection = FirebaseFirestore.instance.collection('ideas');

  Future<void> saveIdea(Idea myIdea)async{
    await ideaCollection.add(myIdea.toMap());
  }

  Future<List<Idea>> getIdeaList() async{
    final ideaListQuery = await ideaCollection.get();//zapytanie i zamiana kazdego elementu z docs ->obiekt
    return ideaListQuery.docs.map((doc)=>Idea.fromMap(doc as DocumentSnapshot<Map<String, dynamic>>)).toList(); //for tetsing ! change later
  }
 
}