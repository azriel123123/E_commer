import 'package:e_commerce/pages/ui/pages.dart';
  import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home' : (context) => HomePage(),
        '/sign_in' : (context) => SignInPage(),
        '/sign_up' : (context) => SignUpPage(),
        '/main' : (context) =>  MainPage(),
        '/detail_chat' : (context) =>  DetailChatPage(),
      },
    );
  }
}
