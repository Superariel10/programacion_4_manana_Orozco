import 'package:flutter/material.dart';
import 'tarjeta_metrica.dart';

class LayoutResponsivo extends StatelessWidget {
  const LayoutResponsivo({super.key});

  @override
  Widget build(BuildContext context) {
    final orientacion = MediaQuery.orientationOf(context);

    final tarjetas = [
      const TarjetaMetrica(
        titulo: "CPU",
        valor: "45%",
        icono: Icons.memory,
        colorIcono: Colors.blue,
        subtitulo: "Uso actual",
      ),
      const TarjetaMetrica(
        titulo: "RAM",
        valor: "70%",
        icono: Icons.storage,
        colorIcono: Colors.green,
        subtitulo: "Memoria usada",
      ),
    ];

    if (orientacion == Orientation.portrait) {
      return Column(
        children: tarjetas,
      );
    }

    return Row(
      children: [
        Expanded(child: tarjetas[0]),
        Expanded(child: tarjetas[1]),
      ],
    );
  }
}