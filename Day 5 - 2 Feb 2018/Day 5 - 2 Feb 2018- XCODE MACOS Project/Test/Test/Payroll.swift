//
//  Payroll.swift
//  Test
//
//  Created by Gurpreet Singh on 2018-02-03.
//  Copyright © 2018 Gurpreet Singh. All rights reserved.
//

import Foundation

class Payroll : PermanentEmp
{
    var finalPay : Double?
    
    override init()
    {
        super.init()
        self.finalPay = 0
    }
    
    init(eeID: Int, eeNM: String, eePay: Double, eeVW: Int)
    {
        super.init(eID: eeID, eNM: eeNM, ePay: eePay, eVW: eeVW)
        if (eeVW > 5)
        {
            self.finalPay = eePay - 100
        }
        else
        {
            self.finalPay = eePay
        }
    }
    override func display() {
        super.display()
        print("Emp Final Pay: ",self.finalPay!)
    }
}
