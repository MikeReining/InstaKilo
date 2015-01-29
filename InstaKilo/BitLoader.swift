//
//  BitLoader.swift
//  InstaKilo
//
//  Created by Michael Reining on 1/29/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation

class BitLoader {

    class func initialBitArrayLoader() -> [Bit] {
        
        var myDirectoryPath = NSBundle.mainBundle().pathForResource("AnimalKingdom", ofType: nil)

        var contentsOfDirectory = NSFileManager.defaultManager().contentsOfDirectoryAtPath(myDirectoryPath!, error: nil) as [String]

        var swiftArray = contentsOfDirectory as [String]

        var bitArray = [Bit]()

        for bit in swiftArray {
            if bit.hasSuffix(".mp3") {
                var newBit = Bit(name: bit)
                println("test")
                bitArray.append(newBit)
            }
        }
        
        return bitArray
    }

}