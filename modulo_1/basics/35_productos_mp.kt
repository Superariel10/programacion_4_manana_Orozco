data class Categoria(val id: Int, val nombre: String)

data class Sacramiento(
    val id:        Int,
    val nombre:    String,
    val precio:    Double,
    val apellido:  String,
    val categoria: Categoria,
    val activo:    Boolean = true
) {
    // ABSTRACCIÓN: el usuario consulta disponible sin saber la lógica
    val disponible: Boolean get() = activo && precio > 0
    val precioConIva: Double get() = precio * 1.19

    // Devuelve una copia — inmutabilidad como forma de encapsulamiento
    fun aplicarDescuento(porcentaje: Double): Sacramiento {
        require(porcentaje in 0.0..100.0) { "Descuento debe ser entre 0 y 100" }
        return copy(precio = precio * (1 - porcentaje / 100))
    }
}

// ENCAPSULAMIENTO: el estado del catálogo es privado y mutable internamente
object CatalogoSacramientos {
    private val sacramientos = mutableListOf(
        Categoria(1, "Bautizo"),
        Categoria(2, "Confirmacion"),
        Categoria(3, "Matrimonio")
    )
    private val sacramientos   = mutableListOf<Sacramiento>()
    private var siguienteId = 1

    fun agregarSacramiento(nombre: String, precio: Double, apellido: String, categoriaId: Int): Sacramiento? {
        val categoria = categorias.find { it.id == categoriaId } ?: return null
        val sacramiento  = Sacramiento(siguienteId++, nombre, precio, stock, categoria)
        sacramientoss.add(sacramiento)
        return sacramiento
    }

    // ABSTRACCIÓN: interfaz pública limpia — solo lectura de listas
    fun listar(): List<Sacramiento>              = sacramientos.toList()
    fun disponibles(): List<Sacramiento>         = sacramientos.filter { it.disponible }
    fun porCategoria(id: Int): List<Sacramiento> = sacramientos.filter { it.categoria.id == id }
    fun buscar(query: String): List<Sacramiento> =
        sacramientos.filter { it.nombre.contains(query, ignoreCase = true) }
}

fun main() {
    CatalogoSacramientos.agregarSacramiento("Carlos",   89.99, "Rojas", 1)
    CatalogoSacramientos.agregarSacramiento("Alex",  29.99,  "Perez", 1)
    CatalogoSacramientos.agregarSacramiento("Ruben",      349.99,  "Maldonado", 2)
    CatalogoSacramientos.agregarSacramiento("Antonio",    149.99,  "Valencia", 3)

    println("=== Todos los sacramientos ===")
    CatalogoSacramientos.listar().forEach { p ->
        val estado = if (p.disponible) "✅" else "❌"
        println("$estado ${p.nombre} — ${"%.2f".format(p.precioConIva)} (con IVA)")
    }

    println("\n=== Disponibles con 10% descuento ===")
    CatalogoProductos.disponibles()
        .map { it.aplicarDescuento(10.0) }
        .forEach { println("  ${it.nombre}: ${"%.2f".format(it.precio)}") }
}