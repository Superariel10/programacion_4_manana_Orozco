data class Sacramiento(
    val id:        Int,
    val nombre:    String,
    val apellido:  String,
    val categoria: String,
    val activo:    Boolean = true
)

fun main() {
    val p1 = Sacramiento(1, "Carlos", "Alquinga", "Bautizo")
    val p2 = Sacramiento(2, "Jose", "Perez", "Confesion")
    val p3 = Sacramiento(3, "Juan", "Benavidez", "Matrimonio")

    // toString() automático
    println(p1)  // Sacramiento(id=1, nombre=Carlos, ...)

    // equals() por valor
    println(p1 == p2)   // true
    println(p1 == p3)   // false

    // copy() — nuevo objeto con cambios puntuales
    val edad   = p1.copy(edad = 10)
    val inactivo = p1.copy(activo = false)

    // Desestructuración
    val (id, nombre, edad) = p1
    println("$id: $nombre — $$edad")

    // En bucles
    listOf(p1,p2,p3).forEach { (id2, nombre2, precio2) ->
        println("[$id2] $nombre2: $$precio2")
    }
}