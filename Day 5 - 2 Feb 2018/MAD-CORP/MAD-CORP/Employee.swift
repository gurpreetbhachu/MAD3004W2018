//
//  Employee.swift
//  MAD-CORP
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Employee
{
    var EmpID: Int?
    var EmpName: String?
    var BasicPay: Double?
    
    //Initilizer for default values
    init()
    {
        self.EmpID=0
        self.EmpName=""
        self.BasicPay=0
    }
    
    init(ID: Int, name: String, BasicPay: Double)
    {
        self.EmpID = ID
        self.EmpName = name
        self.BasicPay = BasicPay
    }
    
    func display()
    {
        print("Emp ID: ", self.EmpID!) //when we are refering with in the class use self
        print("Emp Name: ", self.EmpName!)  // use "!" when we declared the datatype as optional
        print("Basic Pay: ", self.BasicPay!)
    }
}
