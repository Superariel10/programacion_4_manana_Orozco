void main() {
  // Forma básica
  int temperatura = 38;

  if (temperatura > 37.5) {
    print('Fiebre');
  } else if (temperatura > 36) {
    print('Normal');
  } else {
    print('Hipotermia');
  }

  // Operador ternario — para decisiones de una línea
  // condición ? valorSiVerdadero : valorSiFalso
  String estado = temperatura > 37.5 ? 'Con fiebre, no apto para el sacramiento' : 'Sin fiebre, apto para el sacramiento';
  print(estado);

  // null-aware con ternario
  String? ciudad;
  String display = ciudad != null ? ciudad.toUpperCase() : 'Sin ciudad';

  // Forma más concisa con Elvis
  String display2 = ciudad?.toUpperCase() ?? 'Sin ciudad';
  print(display2);  // Sin ciudad

  String? nombre;

  // Sin verificar — error de compilación
  // print(nombre.length);  // ERROR: nombre puede ser null

  // Forma 1 — verificación explícita
  if (nombre != null) {
    print(nombre.length);  // aquí Dart sabe que nombre es String
  }

  // Forma 2 — operador ?.
  print(nombre?.length);  // null, sin excepción

  // Forma 3 — valor por defecto
  int longitud = nombre?.length ?? 0;
  print(longitud);  // 0
}