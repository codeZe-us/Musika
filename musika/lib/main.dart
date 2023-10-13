import 'package:flutter/material.dart';

import 'src/constant/size_config/size_config.dart';
import 'src/presentation/screens/home_page/home_page.dart';
import 'src/presentation/screens/profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Musika',
      navigatorKey: kNavigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Profile()
    );
  }
}

