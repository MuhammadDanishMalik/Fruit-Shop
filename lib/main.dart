import 'package:d_shop/Views/Homepage.dart';
import 'package:d_shop/Views/product_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Homepage(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}
