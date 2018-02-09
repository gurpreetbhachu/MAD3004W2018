//
//  main.swift
//  Day 10 - 9 Feb - ClassActivity
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//print("Hello, World!")

var tckreq = ticket()
do
{
    try tckreq.makeAppeal(ticketNo: "T166")
}

catch SpeedLimit.declined
{
 print("Declined")
}
