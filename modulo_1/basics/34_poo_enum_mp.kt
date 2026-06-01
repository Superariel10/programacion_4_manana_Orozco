enum class Estado(val descripcion: String, val esTerminal: Boolean) {
    PENDIENTE  ("Esperando procesamiento de sacramiento", false),
    EN_PROCESO ("Siendo procesado el sacramiento",        false),
    COMPLETADO ("Finalizado con éxito el sacramiento",    true),
    FALLIDO    ("Finalizado con error el sacramiento",    true),
    CANCELADO  ("Cancelado por usuario",   true);

    fun puedeTransicionarA(siguiente: Estado): Boolean = when (this) {
        PENDIENTE  -> siguiente == EN_PROCESO || siguiente == CANCELADO
        EN_PROCESO -> siguiente == COMPLETADO || siguiente == FALLIDO
        else       -> false
    }
}

fun main() {
    val estado = Estado.EN_PROCESO
    println(estado.descripcion)  // Siendo procesado
    println(estado.esTerminal)   // false

    // when exhaustivo — sin else porque el compilador conoce todos los casos
    val icono = when (estado) {
        Estado.PENDIENTE   -> "⏰"
        Estado.EN_PROCESO  -> "⏳"
        Estado.COMPLETADO  -> "✅"
        Estado.FALLIDO     -> "❌"
        Estado.CANCELADO   -> "🚫"
    }
    println(icono)  // ⏳

    println(estado.puedeTransicionarA(Estado.COMPLETADO))  // true
}