//
//  Created by Nimblr on 29/06/18.
//  Copyright © 2018 Ricardo Escobedo. All rights reserved.
//

import Foundation

class Item: NSObject {
    
    @objc var name: String
    @objc var valueInDollars: Int
    @objc var serialNumber: String?
    @objc let dateCreated: Date
    @objc let itemKey: String
    
    @objc init(name: String, serialNumber: String?, valueInDollars: Int) {
        self.name = name
        self.serialNumber = serialNumber
        self.valueInDollars = valueInDollars
        self.dateCreated = Date()
        self.itemKey = UUID().uuidString
    }
    
    @objc convenience init(random: Bool = false) {
        if random {
            let adjectives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber =
            UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName,
                serialNumber: randomSerialNumber,
                valueInDollars: randomValue)
        } else {
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
        }
    }
    
}
