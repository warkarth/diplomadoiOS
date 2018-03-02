//: Playground - noun: a place where people can play

import UIKit

//: Optionals
//Ausencia o representacion de valor

var variable: String?

variable = nil
variable = "Hola"

//print(variable)

//: Optional binding
//Se usa para validar que hay un valor en una variable que regresa (TextField,Red)
//Las variables deben de ser Let y solo viven dentro de mi if

if let saludo = variable{
    print("Saludo \(saludo)")
}else{
    print("No hay nada")
}

//: guard
//Exclusivamente en metodos para validar algo

func saludos(cadena: String?){
    guard let saludo = cadena else{
        print("No hubo saludo")
        return
    }
    print("No paso nada \(saludo)")
}

saludos(cadena: variable)

//: nil coalescing

var edad: Int? = 23
var edadValida = edad ?? 18 //?? Si hay algo en edad -> edadvalida = edad SI NO edad = 18

print(edadValida)

// ! -> Desenvolver, a fuerza tratalo como tal

