//: Playground - noun: a place where people can play

import UIKit

func isPrimo(n : Int) -> Bool{
    for x in 2..<n {
        if n%x == 0 {
            //print("No es primo")
            return false
        }
    }
    //print ("Es primo")
    return true
}

//isPrimo(n: 3)

var lista = Set<Int>()
func fib(n: Int) -> Int{
    if n == 0{
        return 0
    }
    if n == 1{
        return 1
    }
    if isPrimo(n: n){
        lista.insert(n)
    }
        return fib(n: n-1)+fib(n: n-2)
}

fib(n: 1000)
for x in lista{
    print(x)
}
  





