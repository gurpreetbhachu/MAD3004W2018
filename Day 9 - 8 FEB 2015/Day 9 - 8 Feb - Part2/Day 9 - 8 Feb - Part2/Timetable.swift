//
//  Timetable.swift
//  Day 9 - 8 Feb - Part2
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

struct Timtable
{
    let multiplier: Int
    
    subscript(index: Int) -> Int
    {
        return multiplier * index
    }
}
