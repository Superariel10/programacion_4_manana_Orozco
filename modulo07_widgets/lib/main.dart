import 'package:flutter/material.dart';

import 'widgets/semaforo.dart';
import 'widgets/cronometro.dart';
import 'widgets/tarjeta_dispositivo.dart';
import 'widgets/layout_responsivo.dart';

void main() {
  runApp(const AppMonitor());
}

class AppMonitor extends StatelessWidget {
  const AppMonitor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ejercicios Flutter"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 20),

              Text("Semáforo"),
              Semaforo(),

              Divider(),

              Text("Cronómetro"),
              Reloj(),

              Divider(),

              Text("Tarjeta Dispositivo"),
              TarjetaDispositivo(),

              Divider(),

              Text("Layout Responsivo"),
              LayoutResponsivo(),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}