import "package:flutter/material.dart";
import 'homePage.dart';
import "chatScreen.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Chat UI",
      theme:ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xFFFEF9EB),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/chatScreen': (context) => ChatScreen(),
      }
    );
  }
}