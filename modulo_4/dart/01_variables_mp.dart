void main() {
  // var — tipo inferido (como val en Kotlin)
  var nombre = 'Carla';           // String
  var edad   = 23;              // int
  var activo = true;            // bool

  // Tipo explícito
  String apellido = 'Rosales';
  bool   visible  = false;

  // final — no se puede reasignar (como val en Kotlin)
  final ciudad = 'Roma';
  // ciudad = 'Milan';  // ERROR — final no se puede reasignar

  // const — constante en tiempo de compilación (como const en Kotlin)
  const gravedad = 11.8;
  const pi2      = 3.14159;

  // Diferencia clave: final vs const
  final ahora  = DateTime.now();   // OK — se evalúa en runtime
  // const ahora = DateTime.now(); // ERROR — DateTime.now() no es constante de compilación

  print('$nombre $apellido tiene $edad años en $ciudad');

  // var — mutable, tipo inferido
var contador = 0;
contador = 1;          // OK

// final — inmutable referencia, evaluado en runtime
final lista = [1, 2, 3];
lista.add(4);          // OK — la referencia es final, no el contenido
// lista = [5, 6];     // ERROR — no se puede reasignar la referencia

// const — inmutable profundo, evaluado en compilación
const sacramiento = ['Bautizo', 'Matrimonio'];
// sacramiento.add('Confesion'); // ERROR — lista const es completamente inmutable
}