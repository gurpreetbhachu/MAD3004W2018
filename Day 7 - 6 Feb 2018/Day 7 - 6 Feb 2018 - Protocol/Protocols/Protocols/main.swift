//
//  main.swift
//  Protocols
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

var obj1 = TestA()
obj1.n1 = 20
obj1.display()
obj1.displayvalue()

//obj of Class Test A
var obj = TestA()
obj.display()
obj.displayvalue()

var obj2 : IDisplay = TestA()
obj2.display()

obj2 = obj as TestA
obj2.display()

//obj of Class Test A
var obj3 = TestB()
obj3.n1 = 30
obj3.n2 = 40
obj3.display()
obj3.displayvalue()

var objArth = Arithmetic(n1: 20, n2:30)
objArth.calculate()

var obj4 = Operation(n1: 10,n2: 10)
obj4.calculate()

//extension

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"

let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"

let aMarathon = 42.km + 195.m
print("A marathon is \(aMarathon) meters long")
// Prints "A marathon is 42195.0 meters long"

print("===================")
var str = "XX"
print(str.length)
print("_-_-_-_-_-_-")
print(str.consonants)
print("_-_-_-_-_-_-")
print(str.vowels)


