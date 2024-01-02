import 'package:flutter/material.dart';
import 'package:library_app/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

const title = 'Biblioteca';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const SearchScreen(),
    );
  }
}
