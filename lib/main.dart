import 'package:flutter/material.dart';
import 'package:today_webtoon/screens/home_screen.dart';
import 'package:today_webtoon/services/api_services.dart';

void main() {
  ApiService().getTodaysToons();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
