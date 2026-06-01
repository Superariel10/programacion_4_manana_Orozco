interface Serializable {
    val id: String                    // abstracta — debe implementarse
    fun serializar(): String          // abstracta — debe implementarse
    val version: Int get() = 1        // con default — puede sobreescribirse
}

interface Validable {
    val errores: List<String>
    val esValido: Boolean get() = errores.isEmpty()

    fun validar(): Boolean
    fun imprimirErrores() {                // implementación por defecto
        if (errores.isEmpty()) println("Sin errores")
        else errores.forEach { println("  ❌ $it") }
    }
}

// POLIMORFISMO: Pedido puede usarse donde se espere Serializable O Validable
data class Pedido(
    override val id: String,
    val cliente:     String,
    val categoria:       List<String>,
    val total:       Double
) : Serializable, Validable {

    override fun serializar() =
        "$id|$cliente|${categoria.joinToString(",")}|$total"

    override val errores: List<String> get() = buildList {
        if (cliente.isBlank()) add("El cliente no puede estar vacío")
        if (categoria.isEmpty())   add("La categoria debe tener al menos 1 miembro")
        if (total <= 0)        add("El total debe ser mayor que cero")
    }

    override fun validar() = esValido
}

fun main() {
    val pedido1 = Pedido("P001", "Ana", listOf("Bautizo"), 14.00)
    val pedido2 = Pedido("P002", "",    emptyList(),                -5.0)

    // Polimorfismo por interfaz
    fun procesarSerializable(s: Serializable) = println("→ ${s.serializar()}")
    fun procesarValidable(v: Validable) {
        println("Válido: ${v.esValido}")
        v.imprimirErrores()
    }

    procesarSerializable(pedido1)   // → P001|Ana|Bautizo|14.00
    procesarValidable(pedido1)      // Válido: true / Sin errores
    procesarValidable(pedido2)      // Válido: false / ❌ ...
}