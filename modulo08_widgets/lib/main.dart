import 'package:flutter/material.dart';

import 'widgets/tarjeta_trafico.dart';
import 'widgets/fila_estadisticas.dart';
import 'widgets/grid_puertos.dart';
import 'widgets/layout_responsivo_builder.dart';

void main() {
  runApp(const AppMonitor());
}

class AppMonitor extends StatelessWidget {
  const AppMonitor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Monitor Infraestructura',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitor de Infraestructura'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            const Text(
              'Tarjetas de Tráfico',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Row(
              children: [
                Expanded(
                  child: TarjetaTrafico(
                    interfaz: 'eth0',
                    porcentaje: 75,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: TarjetaTrafico(
                    interfaz: 'wlan0',
                    porcentaje: 42,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Text(
              'Estadísticas',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 12),

            FilaEstadisticas(),

            SizedBox(height: 20),

            Text(
              'Puertos del Switch',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 12),

            GridPuertos(),

            SizedBox(height: 20),

            Text(
              'Layout Responsivo',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 12),

            SizedBox(
              height: 400,
              child: LayoutResponsivoBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}