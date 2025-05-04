
import 'package:flutter/material.dart';
import 'screens/landing_screen.dart';
import 'screens/history_screen.dart';

void main() {
  runApp(DeezparkApp());
}

class DeezparkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deezpark',
      theme: ThemeData(
        primaryColor: Color(0xFF203731),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFFFB612)),
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingScreen(),
        '/history': (context) => HistoryScreen(),
      },
    );
  }
}
