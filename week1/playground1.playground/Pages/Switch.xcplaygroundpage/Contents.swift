//: [Previous](@previous)

import Foundation

var edad = 15

switch edad{

case 0..<18 where edad != 15:
    print("Muy chico")
    
case 18:
    print("Exacto")
    
default:
    print("Mayorsito")
}

var animal :String = "Perro"

switch animal {
case "perro","gato":
    print("Animal domestico")
default:
    print("Ni idea")
}

var coordenada3D: (x: Int, y: Int, z: Int) = (0,2,0)

switch coordenada3D {
case (0,0,0):
    print("Origen")
case (_,0,0):
    print("En X")
case (0,let y,0):
    print("En Y \(y)")
case (0,0,_):
    print("En Z")
default:
    break
}


//: [Next](@next)
