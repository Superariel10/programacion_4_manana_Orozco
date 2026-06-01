// Clase base — comportamiento y datos comunes
class Sacramiento {
  final String nombre;
  final int    edadAnios;

  Sacramiento(this.nombre, this.edadAnios);

  // Método que cada subclase debe especializar
  String hacerSonido() => '...';

  // Método común — reutilizado sin cambios por todas las subclases
  void presentarse() {
    print('Soy $nombre, tengo $edadAnios años y soy un: ${hacerSonido()}');
  }
}

// HERENCIA: Niño y Adulto reutilizan Sacramiento y lo especializan
class Niño extends Sacramiento {
  Niño(super.nombre, super.edadAnios);

  @override
  String hacerSonido() => '¡Niño!';

  void buscarPelota() => print('$nombre busca la pelota para jugar futbol');
}

class Adulto extends Sacramiento {
  Adulto(super.nombre, super.edadAnios);

  @override
  String hacerSonido() => '¡Adulto!';

  void trepar() => print('$nombre trepa al árbol para alcanzar las frutas 🌳');
}

void main() {
  final niño = Niño('Juan', 8);
  final adulto = Adulto('María', 30);

  niño.presentarse();   // Soy Juan, tengo 8 años y soy un: ¡Niño!
  adulto.presentarse();  // Soy María, tengo 30 años y soy un: ¡Adulto!

  niño.buscarPelota();
  adulto.trepar();
}