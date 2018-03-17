//: [Previous](@previous)

import Foundation

class Alumno{
    var numCuenta: String
    fileprivate var nombre: String
    private var sexo: String //V3 V4
    open var rfc: String
    var edad: Int{
        willSet{
            print("El nuevo valor sera: \(newValue)")
        }
        didSet{
            print("Valor anterior: \(oldValue)")
            print("Valor actual: \(edad)")
        }
    }
    
    func estudia(){
        print("Naaah no estudia")
    }
    
    init(numCuenta: String){
        self.numCuenta = numCuenta
        self.nombre = "Nobody"
        self.sexo = "M"
        self.rfc = "eoid4533193"
        self.edad = 24
    }
}

class Ingenieria: Alumno{
    override func estudia() {
        print("Si estudia")
    }
    
}

class Contaduria: Alumno{
    override func estudia() {
        print("Efectivamente no estudia")
    }
}

let parrita = Alumno(numCuenta: "99999999")
parrita.edad = 26
//: [Next](@next)
