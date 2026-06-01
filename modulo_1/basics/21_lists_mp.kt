fun main() {
 println("Listas-Inmutables")
 val sacramiento = listOf("bautizo", "confirmacion", "confesion", "orden_sacerdotal", "matrimonio")
 println("Mostrar el elemento indice 0: ${sacramiento[0]}")
 println("Mostrar el primer elemento: ${sacramiento.first()}")
 println("Mostrar el ultimo elemento: ${sacramiento.last()}")
 
 println("Mostrar el elemento indice 2: ${sacramiento.get(2)}")
 println("Mostrar indice contenido elemento: ${sacramiento.indexOf("banana")}")
 println("Verificar existencia de elemento: ${sacramiento.contains("cereza")}")
 println("Verificar existencia de un elemento: ${"confesion" in sacramiento}")
 // Sublista
 println("sublista ${sacramiento.subList(1,3)}")
 println("tomar primeros 2 elementos: ${sacramiento.take(2)}")
 println("suprimir tres primeros elementos: ${sacramiento.drop(3)}")
 println("tomar los ultimos dos elementos: ${sacramiento.takeLast(2)}")
 
 for(sacramientos in sacramiento){
     println(sacramientos)
 }
 println("Listas-Mutables")
 val edad = mutableListOf(18,25,14,50)
 println(edad)
 edad.add(12)
 println(edad)
 edad.add(0,19)
 println(edad)
 edad.remove(14)
 println(edad)
 edad[1]=74
 println(edad)
 
 println("Array deque")
 val deque = ArrayDeque<Int>()
 println(deque)
 deque.addFirst(1)
 println(deque)
 deque.addLast(2)
 println(deque)
 deque.addLast(0)
 println(deque)
 deque.removeFirst()
 println(deque)
 deque.removeLast()
 println(deque)
}