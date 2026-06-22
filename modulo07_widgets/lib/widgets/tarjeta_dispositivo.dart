import 'package:flutter/material.dart';

class TarjetaDispositivo extends StatefulWidget {
  const TarjetaDispositivo({super.key});

  @override
  State<TarjetaDispositivo> createState() => _TarjetaDispositivoState();
}

class _TarjetaDispositivoState extends State<TarjetaDispositivo> {
  bool expandido = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: InkWell(
        onTap: () {
          setState(() {
            expandido = !expandido;
          });
        },
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(Icons.router),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Router Principal",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                AnimatedCrossFade(
                  duration: const Duration(milliseconds: 300),

                  crossFadeState: expandido
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,

                  firstChild: const SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Toca para ver detalles",
                      textAlign: TextAlign.center,
                    ),
                  ),

                  secondChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Divider(),

                      ListTile(
                        leading: Icon(Icons.language),
                        title: Text("IP"),
                        subtitle: Text("192.168.1.1"),
                      ),

                      ListTile(
                        leading: Icon(Icons.memory),
                        title: Text("MAC"),
                        subtitle: Text("00:1A:2B:3C:4D:5E"),
                      ),

                      ListTile(
                        leading: Icon(Icons.check_circle),
                        title: Text("Estado"),
                        subtitle: Text("Conectado"),
                      ),

                      ListTile(
                        leading: Icon(Icons.speed),
                        title: Text("Latencia"),
                        subtitle: Text("12 ms"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}