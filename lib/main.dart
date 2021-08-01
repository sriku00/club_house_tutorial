import 'package:club_house_tutorial/AppTeme/app_theme.dart';
import 'package:club_house_tutorial/Screens/home_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clubhouse UI',
      theme: AppTheme().appTheme(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
