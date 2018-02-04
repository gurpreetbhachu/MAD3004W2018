//
//  Emp.swift
//  Test
//
//  Created by Gurpreet Singh on 2018-02-03.
//  Copyright © 2018 Gurpreet Singh. All rights reserved.
//

import Foundation

//Classes

class Employee
{
    var EmpID: Int?
    var EmpName: String?
    var BasicPay: Double?
    
    //initializer
    init()
    {
        self.EmpID=0
        self.EmpName=""
        self.BasicPay=0.0
    }
    
    //Parameter Init
    init(ID: Int, NM: String, Pay: Double)
    {
        self.EmpID = ID
        self.EmpName = NM
        self.BasicPay = Pay
    }
    
    func display()
    {
        print("Emp ID: ",self.EmpID!)
        print("Emp Name: ",self.EmpName!)
        print("Emp Basic_Pay: ",self.BasicPay!)
    }
}
