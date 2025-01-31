var intOpcional: Int? = nil
//intOpcional = 9
let value = intOpcional ?? 0
print(value)

//Version 1
func saludar(nombre: String?) {
    if nombre != nil {
        print("Hola \(nombre!)")
    } else {
        print("Hola Humano")
    }
}

saludar(nombre: nil)
saludar(nombre: "Bryan")

//Version 2
func saludarV2(nombre2: String?) {
    let saludo = nombre2 != nil ? "Hola \(nombre2!)" : "Hola, humano"
    print(saludo)
}

saludarV2(nombre2: "Paola")
saludarV2(nombre2: nil)


// Reto de la clase
// Elabora una funcion que reciba 2 parametros de tipo Double opcionales
// La funcion debe sumar los 2 numero siempre y cuando ambos sean diferente de Null
// De lo contrario debe decir "No tengo datos suficientes para realizar la operacion.

func sumarDouble(double1: Double?, double2: Double?) {
    guard let double1 = double1, let double2 = double2 else {
        print("No tengo datos suficientes para realizar la operacion.")
        return
    }
    print(double1 + double2)
}

sumarDouble(double1: nil, double2: 1.5)
sumarDouble(double1: 1.5, double2:  1.5)

func sumarDoubleV2(double1: Double?, double2: Double?) {
    if double1 != nil && double2 != nil {
        print(double1! + double2!)
    } else {
        print("No tengo datos suficientes para realizar la operacion.")
    }
}

sumarDoubleV2(double1: nil, double2: 1.5)
sumarDoubleV2(double1: 1.5, double2:  1.5)


func sumarDoubleV3(double1: Double?, double2: Double?) {
    /*
     let suma: Double? = nil
     if let double1, let double2 {
         suma = double1 + double2
     }
     */
    
    let suma: Double? = if let double1, let double2 {
        double1 + double2
    } else {
        nil
    }
    if let suma {
        print(suma)
    } else {
        print("No tengo datos suficientes para realizar la operacion.")
    }
}
