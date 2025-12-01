import 'package:flutter/material.dart';

import 'home.dart';
import 'add_screen.dart';
import 'product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins', 
        useMaterial3: true,
      ),
      title: 'Ecommerce',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/product': (context) => const ProductScreen(),
        '/add': (context) => const AddScreen()
      },
    );
  }
}



