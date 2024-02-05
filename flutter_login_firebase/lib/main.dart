import 'package:flutter/material.dart';
import 'package:flutter_login_firebase/features/app/splash_screen/splash_screen.dart';
import 'package:flutter_login_firebase/user_auth/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      
      home: SplashScreen(
        child: LoginPage(),
      )
    );
  }
}




  