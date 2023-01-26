import 'dart:convert';
import 'package:posts_app/core/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'package:posts_app/features/posts/data/models/post_model.dart';

abstract class PostsRemoteDataSource {

  Future<List<PostModel>> getAllPosts();
  
}

class PostsRemoteDataSourceImpl implements PostsRemoteDataSource {

  final http.Client client;

  PostsRemoteDataSourceImpl({
    required this.client,
  });

  @override
  Future<List<PostModel>> getAllPosts() async {
    final response =
        await client.get(Uri.parse(Constants.kBaseApiUrl + '/posts'), headers: {
      "Content-Type": "application/json",
    });

    if (response.statusCode == 200) {
      final decodedJson = jsonDecode(response.body) as List;
      final posts = decodedJson
          .map<PostModel>((post) => PostModel.fromJson(post))
          .toList();
      return posts;
    }

    return [] ;
  }

}


