import 'package:flutter/material.dart';
import '../widgets/calc_button.dart'; // Importamos nuestro widget

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    // SafeArea asegura que no dibujemos detrás del notch o la isla dinámica
    return Scaffold(
      backgroundColor: Colors.black, // Fondo negro clásico de iOS
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // --- ÁREA DE VISUALIZACIÓN ---
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: const Text(
                  '0', // Texto estático por ahora
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 90,
                    fontWeight: FontWeight.w300,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            
            // --- TECLADO ---
            // Fila 1: Funciones especiales
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalcButton(text: 'AC', backgroundColor: const Color(0xFFA5A5A5), textColor: Colors.black),
                CalcButton(text: '+/-', backgroundColor: const Color(0xFFA5A5A5), textColor: Colors.black),
                CalcButton(text: '%', backgroundColor: const Color(0xFFA5A5A5), textColor: Colors.black),
                CalcButton(text: '÷', backgroundColor: const Color(0xFFFF9F0A)),
              ],
            ),
            // Fila 2: 7, 8, 9, x
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalcButton(text: '7'),
                CalcButton(text: '8'),
                CalcButton(text: '9'),
                CalcButton(text: '×', backgroundColor: const Color(0xFFFF9F0A)),
              ],
            ),
            // Fila 3: 4, 5, 6, -
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalcButton(text: '4'),
                CalcButton(text: '5'),
                CalcButton(text: '6'),
                CalcButton(text: '-', backgroundColor: const Color(0xFFFF9F0A)),
              ],
            ),
            // Fila 4: 1, 2, 3, +
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalcButton(text: '1'),
                CalcButton(text: '2'),
                CalcButton(text: '3'),
                CalcButton(text: '+', backgroundColor: const Color(0xFFFF9F0A)),
              ],
            ),
            // Fila 5: 0, ., =
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // El botón 0 es ancho (isWide: true)
                CalcButton(text: '0', isWide: true),
                CalcButton(text: '.'),
                CalcButton(text: '=', backgroundColor: const Color(0xFFFF9F0A)),
              ],
            ),
            const SizedBox(height: 10), // Espacio extra al final
          ],
        ),
      ),
    );
  }
}