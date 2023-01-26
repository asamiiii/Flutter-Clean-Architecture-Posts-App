import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:posts_app/features/posts/data/datasources/posts_remote_data_source.dart';
import 'package:posts_app/features/posts/data/repositories/posts_repository_impl.dart';
import 'package:posts_app/features/posts/domain/usecases/get_all_posts_usecase.dart';
import 'package:posts_app/features/posts/presentation/widgets/posts_page/posts_list_widget.dart';
import '../../domain/entities/post_entity.dart';
import '../logic/posts_Logic.dart';

class PostsHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: const Text('Posts'),
  );
}

Widget _buildBody() {
  var myProvider = PostsList(
    getAllPostsUseCase: GetAllPostsUseCase(
      PostsRepositoryImpl(
        remoteDataSource: PostsRemoteDataSourceImpl(client: Client())),
      ),
    );

  return FutureBuilder(
      future: myProvider.getAllPosts(),
      builder: (context, AsyncSnapshot<List<PostEntity>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(10),
          child: PostListWidget(
            posts: snapshot.data!,
          ),
        );
      });
}
