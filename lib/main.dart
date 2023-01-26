import 'package:flutter/material.dart';
import 'package:posts_app/core/utils/app_theme.dart';
import 'package:posts_app/features/posts/presentation/pages/posts_homepage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await di.init();

      runApp(MyApp());
    
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Posts App',
            theme: appTheme,
            home: PostsHomePage(),
          )
    ;
  }
}
