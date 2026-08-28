import 'dart:async';
import 'package:flutter/material.dart';

class Reloj extends StatefulWidget {
  const Reloj({super.key});

  @override
  State<Reloj> createState() => _RelojState();
}

class _RelojState extends State<Reloj> {
  late Timer _timer;

  int _segundos = 0;
  bool _pausado = false;

  final List<String> _vueltas = [];

  @override
  void initState() {
    super.initState();
    _iniciarTimer();
  }

  void _iniciarTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (!mounted) return;

        setState(() {
          _segundos++;
        });
      },
    );
  }

  void _togglePausa() {
    setState(() {
      _pausado = !_pausado;

      if (_pausado) {
        _timer.cancel();
      } else {
        _iniciarTimer();
      }
    });
  }

  void _registrarVuelta() {
    setState(() {
      _vueltas.add(_formato);
    });
  }

  void _reiniciar() {
    _timer.cancel();

    setState(() {
      _segundos = 0;
      _pausado = false;
      _vueltas.clear();
    });

    _iniciarTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String get _formato {
    final h = _segundos ~/ 3600;
    final m = (_segundos % 3600) ~/ 60;
    final s = _segundos % 60;

    return '$h:${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }

  Color get _colorTiempo {
    if (_segundos < 30) {
      return Colors.green;
    }

    if (_segundos < 60) {
      return Colors.orange;
    }

    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Cronómetro de Sesión",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              _formato,
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: _colorTiempo,
                fontFamily: 'monospace',
              ),
            ),

            const SizedBox(height: 20),

            Wrap(
              spacing: 10,
              children: [
                FilledButton.icon(
                  onPressed: _togglePausa,
                  icon: Icon(
                    _pausado
                        ? Icons.play_arrow
                        : Icons.pause,
                  ),
                  label: Text(
                    _pausado
                        ? "Reanudar"
                        : "Pausar",
                  ),
                ),

                FilledButton.icon(
                  onPressed: _registrarVuelta,
                  icon: const Icon(Icons.flag),
                  label: const Text("Vuelta"),
                ),

                TextButton.icon(
                  onPressed: _reiniciar,
                  icon: const Icon(Icons.refresh),
                  label: const Text("Reiniciar"),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Text(
              _pausado
                  ? "Pausado"
                  : "Corriendo",
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 20),

            const Divider(),

            const Text(
              "Vueltas registradas",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              height: 180,
              child: _vueltas.isEmpty
                  ? const Center(
                      child: Text(
                        "No hay vueltas registradas",
                      ),
                    )
                  : ListView.builder(
                      itemCount: _vueltas.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            child: Text(
                              "${index + 1}",
                            ),
                          ),
                          title: Text(
                            _vueltas[index],
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}