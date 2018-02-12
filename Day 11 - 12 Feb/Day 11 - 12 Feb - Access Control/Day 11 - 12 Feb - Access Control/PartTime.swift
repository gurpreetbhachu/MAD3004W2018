//
//  PartTime.swift
//  Day 11 - 12 Feb - Access Control
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class PartTime
{
    var sname: String?
    
     func setStudentName(sname: String)
    {
        self.sname = sname
    }
}

internal class ExtendPartTime: PartTime
{
    override internal func setStudentName(sname: String) {
        super.setStudentName(sname: sname)
    }
}
