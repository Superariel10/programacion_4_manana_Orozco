import 'package:flutter/material.dart';

class Semaforo extends StatefulWidget {
  const Semaforo({super.key});

  @override
  State<Semaforo> createState() => _SemaforoState();
}

class _SemaforoState extends State<Semaforo> {
  int estado = 0;

  String get texto {
    switch (estado) {
      case 0:
        return "STOP";
      case 1:
        return "PRECAUCIÓN";
      default:
        return "GO";
    }
  }

  Widget luz(Color color, bool activa) {
    return Opacity(
      opacity: activa ? 1.0 : 0.25,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        luz(Colors.red, estado == 0),
        const SizedBox(height: 12),
        luz(Colors.yellow, estado == 1),
        const SizedBox(height: 12),
        luz(Colors.green, estado == 2),
        const SizedBox(height: 24),
        Text(texto, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () => setState(() => estado = (estado + 1) % 3),
          child: const Text("Cambiar Estado"),
        ),
      ],
    );
  }
}