
import '../../domain/usecases/get_all_posts_usecase.dart';
import '../../domain/entities/post_entity.dart';

class PostsList  {
  final GetAllPostsUseCase getAllPostsUseCase;

  List<PostEntity> posts = [];
  
PostsList({required this.getAllPostsUseCase});

  Future<List<PostEntity>> getAllPosts() async {

    List<PostEntity> response = await getAllPostsUseCase.call();
    posts = response;
    //debugPrint(posts.length.toString());
    return posts ;
  }
}
