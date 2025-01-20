for numero in 1...10 {
    print("El numero es: \(numero)")
}

let nombres = ["Bryan", "Andres", "Diego", "Pablo"]
for nombre in nombres {
    print("El nombre es: \(nombre)")
}


// Veamos un ejemplo mas complejo
let marcasDeAutos = ["Toyota", "Honda", "Nissan", "Mazda", "Ford"]
let nombreABuscar: String = "Ferrari"

var resultado = ""
for marca in marcasDeAutos {
    /*
     Si queremos evitar que falle por mayusculas o minusculas podemos
     convertir los parametro a minusculas con la propiedad .lowercased()
     */
    if marca.lowercased() == nombreABuscar.lowercased() {
        resultado = "He encontrado la marca \(nombreABuscar)"
    }
}
if resultado.isEmpty {
    print("No he encontrado la marca \(nombreABuscar)")
} else {
    print(resultado)
}

// Tambien podemos recorrer un String
let texto = "Hola mi nombre es Bryan"
for caracter in texto {
    print(caracter)
}

// Ejercicio del curso
/*
 Escribe una funcion que ejecute un bucle que recorra una cadena de texto
 y cuente cuantas vocales contiene.
 
 Tip: puedes usar este String "aeiouáéíóúAEIOUÁÉÍÓÚ" como variable para determinar las vocales en español.
 Puedes usar la funcion contains de los Strings
 */

let vocales : String = "aeiouáéíóúAEIOUÁÉÍÓÚ"
func contarVocales(texto: String) -> Int {
    var contador = 0
    for caracter in texto {
        if vocales.contains(caracter) {
            contador += 1
        }
    }
    return contador
}
print(contarVocales(texto: "Murcielago"))
