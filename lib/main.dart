import 'package:flutter/material.dart';

import 'pages/welcome_page.dart';
import 'styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tinder Mockup',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.pink),
      ),
      home: const WelcomePage(),
    );
  }
}
