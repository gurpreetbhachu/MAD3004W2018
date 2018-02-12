//
//  AccessControl.swift
//  Day 11 - 12 Feb - Access Control
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

 class Student
{
    var sname: String?
    
    init()
    {
        self.sname = ":: Student Name ::"
    }
    
    func setStudentName(sname: String)
    {
        self.sname = sname
    }
    
    func getStudentName() -> String
    {
        return self.sname!
    }
    
    func display()
    {
        print(":: Func Display is called")
    }
    
     func display(message: String)
    {
        print("Hello \(message)")
    }
}
