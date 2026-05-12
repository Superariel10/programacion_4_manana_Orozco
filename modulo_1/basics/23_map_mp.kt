fun main() {
 println("Map Inmutable")
 val sacramiento = mapOf(
     "Bebe" to "Bautizo",
     "Niño" to "Confirmacion",
     "Adolescente" to "Confesion",
     "Adulto" to "Matrimonio"
 )
 println(sacramientos["Bebe"])
 println(sacramientos["Niño"])
 println(sacramientos.getOrDefault("Bebe", "Desconocido"))
 println(sacramientos.getOrDefault("Niño", "Desconocido"))
 println(sacramientos)
 println(sacramientos.keys)
 println(sacramientos.values)
 println(sacramientos.entries)
 for((edad, sacramiento) in capitales){
     println("$edad - $sacramiento")
 }
 println("Map Mutable")
 val registro = mutableMapOf(
     "Juan" to 10,
     "Carlos" to 4,
     "Carla" to 12,
     "Ana" to 8
 )
    registro["Hanna"] = 5
    println(registro)
    registro["Juan"] = 20
    println(registro)
    registro.remove("Ana")
    println(registro)
    registro.getOrPut("Pablo") {15}
    println(registro)
    registro.getOrPut("Carla") {15}
    println(registro)
}