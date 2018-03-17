//: Playground - noun: a place where people can play

import UIKit

func jueguito(vida: Int) {
    var vidas = vida
    var balas = 0
    var x = 0
    
    while (vidas != 0){
        x += 1
        balas += 1
        print("PUM")
        if x == 200{
            print("PUM: \(balas)")
            print("Arma sobrecalentada ")
            sleep(2)
            print("Arma lista")
            vidas -= 1
            x = 0
            print("Moriste, te quedan: \(vidas) vidas")
        }
        if vidas == 0 {
            print("Game over, balas disparadas: \(balas)")
        }
        
    }
}

jueguito(vida: 10)



