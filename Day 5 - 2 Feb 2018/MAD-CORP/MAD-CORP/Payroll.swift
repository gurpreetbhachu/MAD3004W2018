//
//  Payroll.swift
//  MAD-CORP
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class Payroll: permanentEmployee
{
    var finalpay: Double?
    override init()
    {
        super.init()
        self.finalpay = 0
    }
    
    override init(eID: Int,eName: String, eBasicPay: Double, week: Int){
        super.init(eID: eID, eName: eName, eBasicPay: eBasicPay, week: week)
        self.finalpay = 0
        
    }
    override func display() {
        super.display()
        self.calculate()
        print("net pay: ",self.finalpay)
    }
    
    func calculate() {
        var vw = self.vacationWeeks!
        if vw > 5 {
            self.finalpay! = self.BasicPay! - 10
        }
        else {
            self.finalpay! = self.BasicPay!
        }
    }
}
