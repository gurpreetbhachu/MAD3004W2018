//
//  FullTime.swift
//  Day 11 - 12 Feb - Access Control
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class FullTime: Student
{
    var subject: String?
    
    override init()
    {
        self.subject = "FullTime Subject"
    }
    
     func setSubject(Subject: String)
    {
        
    }
    
    override func display()
    {
        print("Method of FullTime Class")
        super.display(message: "File Private")
    }
}
