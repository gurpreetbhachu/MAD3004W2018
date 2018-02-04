//
//  main.swift
//  Test
//
//  Created by Gurpreet Singh on 2018-02-03.
//  Copyright © 2018 Gurpreet Singh. All rights reserved.
//

import Foundation

print("Enter Total Number of Employees: ")
let TotalEmp = Int(readLine()!)

var ID = Int?
var Name: String?
var Pay: Double?
var VW: Int?

var janPayroll = [Payroll]()

for i in 0..<TotalEmp!
{
    print(":: Enter Detail of Employee ::",i+1)
    
    print("Enter Emp ID:")
    ID = Int(readLine()!)
    
    print("Enter Emp Name:")
    Name = readLine()
    
    print("Enter EMP Basic Pay:")
    Pay = Double(readLine()!)
    
    print("Enter Emp Vacation Week:")
    VW = Int(readLine()!)
    
    janPayroll.append(Payroll(eeID: ID!, eeNM: Name!, eePay: Pay!, eeVW: VW!))
}

for i in 0..<TotalEmp!
{
    print("- - - - - - - - - - ")
    print(":: Detail of Emp ::",i+1)
    print("- - - - - - - - - - ")
    janPayroll[i].display()
}
