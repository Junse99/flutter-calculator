import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;
  final bool isWide; // Para el botón "0" que es más ancho

  const CalcButton({
    super.key,
    required this.text,
    this.backgroundColor = const Color(0xFF333333), // Gris oscuro por defecto
    this.textColor = Colors.white,
    this.onPressed,
    this.isWide = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0), // Espaciado entre botones
      child: SizedBox(
        // Si es ancho ("0"), ocupa más espacio, sino es un círculo estándar
        width: isWide ? 170 : 80, 
        height: 80,
        child: ElevatedButton(
          onPressed: onPressed ?? () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: isWide
                ? const StadiumBorder() // Bordes redondos tipo píldora para el 0
                : const CircleBorder(), // Círculo perfecto para los demás
            padding: const EdgeInsets.all(20),
          ),
          child: Align(
            // Si es el 0, el texto va a la izquierda, si no, al centro
            alignment: isWide ? Alignment.centerLeft : Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}