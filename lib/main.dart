import 'package:flutter/material.dart';
import 'screens/calculator_screen.dart'; // Importamos la pantalla

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iOS Calculator Clone',
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        // Configuramos el tema oscuro para que coincida con el diseño
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}