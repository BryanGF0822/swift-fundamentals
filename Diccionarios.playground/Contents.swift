let map : [String : Any] = ["key": "value",
                           "key2": "value2",
                           "key3": 12345]

var producto : [String:Any] = [
    "id" : 0,
    "nombre" : "PC Lenovo",
    "precio" : 1000,
    "stock" : 10,
    "promocion" : true
]

/*
 Si queremos obtener un datos a partir de su llave podemos hacer de la siguiente manera:
 pero, como el tipo de dato del valor lo establecimos anteriormente como Any, entonce,
 al momento de obtener el datos, lo trae como un opcional porque no esta totalmente seguro de
 como utilizarlo. Para solucionarlo, debemos expecificar el type de dato con el que va a leer ese dato.
 
 Eso lo hacemos utilizando : as! TipoDeDato
 Ejemplo: as! String, as! Int, as! Double, as! Bool
 */
let nombre = producto["nombre"] as! String
print(nombre)


// Agregar una nueva propiedad a un diccionario
producto["Calificacion"] = 5
print(producto)

// Modificar propiedades de un diccionario
producto["stock"] = 1
producto["precio"] = 2000
print(producto)

// Remover o eliminar propiedades de un diccionario
producto.removeValue(forKey: "promocion")
print(producto)

producto["stock"] = nil
print(producto)

producto.removeAll()
print(producto)


//Ejercicio del curso
/*
 Hacer una funcion que retorne la cantidad de habitantes por pais en el formato: En (pais) hay (cantidad) de habitantes.
 si el diccionario no contiene la informacion de ese pais, debe retornar: No tengo datos suficientes para una respuesta
 esclarecedora.
 La funcion debe recibir un String, el cual será el nombre del pais de cual quiero saber el numero de habitantes.
 */

let habitantesPorPais : [String : Int] = [
    "Colombia" : 48000000,
    "Peru" : 33000000,
    "Venezuela" : 28000000,
    "Ecuador" : 17000000,
    "Brasil" : 212559417
]

func habitantesDeUnPais(pais : String) -> String {
    if habitantesPorPais.keys.contains(pais){
        return "En \(pais) hay \(habitantesPorPais[pais]!) de habitantes"
    } else {
        return "No tengo datos suficientes para una respuesta exclarecedora"
    }
}

print(habitantesDeUnPais(pais: "Colombia"))

