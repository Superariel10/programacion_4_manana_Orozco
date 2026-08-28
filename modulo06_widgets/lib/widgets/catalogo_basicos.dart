import 'package:flutter/material.dart';

class CatalogoBasicos extends StatelessWidget {
  const CatalogoBasicos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets básicos')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
        // ── Text básico ───────────────────────────────────────────────────────
        const Text('nginx-proxy: En línea',
        style: TextStyle(
          fontSize:      20,
          fontWeight:    FontWeight.bold,    // .w100–.w900  ·  .bold = .w700
          color:         Colors.green,
          letterSpacing: 0.5,
          fontStyle:     FontStyle.normal,   // .italic
          decoration:    TextDecoration.underline,//             .underline  .lineThrough  .overline
          shadows: [Shadow(color: Colors.black26, blurRadius: 4, offset: Offset(2,2))]
        ),
      ),
      const SizedBox(height: 8),

// ── Alineación y desbordamiento ───────────────────────────────────────
      SizedBox(
        width: double.infinity,
        child: Text(
          'api-gateway-produccion-region-us-east → sin respuesta',
          textAlign: TextAlign.justify,        // .left  .right  .justify  .start  .end
          maxLines:  2,
          overflow:  TextOverflow.fade,   // .clip  .fade  .visible
          softWrap: false
        ),
      ),
      const SizedBox(height: 8),

// ── Text.rich — estilos distintos en un solo widget ───────────────────
      const Text.rich(
        TextSpan(children: [
                  TextSpan(text: 'Estado: ',
                    style: TextStyle(fontWeight: FontWeight.w600)),
                  TextSpan(text: 'CRÍTICO',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                  TextSpan(text: ' — última revisión hace 5 min',
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ]),
                ),
      const SizedBox(height: 8),

// ── SelectableText — el usuario puede seleccionar y copiar ───────────
        const SelectableText('10.0.0.12:5432',
          style: TextStyle(fontFamily: 'monospace', fontSize: 14),
        ),
        const Divider(height: 32),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.html,  size: 40, color: Color.fromARGB(255, 0, 44, 238)),
            Icon(Icons.favorite,        size: 40, color: Colors.red),
            Icon(Icons.key, size: 40, color: Colors.orange),
            Icon(Icons.add,           size: 40, color: Color.fromARGB(255, 5, 212, 133)),
            Icon(Icons.gavel,      size: 40, color: Color.fromARGB(255, 110, 62, 7)),
          ],
        ),
        const SizedBox(height: 8),
        const Icon(Icons.pets,
        size:          24,
        color:         Color.fromARGB(255, 255, 208, 0),
        semanticLabel: 'Configuración'),   // leído por lectores de pantalla
        const Divider(height: 32),
        // ── Cuatro variantes ──────────────────────────────────────────────────
        Wrap(
          spacing: 8, runSpacing: 8,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('ElevatedButton')),
            FilledButton(  onPressed: () {}, child: const Text('FilledButton')),
            OutlinedButton(onPressed: () {}, child: const Text('OutlinedButton')),
            TextButton(    onPressed: () {}, child: const Text('TextButton')),
            ElevatedButton(onPressed: () {},  child: const Text('Desactivado')),
            //             ↑ onPressed: null → desactiva el botón visualmente
          ],
        ),
        const SizedBox(height: 12),

// ── Variantes .icon ───────────────────────────────────────────────────
        Wrap(
          spacing: 8, runSpacing: 8,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon:  const Icon(Icons.refresh, size: 18),
              label: const Text('Reiniciar'),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon:  const Icon(Icons.stop, size: 18),
              label: const Text('Detener'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon:  const Icon(Icons.stop, size: 18),
              label: const Text('Detener textbutton'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon:  const Icon(Icons.stop, size: 18),
              label: const Text('Detener outlinedbutton'),
            ),
            IconButton(
              onPressed: () {},
              icon:     const Icon(Icons.settings),
              color:    Colors.indigo,
              iconSize: 28,
              tooltip: 'Detiene todos los servicios'
            ),
          ],
        ),
        const SizedBox(height: 12),

