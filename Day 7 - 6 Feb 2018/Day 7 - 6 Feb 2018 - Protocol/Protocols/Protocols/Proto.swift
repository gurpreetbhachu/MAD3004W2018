//
//  Proto.swift
//  Protocols
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

protocol IDisplay
{
    func display()
}

protocol IDisplayvalue
{
    func displayvalue()
}

protocol ICalculate {
    var n1: Int {get set}
    var n2: Int {get set}
    
    init(n1: Int, n2: Int)
}
