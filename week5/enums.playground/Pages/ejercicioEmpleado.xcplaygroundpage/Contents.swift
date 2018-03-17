//: [Previous](@previous)

import Foundation

class Empleado{
    var sueldo: Double
    var descuento: Double{
        willSet{
            if newValue > self.sueldo{
                print("No es un descuento valido")
            }
        }
    }
    init(sueldo: Double,descuento: Double){
        self.sueldo = sueldo
        self.descuento = descuento
    }
}

let cesarIng = Empleado(sueldo: 2300.0, descuento: 2000.0)
cesarIng.descuento = 3400
//: [Next](@next)
