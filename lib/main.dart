import 'package:flutter/material.dart';
import 'package:shredseek/pages/feed_screen.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShredSeek',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.blue,
       fontFamily: "Poppins"
      ),
      home: FeedScreen(),
    );
  }
}


