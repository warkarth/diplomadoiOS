//: [Previous](@previous)

func isPalindromo(cadena: String) ->Bool{
    var s = cadena.replacingOccurrences(of: " ", with: "")
    return s == String(s.characters.reversed())
}

isPalindromo(cadena: "anita lava la tina")

//: [Next](@next)
