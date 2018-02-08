//
//  Manufacturer.swift
//  Day 9 - 8 Feb 2018
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Manufacturer
{
    var name: String
    
    //Designated Init
    init(name: String)
    {
        //print("Main Des. INIT")
        self.name = name
    }
    
    convenience init()
    {
        self.init(name: "[Unknown Manufacturer]")
    }
}
