//
//  Vehicle.swift
//  Day 9 - 8 Feb 2018
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Vehicle: Manufacturer
{
    var No_of_vehicle: Int
    
    init(name: String, No_of_vehicle: Int)
    {
        self.No_of_vehicle = No_of_vehicle
        super.init(name: name)
    }
    
    override convenience init(name: String)
    {
        // init(name: String)
        self.init(name: name, No_of_vehicle: 0)
    }
}
