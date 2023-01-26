import 'package:posts_app/features/posts/data/datasources/posts_remote_data_source.dart';
import 'package:posts_app/features/posts/domain/entities/post_entity.dart';
import 'package:posts_app/features/posts/domain/repositories/posts_repository.dart';

class PostsRepositoryImpl implements PostsRepository {
  final PostsRemoteDataSource remoteDataSource;

  PostsRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<List<PostEntity>> getPosts() async {
      try {
        final remotePosts = await remoteDataSource.getAllPosts();
        return remotePosts;
      } catch(e){
        return [] ;
      }
    } 
     
    }
  