var contador = 1
while contador <= 10 {
    print("El contador es: \(contador)")
    contador += 1
}

// Ejercicio de adivinanza con While

let respuesta = 6
var intento: Int?

while intento != respuesta {
    print("Nuevo intento de adivinanza")
    intento = Int.random(in: 1...10)
    print(intento!)
    if intento == respuesta {
        print("Respuesta correcta")
    } else {
        print("Intenta de nuevo...")
    }
}

