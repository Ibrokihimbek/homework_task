import 'package:flutter/material.dart';
import 'package:praktikum_lesson/screens/home_page/pages/home_page.dart';
import 'package:praktikum_lesson/screens/seconds/text_field_example.dart';
import 'package:praktikum_lesson/screens/splash_page/splash_page.dart';
import 'package:praktikum_lesson/screens/third/rich_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: SplashPage(),
    );
  }
}
