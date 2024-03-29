import 'package:flutter/material.dart';
import 'RoutesPage.dart';
import 'BusRoutesScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Routes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const RoutesPage(),
        '/busRoutes': (context) => const BusRoutesScreen(),
      },
    );
  }
}
