import 'package:flutter/material.dart';
import 'package:imccloneweb2/page/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Color(0XFF2a2d38)),
      home: HomePage(),
    );
  }
}
