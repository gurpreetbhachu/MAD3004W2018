//
//  Product.swift
//  Day 9 - 8 Feb 2018
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Product
{
    let name: String
    
    init?(name: String)     // use ? with init whenever we are returning a nil value
    {                       // ? makes the init failable
        if name.isEmpty
        {
            return nil
        }
        self.name = name
    }
}
