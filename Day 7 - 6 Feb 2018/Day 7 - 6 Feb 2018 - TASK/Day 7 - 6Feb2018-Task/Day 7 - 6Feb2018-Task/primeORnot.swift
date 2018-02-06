//
//  primeORnot.swift
//  Day 7 - 6Feb2018-Task
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

extension Int{
    var prime: String{
        get {
            if self <= 1 {
                return " is not prime number"
            }
            if self <= 3 {
                return " is prime number"
            }
            var i = 2
            while i*i <= self {
                if self % i == 0 {
                    return " is not prime number"
                }
                i = i + 1
            }
            return " is prime number"
        }
    }
}
