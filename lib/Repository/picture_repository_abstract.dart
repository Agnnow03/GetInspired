import 'package:get_inspired/Model/picture.dart';

abstract class PictureRepositoryAbstract{

  savePicture({required String ideaId});
  //temporary argument
  
  //Future<Picture> getPictures();
  Picture getPictures();
 
}