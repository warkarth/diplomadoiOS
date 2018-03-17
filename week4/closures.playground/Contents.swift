//: Playground - noun: a place where people can play

import UIKit

//Si vas a tener una funcion y esa funcion va a recibir closures las buenas practicas dicen que los closures van al final

//Firma del closure
var miClosure: (Int, Int) -> Int
var miClosure2: (Int, Int) -> Int

miClosure={(a: Int, b:Int) -> Int in
    return a + b
}

miClosure2={(a: Int, b:Int) -> Int in
    return a * b
}
let resultado = miClosure(3, 2)

func ejecutaOperacion(_ closure:(Int, Int) -> Int, a:Int, b:Int){
    let resultado = closure(a, b)
    print(resultado)
}

ejecutaOperacion(miClosure, a:10, b:20)
ejecutaOperacion(miClosure2, a:10, b:20)

var numero = 0

func incrementa(variable: inout Int){
     variable += 1
}

incrementa(variable: &numero)

let incrementaV2 = {
    numero+=1
}

incrementaV2()
incrementaV2()
incrementaV2()
incrementaV2()

func incrementaClosure() -> () -> Int{
    var contador = 0
    let incrementa: () -> Int = {
        contador+=1
        return contador
    }
    return incrementa
}

let contador1 = incrementaClosure()
let contador2 = incrementaClosure()

let letras = ["aaa","aaaaa","aaaaaaa","hiiijd","hiii"]
letras.sorted()
letras.sorted{
    $0.count > $1.count
}

print(letras.sorted{
    $0.count > $1.count
})

letras.forEach{
    print($0)
}

let numeros = [1,2,3,4,5,6,7,8,9]

let filtrados = numeros.filter{
    return $0 > 5
}

print("Filtrados: \(filtrados)")

let mapeados = numeros.map{
    return $0 * 10
}

print("Mapeados: \(mapeados)")

let letrasYNumeros = ["Hola","2","adios","1","3"]

let numerosUsuario = letrasYNumeros.flatMap{
    Int($0)
}

print(numerosUsuario)

let total = numeros.reduce(0){ //Suma todos los elementos del array el numero entre () es la variable inicializadora
    return $0 + $1
}

print(total)

//dump para vaciar todo lo que trae una variable
