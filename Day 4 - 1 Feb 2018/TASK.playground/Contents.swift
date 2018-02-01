//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class person
{
    var f_name = "Gurpreet"
    var l_name = "Singh"
    var age = "25"
    var address = addressdetail()
}

class addressdetail
{
    var street = "123 Yorkland"
    var city = "North York"
    var postal = "A1B2C3"
}

let p1 = person()

print("\(p1.f_name)'s address is \(p1.address.street), \(p1.address.city).")
