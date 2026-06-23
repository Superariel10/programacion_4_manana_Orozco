import 'package:flutter/material.dart';

class TarjetaTrafico extends StatelessWidget {
  final String interfaz;
  final double porcentaje;

  const TarjetaTrafico({
    super.key,
    required this.interfaz,
    required this.porcentaje,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        alignment: Alignment.center,
        children: [

          RotatedBox(
            quarterTurns: 3,
            child: LinearProgressIndicator(
              value: porcentaje / 100,
              minHeight: 150,
            ),
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${porcentaje.toInt()}%',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(interfaz),
            ],
          ),
        ],
      ),
    );
  }
}