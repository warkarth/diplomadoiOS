//: [Previous](@previous)

import Foundation

var valor = 0
var edad = 15

while edad < 30 {
    print(edad)
    edad+=1
}

repeat{
    print(edad)
    edad += 1
}while edad < 30

for _ in 1...10 {
    valor += 1
}

for i in 0...10 where i % 2 == 0 {
    valor += 1
}

var a = 3
var r = 1
for i in 1...a {
    r = r * i
}

//: [Next](@next)