// ── Botón con estilo personalizado ────────────────────────────────────
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red.shade600,
            foregroundColor: Colors.white,
            padding:     const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
            shape: const StadiumBorder(),
            elevation:   12,
          ),
          child: const Text('Acción crítica',
          style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        const Divider(height: 32),
        
        Card(
          elevation: 12,
          margin: const EdgeInsets.only(bottom: 8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            leading:  const Icon(Icons.dns, color: Colors.indigo),
            title:    const Text('nginx-proxy'),
            subtitle: const Text('Se ha lanzado al menos un juego de Super Mario para todas las principales consolas de videojuegos de Nintendo'),
            trailing: const Icon(Icons.circle, color: Colors.green, size: 12),
            onTap:    () {},           // toda la fila queda tocable
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            isThreeLine: true,
          ),
        ),
        Card(
          elevation: 1,
          color: const Color.fromARGB(255, 231, 129, 144),
          child: ListTile(
            leading: CircleAvatar(
            backgroundColor: Colors.red.shade100,
            child: const Icon(Icons.cancel, color: Colors.red, size: 20),
            ),
            title:    const Text('backup-worker'),
            subtitle: const Text('El primer título de la serie, "Super Mario Bros.", lanzado para el Nintendo Entertainment System (NES) en 1985'),
            trailing: TextButton(onPressed: () {}, child: const Text('Ver')),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            isThreeLine: true,
          ),
        ),
        const Divider(height: 32),
        Card(child: SwitchListTile(value: false, onChanged: (_){}, title: const Text('Modo mantenimiento'))),

        Wrap(
          spacing: 8, runSpacing: 8,
          children: [
            const Chip(label: Text('nginx')),
            const Chip(label: Text('python')),
            const Chip(label: Text('java')),
            const Chip(label: Text('C++')),
            const Chip(
              avatar:          Icon(Icons.check, size: 16, color: Colors.white),
              label:           Text('TLS 1.3'),
              backgroundColor: Colors.blue,
              labelStyle:      TextStyle(color: Colors.white, fontSize: 12),
            ),
            FilterChip(
              label:      const Text('HTTP/2'),
              selected:   false,
              onSelected: (_) {},
              deleteIcon: const Icon(Icons.close, size: 16)
            ),
            ActionChip(
            label:     const Text('Ver logs'),
            avatar:    const Icon(Icons.open_in_new, size: 16),
            onPressed: () {},
            padding: const EdgeInsets.all(8)
            ),
            InputChip(
              avatar:          Icon(Icons.check, size: 16, color: const Color.fromARGB(255, 223, 46, 46)),
              label:           Text('Desactivar logs'),
              onSelected: (_) {},
              onDeleted: () {},
            )
          ],
        ),
        const Divider(height: 32),
        // ── Circular ──────────────────────────────────────────────────────────
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SizedBox(width: 48, height: 48,
              child: CircularProgressIndicator()),           // value: null → animación continua
            SizedBox(width: 48, height: 48,
              child: CircularProgressIndicator(
              backgroundColor: Color.fromARGB(255, 61, 150, 34),
              value:       null,           // 70 %
              color:       Colors.green,
              strokeWidth: 6,
            )),
            SizedBox(width: 48, height: 48,
              child: CircularProgressIndicator(
              value:       0.3,
              color:       Colors.red,
              strokeWidth: 3,
              strokeCap:   StrokeCap.round,   // puntas redondeadas
            )),
          ],
        ),
        const SizedBox(height: 16),

// ── Lineal ────────────────────────────────────────────────────────────
        const LinearProgressIndicator(),                                  // indeterminado
        const SizedBox(height: 8),
        const LinearProgressIndicator(value: 0.6, color: Colors.indigo), // 60 %
        const SizedBox(height: 8),
        const LinearProgressIndicator(
          value:     1.0,
          color:     Colors.green,
          minHeight: 12,                     // barra más gruesa (default: 4)
        ),
        const Divider(height: 32),
        ],
      ),
    );
  }
}