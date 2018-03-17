//: [Previous](@previous)

import Foundation

class Alumno{
    var  numCuenta: String
    
    init(numCuenta: String){
        self.numCuenta = numCuenta
    }
}

class Ingenieria{
    
}

struct Profesor{
    var numEmpleo: String
}

var marduk = Profesor(numEmpleo: "00000000")
var parrita = Alumno(numCuenta: "310004004")

var german = parrita
german.numCuenta = "88888888"

parrita.numCuenta

class Cartera{
    var dinero: Double
    var abonado: Double{
        get{
            print("Interese actuales: \(dinero * 0.16) pesos")
            return dinero * 0.86
        }
        set{
            print("Se ha abonado: \(newValue)")
            dinero = (dinero * 0.16) + newValue
            print("Usted tiene: \(dinero)")
        }
    }
    
    init(dinero: Double, abonado: Double){
        print("Creando una cartera con \(dinero) pesos")
        self.dinero = dinero
        self.abonado = abonado
    }
    
    deinit {
        print("Destruyendo una cartera con \(dinero) pesos")
    }
}

let carterita = Cartera(dinero: 23,abonado: 200)
print(carterita.abonado)
carterita.abonado = 100
print(carterita)
dump(carterita)

//: [Next](@next)
