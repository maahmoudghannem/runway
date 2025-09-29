import 'package:flutter/material.dart';
import 'presentation/screens/home_screen.dart';
import 'presentation/screens/products_screen.dart';
import 'presentation/screens/splash_screen.dart';

void main() => runApp(const Runway());

class Runway extends StatelessWidget {
  const Runway({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ProductsScreen.id: (context) => ProductsScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
    );
  }
}
