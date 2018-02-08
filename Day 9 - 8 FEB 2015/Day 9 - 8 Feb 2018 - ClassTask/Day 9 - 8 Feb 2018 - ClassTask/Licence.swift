//
//  Licence.swift
//  Day 9 - 8 Feb 2018 - ClassTask
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Licence: Person
{
    var LIClocation: String?
    
    override init()
    {
        super.init()
        self.LIClocation = ""
    }
    
    init(firstname: String, lastname: String, address: String, Age: Int, LIClocation: String)
    {
        super.init(firstname: firstname, lastname: lastname, address: address, Age: Age)
        self.LIClocation = LIClocation
    }
}
