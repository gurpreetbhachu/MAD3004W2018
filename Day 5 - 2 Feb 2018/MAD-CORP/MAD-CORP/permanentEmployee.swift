//
//  permanentEmployee.swift
//  MAD-CORP
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class permanentEmployee: Employee
{
    var vacationWeeks: Int?
    
    //dafault initializer
    override init()
    {
        super.init()
        self.vacationWeeks = 0
    }
    
    //parametrized initializer of subclass
    init(eID: Int, eName: String, eBasicPay: Double, week: Int)
    {
        super.init(ID: eID, name: eName, BasicPay: eBasicPay)
        self.vacationWeeks = week
    }
    
    override func display()  //when 2 func are same, use override only in sub class
    {
        super.display()
        print("Vacation Weeks: ",vacationWeeks!)
    }
}
