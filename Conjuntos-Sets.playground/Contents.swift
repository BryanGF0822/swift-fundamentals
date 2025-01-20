/*
 Algunas caracteristicas de los conjuntos son:
 
 1. Son listas. (Igual que los Arrays)
 2. Puedes agregar o eliminar elementos. (Igual que los Arrays)
 3. Los elementos no estan ordenados sin posicion especifica. (Los Arrays si tienen elementos ordenados con posicion especifica)
 4. No admite elementos duplicados. (Si admite elemntos duplicados
 */

// Inicializar Sets
var animales : Set<String> = Set(["Perro", "Gato", "Conejo"])
var otrosAnimales = Set<String>()

print(animales)
print(otrosAnimales)

let contarAnimales = animales.count
let contarOtrosAnimales = otrosAnimales.count

print("Contar animales: \(contarAnimales)")
print("Contar otros animales: \(contarOtrosAnimales)")

animales.insert("Elefante")
print(animales)

animales.remove("Gato")
print(animales)


/*
 Openracion entre conjuntos (Sets)
 
 Las operaciones entre dos sets en Swift incluyen:

 Unión: Combina los elementos de ambos sets, eliminando duplicados. Usas setA.union(setB).
 
 Intersección: Obtiene los elementos comunes en ambos sets. Se realiza con setA.intersection(setB).
 
 Resta: Devuelve un nuevo set con elementos de setA que no están en setB. Se hace con setA.subtracting(setB).
 
 Diferencia simétrica: Devuelve elementos que están en uno de los sets, pero no en ambos. Se usa setA.symmetricDifference(setB).
 
 Estas operaciones son útiles para manejar datos y realizar comparaciones de manera eficiente.
 */

let estudiantesCursoMatematicas : Set<String> = ["Paola", "Bryan", "Christian", "Catalina", "Javier"]
let estudiantesCursoHistoria : Set<String> = ["Sergio", "LaOnePush", "Andrea", "Paola", "Christian", "Catalina", "Bryan"]

// Union
let union = estudiantesCursoMatematicas.union(estudiantesCursoHistoria)
print(union)

// Interseccion
let interseccion = estudiantesCursoMatematicas.intersection(estudiantesCursoHistoria)
print(interseccion)

// Resta
let resta = estudiantesCursoMatematicas.subtracting(estudiantesCursoHistoria)
print(resta)

let resta2 = estudiantesCursoHistoria.subtracting(estudiantesCursoMatematicas)
print(resta2)

// Diferencia Simetrica
let diff = estudiantesCursoMatematicas.symmetricDifference(estudiantesCursoHistoria)
print(diff)
