//: Playground - noun: a place where people can play

import UIKit

enum Dia{
    case Lunes
    case Martes
    case Miercoles
    case Jueves
    case Viernes
    /*case Sabado //si se agrega no puede omitirse ningun caso en el switch o se debe implementar siempre el default*/
}

var diaSemana: Dia
diaSemana = .Lunes

switch diaSemana{
case .Lunes:
    print("Lunes")
case .Martes:
    print("Martes")
case .Miercoles:
    print("Miercoles")
case .Jueves:
    print("Jueves")
case .Viernes:
    print("Viernes")
}

enum EstadoDocumento: Int {
    case Recibido = 0, Validado, EnProceso, Publicado
}

let valorEstado = EstadoDocumento.Validado.rawValue
let estado = EstadoDocumento(rawValue: 5)


enum ResultadoWebService{
    case Exito(String)
    case Error(Int)
}

func llamadaWS() -> ResultadoWebService{
    if false{
        return ResultadoWebService.Exito("Mi contenido")
    }else{
        return ResultadoWebService.Error(502)
    }
}

let resultado: ResultadoWebService = llamadaWS()
switch resultado{
case let .Exito(contenido):
    print(contenido)
case let .Error(codigo):
    print("El código de error es \(codigo)")
}

struct Cuerpo{
    var altura: Double = 0//Propiedades con almacenamiento y valor por default
    var peso: Double = 0
}

var cuerpo = Cuerpo()
cuerpo.altura = 1.85
cuerpo.peso = 80

var cuerpo2 = cuerpo

