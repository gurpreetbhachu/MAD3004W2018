//
//  Preference.swift
//  Day 9 - 8 Feb 2018
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Preference: Vehicle
{
    var prefer = false
    var description: String
    {
        var output = "Do You Prefer \(No_of_vehicle) wheels vehicles from \(name) ?"
        output += prefer ? "👍🏼" : "👎🏼"
        return output
    }
}
