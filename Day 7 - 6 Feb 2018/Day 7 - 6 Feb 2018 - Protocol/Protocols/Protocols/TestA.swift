//
//  TestA.swift
//  Protocols
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class TestA: IDisplay, IDisplayvalue
{
    var n1: Int = 20
    func displayvalue()
    {
        var n1: Int
        print("Value of n1: \(self.n1)")
    }
    func display()
{
    print("Inside Class TestA")
}
    //var n1: Int?
}

