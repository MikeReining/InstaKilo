// Playground - noun: a place where people can play

import UIKit

class Bit  {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var bitArray = [Bit]()

var myArray = [
    "antelope.mp3",
    "antelope.jpg",
    "bat.jpg",
    "bat.mp3",
]

for bit in myArray {
    if bit.hasSuffix(".mp3") {
        var separatedString = split(bit, {(c:Character) -> Bool in return c == "."}, allowEmptySlices: false)
        
        var newBit = Bit(name: separatedString[0])
        println("test")
        bitArray.append(newBit)
    }
}

bitArray.count

bitArray[0]



var exampleString = "antelope.mp3"
exampleString.hasSuffix(".mp3")