//
//  main.swift
//  Day 11 - 12 Feb - Access Control
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var objstu = Student()
objstu.display()
objstu.display(message: ":: GS :: (called from obj)")
print("=============================")

var objPT = PartTime()
objPT.setStudentName(sname: "Called from part time")
