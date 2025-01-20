/*
 TODO: Ejecicio: La gran batalla Pokemon!
 
 Escribe una funcion que simule un batalla entre 2 pokemons
 La funcion recibirá 2 diccionarios que representan la informacion de cada pokemon. Cada pokemon
 tiene PV (Puntos de vida) y PA (Puntos de ataque)
 Pro defecto el turno inicial es del primer pokemon pasado como parametro.
 Cada turno un pokemon atacará al otro.
 La batalla termina cuando uno de los 2 pokemons no pueda continuar (cuando no tenga mas puntos de vida).
 La funcion debe retornar un String con el nombre del ganador.
 
 Tip: El ataque de un pokemo quiere decir que le reducirá la cantidad de puntos de ataque que tenga
 el pokemon del turno actual a la cantidad de puntos de vida del otro pokemon.
 */

var pikachu = ["PV": 100, "PA": 50]
var charmander = ["PV": 160, "PA": 40]

func simularBatallaPokemon(pokemon1: [String: Int], pokemon2: [String: Int]) -> String {
    
    /*
     Realizamos una copia de los parametros porque los paremetros que recibe una funcion
     los toma como constante por lo que no podríamos modificar los valores del diccionario.
     */
    var p1 = pokemon1
    var p2 = pokemon2
    
    var turno = 1
    var ganador: String = ""

    while p1["PV"]! > 0 && p2["PV"]! > 0 {
        if turno == 1 {
            p2["PV"]! -= p1["PA"]!
            turno = 2
        } else if turno == 2 {
            p1["PV"]! -= p2["PA"]!
            turno = 1
        }
    }
    if p1["PV"]! > 0 {
        ganador = "Ganó el pokemon 1"
    } else {
        ganador = "Ganó el pokemon 2"
    }
    return ganador
}

let resultado = simularBatallaPokemon(pokemon1: pikachu, pokemon2: charmander)
print(resultado)


// Solucion del Curso
func simularBatallaPokemonV2SolucionDelCursoPlatzi(pokemon1: [String: Int], pokemon2: [String: Int]) -> String {
    
    /*
     Realizamos una copia de los parametros porque los paremetros que recibe una funcion
     los toma como constante por lo que no podríamos modificar los valores del diccionario.
     */
    var p1 = pokemon1
    var p2 = pokemon2
    var turno = 1
    

    while p1["PV"]! > 0 && p2["PV"]! > 0 {
        if turno == 1 {
            p2["PV"] =  p2["PV"]! - p1["PA"]!
            if p2["PV"]! > 0 {
                turno = 2
            } else {
                return "Ganó el pokemon 1"
            }
        } else {
            p1["PV"]! = p1["PV"]! - p2["PA"]!
            if p1["PV"]! > 0 {
                turno = 1
            } else {
                return "Ganó el pokemon 2"
            }
        }
    }
    return ""
}

let resultado2 = simularBatallaPokemonV2SolucionDelCursoPlatzi(pokemon1: pikachu, pokemon2: charmander)
print(resultado2)

