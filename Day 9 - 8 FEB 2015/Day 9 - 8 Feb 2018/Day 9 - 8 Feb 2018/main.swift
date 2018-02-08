//
//  main.swift
//  Day 9 - 8 Feb 2018
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//print("Hello, World!")

let laptop = Product(name: "Laptop")

if let machine = laptop
{
    print("Product name is \(machine.name)")
}

let annonymousMachine = Product(name: "")

if annonymousMachine == nil
{
    print("The annonymous machine could not be initialized")
}

print("========================")

if let oneProjector = CartItem(name: "Projector", quantity: 5)
{
    print("Cart contains \(oneProjector.quantity) \(oneProjector.name)")
}
else
{
    print("Unable to initialize cart item")
}

print("========================")

var objManu = Manufacturer()
print("\(objManu.name)")

print("========================")

var objVeh = Vehicle(name: "Dodge", No_of_vehicle: 2)
print("Vehicle: \(objVeh.name), No_of_vehicle: \(objVeh.No_of_vehicle)")

print("========================")

let objperference = Preference()
let objperference2 = Preference(name: "AUDI", No_of_vehicle: 4)
print(objperference.description)
print(objperference2.description)

