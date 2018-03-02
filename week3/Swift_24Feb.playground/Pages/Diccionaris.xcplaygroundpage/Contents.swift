//: [Previous](@previous)

import Foundation

//: Diccionarios

var diccionario = ["Pedro": 18, "Ana": 22, "Juanito": 30]
print(diccionario["Pedro"]! as Any)

var alumnos: [String:Int] = [:]
alumnos.isEmpty
alumnos.count

var perfil = [
    "nombre" : "Parrita",
    "carrera" : "Admin"
]
perfil.updateValue("CDMX", forKey: "Estado")
print(perfil)

perfil["Edad"] = "23"
print(perfil)

perfil.removeValue(forKey: "Edad")
perfil["Estado"] = nil

print(perfil)

for (llave,valor) in perfil{
    print("\(llave) - \(valor)")
}

for (llave) in perfil.keys {
    print("\(llave), ", terminator: "")
}

//: [Next](@next)
