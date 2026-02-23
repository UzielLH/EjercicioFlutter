import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/screens/buttons_screen.dart';
import 'package:my_first_app_flutter/screens/cards_screen.dart';
import 'package:my_first_app_flutter/screens/containers.dart';
import 'package:my_first_app_flutter/screens/home_screen.dart';
import 'package:my_first_app_flutter/screens/images_banner.dart';
import 'package:my_first_app_flutter/screens/rows_columns.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/buttons': (context) => const ButtonsScreen(),
        '/rows_columns': (context) => const RowsColumnsScreen(),
        '/containers': (context) => const ContainersScreen(),
        '/images_banner': (context) => const ImagesBanner(),
        '/cards': (context) => const CardsScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
