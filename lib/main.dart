import 'package:ecommerse_app/Screens/bottom_navigation.dart';
import 'package:ecommerse_app/Screens/regisration_screen..dart';
import 'package:ecommerse_app/Screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: "demo",
      //theme: themeData,
      debugShowCheckedModeBanner: false,
      //home: user==null? const WelComeScreen(): const HomePageScreen(),
      home:BottomNavigaton(),
    );
  }
}
