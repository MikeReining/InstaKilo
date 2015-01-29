// Playground - noun: a place where people can play

import Cocoa

// Split string with empty spaces
let separated = split("Split Me!", {(c:Character)->Bool in return c==" "}, allowEmptySlices: false)

separated

// Split Ints... ignore 3
let separatedInts = split([1,2,3,4], {$0==3}, allowEmptySlices: false)

separatedInts

var separatedString = split("antelope.mp3", {(c:Character) -> Bool in return c == "."}, allowEmptySlices: false)

separatedString

