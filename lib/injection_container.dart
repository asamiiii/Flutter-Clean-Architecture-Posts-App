/*import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:posts_app/core/network/network_info.dart';
import 'package:posts_app/features/posts/data/datasources/posts_remote_data_source.dart';
import 'package:posts_app/features/posts/data/repositories/posts_repository_impl.dart';
import 'package:posts_app/features/posts/domain/repositories/posts_repository.dart';
import 'package:posts_app/features/posts/domain/usecases/get_all_posts_usecase.dart';
import 'package:http/http.dart' as http;*/

/*
final sl = GetIt.instance;

Future<void> init() async {
//! Features - posts

// Bloc



// Usecases

  sl.registerLazySingleton(() => GetAllPostsUseCase(sl()));

// Repository

  sl.registerLazySingleton<PostsRepository>(
      () => PostsRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()));

// Datasources

  sl.registerLazySingleton<PostsRemoteDataSource>(
      () => PostsRemoteDataSourceImpl(client: sl()));

//! Core

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

//! External

  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
*/