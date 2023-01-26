import 'package:posts_app/features/posts/domain/entities/post_entity.dart';

abstract class PostsRepository {

  Future<List<PostEntity>> getPosts();
  /*Future<List<PostEntity>> addPosts();
  Future<List<PostEntity>> deletePosts();*/

}
