//: [Previous](@previous)

import Foundation

//Las funciones devuelven tuplas

func funcion(valor :Int){
    print(valor)
}

funcion(valor: 10)

func sinNombreParametro(_ valor: Int){
    print(valor)
}

sinNombreParametro(20)

func renombrarParamateros(otroNombre valor: Int){
    print(valor)
}

renombrarParamateros(otroNombre: 30)

// _ => etiqueta nula, por y : Int => por es una etiqueta
func multiplica(_ x:Int, por y:Int) -> Int{
    return x*y
}

var res = multiplica(5, por: 10)

func divide(_ x: Int, entre y: Int) -> (resultado:Int, residuo:Int){
    return(x/y, x%y)
}

let resultados = divide(26, entre: 4)

print(resultados.residuo)
print(resultados.resultado)

func suma(_ a: inout Int){
    a += 1
    print(a)
}

var numero = 4
suma(&numero) //paso por referencia
print(numero)

//Overloading
func getValue(_ x: Int) -> Int{
    return 20
}

func getValue(_ x: String) -> String{
    return "Hola"
}

var x = getValue(2)

//Never es similar a void
func neverLand() -> Never{
    while true{
        
    }
}

//: [Next](@next)
