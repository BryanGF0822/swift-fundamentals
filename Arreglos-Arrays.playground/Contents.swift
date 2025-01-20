var frutas : [String] = ["Manzana", "Pera", "Banana"]
var frutas2 =  [String]()

var conteoDeFrutas = frutas.count

// Esta es una forma de escribir la condicion.
if (conteoDeFrutas > 0) {
    var primera = frutas[0]
    print(primera)
}

// Otra forma es utilizar una propiedad de la lista como .isEmpty
if (!frutas.isEmpty) {
    var primera = frutas[0]
    print(primera)
}

let segunda = frutas[1]
let tercera = frutas[2]

// Vamos  a insertar nuevos elementos
print(frutas)
frutas.append("Fresa")
print(frutas)

// Tambien podemos usa la propiedad insert para agregar un elemento en uan posicion especifica.
frutas.insert("Uva", at: 1)
print(frutas)

// Si queremos obtener el ultimo elemento del arreglo podemos utilizar la propiedad .last
// Sin embargo, esta propiedad devuelve un opcional ya que no puede garantizar que hay un elemento
// El arreglo puede estar varia, para eso podemos desenvolver el valor agregando un !
// Pero esto no es recomendable, lo mejor es validad primero que nuestro arreglo no esté vacio
// Por ejemplo con un if

// Opcion 1 (No recomendada)
print(frutas.last!)

//Opcion 2 (Recomendada)
if (!frutas.isEmpty) {
    print(frutas.last!)
} else {
    print("El arreglo está vacío")
}

/*
 ¿Es esto seguro?
 Sí, esta técnica es segura porque evitas acceder a frutas.last! si el arreglo está vacío. Sin embargo,
 el uso del operador ! sigue siendo una acción arriesgada en general, incluso con esta validación previa.
 La razón es que el código podría ser modificado en el futuro, y alguien podría cambiar el estado del
 arreglo entre la validación y el acceso al elemento. Aunque es raro, este tipo de errores ocurre en
 aplicaciones más complejas.
 
 Cómo hacerlo más seguro
 Es mejor evitar el uso de ! cuando no estás completamente seguro de que el opcional tiene un valor.
 Puedes manejarlo de forma segura usando if let o el operador de coalescencia nil (??)
 */

// Opcion 3 (mas segura y robusta
if let ultimoFruto = frutas.last {
    print(ultimoFruto)
} else {
    print("El arreglo está vacío")
}

// Opcion 4 (mas segura y robusta)
print(frutas.last ?? "El arreglo está vacío")


// Veamos como podemos utilizar una lista para insertar sus elemento en otra lista
var nuevasFrutas : [String] = ["Naranja", "Uchuvas"]
frutas.append(contentsOf: nuevasFrutas)
print(frutas)

// Podemos usar la funcion .contains() para validad si un elemento existe dentro del arreglo
let existeFresa = frutas.contains("Fresa")
let existeSandia = frutas.contains("Sandia")

// Para remove o eliminar elemento podemos utilizar lo siguente:
// El metodo .remove(at: ) y le pasamos la posicion del elemento que queremos eliminar
frutas.remove(at: 2)
print(frutas)
// Tambien podemos eliminar el ultimo elemento utilizando .removeLast()
frutas.removeLast()
print(frutas)
// Tambien podemos borrar todos los elementos de la lista utilizando .removeAll()
frutas.removeAll()
print(frutas)

