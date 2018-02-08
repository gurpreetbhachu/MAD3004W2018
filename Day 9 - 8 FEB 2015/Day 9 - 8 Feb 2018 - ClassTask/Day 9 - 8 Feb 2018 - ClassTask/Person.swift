//
//  Person.swift
//  Day 9 - 8 Feb 2018 - ClassTask
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Person
{
    var Fname: String
    var Lname: String
    var add: String
    var age: Int
    
    
    init()
    {
        self.Fname = ""
        self.Lname = ""
        self.add = ""
        self.age = 0
    }
    
    init(firstname: String, lastname: String, address: String, Age: Int)
    {
        Fname = firstname
        Lname = lastname
        add = address
        age = Age
    }
}
