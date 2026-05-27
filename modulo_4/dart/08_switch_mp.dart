void main() {
  String codigoHttp = '404';

  switch (codigoHttp) {
    case '200':
      print('OK');
    case '201':
      print('Creado');
    case '400':
      print('Petición incorrecta');
    case '401':
      print('No autorizado');
    case '404':
      print('No encontrado');
    case '500':
      print('Error del servidor');
    default:
      print('Código desconocido');
  }

  // Switch expresión — asigna el resultado a una variable
  codigoHttp = '404';

  String descripcion = switch (codigoHttp) {
    '200' => 'OK — solicitud exitosa',
    '201' => 'Created — recurso creado',
    '204' => 'No Content — sin contenido',
    '400' => 'Bad Request — datos inválidos',
    '401' => 'Unauthorized — sin autenticación',
    '403' => 'Forbidden — sin permiso',
    '404' => 'Not Found — recurso no existe',
    '500' => 'Internal Server Error',
    '503' => 'Service Unavailable',
    _     => 'Código HTTP desconocido',  // _ es el caso por defecto
  };

  print(descripcion);  // Not Found — recurso no existe

    int codigoNumerico = 404;

  // Múltiples valores en una rama con ||
  String categoria = switch (codigoNumerico) {
    200 || 201 || 204       => 'Éxito (2xx)',
    301 || 302 || 307       => 'Redirección (3xx)',
    400 || 401 || 403 || 404 => 'Error del cliente (4xx)',
    500 || 502 || 503       => 'Error del servidor (5xx)',
    _                       => 'Desconocido',
  };

  print(categoria);  // Error del cliente (4xx)

  // Guards — condición adicional con 'when'
  double temperatura = 39.2;

  String alerta = switch (temperatura) {
    double t when t >= 40.0 => '🚨 CRÍTICO — llame a emergencias, no es apto para el sacramiento',
    double t when t >= 38.5 => '🔴 FIEBRE ALTA — consulte médico, no es apto para el sacramiento',
    double t when t >= 37.5 => '🟡 FIEBRE LEVE — descanse, no es apto para el sacramiento',
    double t when t >= 36.0 => '🟢 NORMAL, apto para el sacramiento',
    _                       => '🔵 HIPOTERMIA — abrígese, no apto para el sacramiento',
  };

  print(alerta);  // 🔴 FIEBRE ALTA — consulte médico

    // switch puede verificar el TIPO del valor
  Object respuestaApi = {'id': 1, 'categoria': 'Bautizo', 'precio': 10.99};

  String resultado = switch (respuestaApi) {
    Map<String, dynamic> m when m.containsKey('error') =>
        'Error: ${m['error']}',
    Map<String, dynamic> m =>
        'Inscripcion: ${m['categoria']} — \$${m['precio']}',
    List<dynamic> lista =>
        '${lista.length} elementos en la lista',
    String texto =>
        'Texto recibido: $texto',
    _ =>
        'Respuesta desconocida',
  };

  print(resultado);  // Inscripcion: Bautizo — $10.99
}