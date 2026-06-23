import 'package:flutter/material.dart';

class FilaEstadisticas extends StatelessWidget {
  const FilaEstadisticas({super.key});

  Widget seccion(String valor, String texto) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Text(
            valor,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(texto),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        seccion('45ms', 'Latencia'),

        const VerticalDivider(),

        seccion('12.4k', 'Paquetes'),

        const VerticalDivider(),

        seccion('99.8%', 'Uptime'),
      ],
    );
  }
}