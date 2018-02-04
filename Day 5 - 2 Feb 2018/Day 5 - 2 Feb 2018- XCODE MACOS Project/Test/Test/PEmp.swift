//
//  PEmp.swift
//  Test
//
//  Created by Gurpreet Singh on 2018-02-03.
//  Copyright © 2018 Gurpreet Singh. All rights reserved.
//

import Foundation

class PermanentEmp : Employee
{
    var VacationWeek : Int?
    
    override init()
    {
        super.init()
        self.VacationWeek = 0
    }
    
    init(eID: Int, eNM: String, ePay: Double)
    {
        super.init(ID: eID, NM: eNM, Pay: ePay)
    }
    
    override func display()
    {
        super.display()
        print("Emp Vacation Weeks: ",VacationWeek!)
    }
}
