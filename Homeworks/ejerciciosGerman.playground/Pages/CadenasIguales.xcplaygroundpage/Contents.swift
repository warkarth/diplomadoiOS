//: [Previous](@previous)

//Funcion que reciba dos cadenas  que te diga si tiene los mismos caracteres
func esIgual(cad1: String, cad2: String) ->Bool{
    var dicc: [Character:Int] = [:]
    
    for x in cad1{
        if dicc[x] != nil{
            dicc[x] = dicc[x]! + 1
        }else{
            dicc[x] = 1
        }
    }
    
    for x in cad2 {
        if dicc[x] == nil{
            return false
        }else{
            dicc[x] = dicc[x]! - 1
        }
    }
    
    var count = 0
    for (key,value) in dicc {
        if value != 0 {
            count += 1
        }
    }
    if count != 0{
        return false
    }
    
    return true
}

esIgual(cad1: "aaa",cad2: "aaa")

//: [Next](@next)
