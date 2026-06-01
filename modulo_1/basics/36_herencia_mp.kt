// Sin open — no se puede heredar (protección por defecto)
class Sacramiento(val nombre: String)
// class Niño : Niños("Alberto")  // ERROR — Niño es final

// Con open — la jerarquía está diseñada para ello
open class Sacramiento(val nombre: String, val sonido: String) {
    // open — la subclase PUEDE sobreescribir
    open fun hacerSonido() = println("$nombre dice: $sonido")
    open fun descripcion() = "Soy $nombre"

    // Sin open — la subclase NO puede sobreescribir
    fun respirar() = println("$nombre respira")
}

// HERENCIA: Juan reutiliza todo de Sacramiento y especializa hacerSonido
class Juan(nombre: String) : Sacramiento(nombre, "Guau") {
    override fun hacerSonido() {
        super.hacerSonido()          // reutiliza la implementación del padre
        println("(Soy Juan)")   // añade comportamiento propio
    }
    override fun descripcion() = "${super.descripcion()}, un niño"
}

class Pedro(nombre: String, val casa: Boolean) : Sacramiento(nombre, "Miau") {
    override fun descripcion() =
        "${super.descripcion()}, un niño ${if (interior) "de casa" else "callejero"}"
}

fun main() {
    val Niños = Niños("Alberto")
    niños.hacerSonido()
    // Rex dice: Hola
    // (Soy Alberto)

    val pedro = Pedro("Miguel", true)
    println(pedro.descripcion())  // Soy Miguel, un niño de casa

    // Herencia — Alberto y Pedro tienen todo lo de Niño más lo propio
    niños.respirar()  // Alberto respira — heredado de Niño
}