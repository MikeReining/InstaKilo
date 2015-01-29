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
        var newBit = Bit(name: bit)
        println("test")
        bitArray.append(newBit)
    }
}

bitArray.count

var exampleString = "antelope.mp3"
exampleString.hasSuffix(".mp3")

