//
//  TestB.swift
//  Protocols
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class TestB: TestA
{
    var n2: Int?
    
    override func display()
    {
        print("Inside Class Test B")
    }
    
    override func displayvalue()
    {
        //var n2: Int
        print("Value of n1: \(self.n2!)")
    }
}
