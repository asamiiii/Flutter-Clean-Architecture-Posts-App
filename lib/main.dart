import 'package:flutter/material.dart';
import 'package:posts_app/core/utils/app_theme.dart';
import 'package:posts_app/features/posts/presentation/pages/posts_homepage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await di.init();

      runApp(const MyApp());
    
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Posts App',
            theme: appTheme,
            home: const PostsHomePage(),
          )
    ;
  }
}
