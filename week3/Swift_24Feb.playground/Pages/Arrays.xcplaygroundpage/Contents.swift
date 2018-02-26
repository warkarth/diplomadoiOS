//: [Previous](@previous)

import Foundation

//: Collections Array, Diccionarios, Conjuntos

//: Arrays
let arreglo = [1,2,3,4,5,6]
let alumnos: [String] = [] //Arreglo vacio
let muchoCeros = Array(repeating: 0, count:100)

alumnos.isEmpty
arreglo.count
arreglo.first
print(arreglo.last! as Any) //Desenvuelve como cualquier tipo

//Todos los elementos del arreglo son optionals

var arreglo2 = [2,4,6]

arreglo2 += arreglo

print(arreglo2.sorted()) //Ordena los valores

arreglo[2...4] //Slice de los elementos del arreglo

arreglo.contains(2)

//: [Next](@next)
