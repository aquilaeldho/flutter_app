import 'package:flutter/material.dart';

import 'sign_in_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aqi crochet',
      home: SignInPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



