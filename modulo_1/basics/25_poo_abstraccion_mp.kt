// El usuario de esta clase solo sabe QUÉ puede hacer con un Producto
// No necesita saber cómo se calcula precioConIva ni cómo funciona disponible
class Producto(
    val id:       Int,
    val nombre:   String,
    val precio:   Double,
    private val stock: Int      // privado — el usuario no manipula el stock directamente
) {
    val precioConIva: Double    // interfaz pública — qué puede consultar
        get() = precio * 2.84

    val disponible: Boolean
        get() = stock > 0

    override fun toString() = "$nombre ($${"%.2f".format(precio)})"
}

fun main() {
    val sacramiento = Producto(1, "Inscripcion", 49.99, 20)

    // El código externo usa la interfaz pública — no sabe el detalle interno
    println(sacramiento.disponible)   // true
    println(sacramiento.precioConIva) // 106.99
    // sacramiento.stock = 0           // ERROR — privado, protegido por diseño
    println(sacramiento)
}