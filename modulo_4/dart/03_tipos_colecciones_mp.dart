void main() {
  // List — lista ordenada (como List en Kotlin)
  List<String> sacramiento   = ['Bautizo', 'Matrimonio', 'Confesion'];
  var          numeros  = [1, 2, 3, 4, 5];       // tipo inferido: List<int>

  print(sacramiento[0]);         // Bautizo
  print(sacramiento.length);     // 3
  sacramiento.add('Confirmacion');
  frutas.remove('banana');

  // Map — clave → valor (como Map en Kotlin)
  Map<String, int> edades = {
    'Ana':   37,
    'Manuel':  30,
    'Emilia': 26,
  };

  print(edades['Ana']);     // 37
  print(edades['Pepe']);   // null — clave no existe
  edades['Carlos'] = 45;    // añadir

  // Set — sin duplicados (como Set en Kotlin)
  Set<String> tags = {'Bautizo','Matrimonio','Confesion'};
  tags.add('Matrimonio');      // ignorado — ya existe
  print(tags.length);       // 4

  // Spread operator — para combinar colecciones
  var lista1 = [1, 2, 3];
  var lista2 = [4, 5, 6];
  var combinada = [...lista1, ...lista2];  // [1, 2, 3, 4, 5, 6]
  print(combinada);

  // Collection if — elementos condicionales
  bool mostrarExtra = true;
  var items = [
    'elemento1',
    'elemento2',
    if (mostrarExtra) 'elemento3',  // solo si la condición es true
  ];

  // Collection for — generar elementos
  var cuadrados = [for (var i = 1; i <= 5; i++) i * i];
  print(cuadrados);  // [1, 4, 9, 16, 25]
}