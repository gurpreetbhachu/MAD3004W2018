//
//  Ticket.swift
//  Day 10 - 9 Feb - ClassActivity
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class ticket
{
    var ticketReceived = [
        "T159": ticketAppeal(speed: 120, date: 2, passenger: true, status: "🤬"),
        "T165": ticketAppeal(speed: 250, date: 5, passenger: false, status: "🤬"),
        "T166": ticketAppeal(speed: 50, date: 5, passenger: false, status: "😛")]
    
    func makeAppeal(ticketNo tno: String)
    throws
    {
        guard let tckapp = ticketReceived[tno]
        else
        {
            throw SpeedLimit.declined
        }
        
        guard tckapp.passenger == false
            else
        {
            throw SpeedLimit.declined
        }
        
        guard tckapp.speed < 150
        else
        {
            throw SpeedLimit.declined
        }
        
        guard tckapp.date > 2
        else
        {
            throw SpeedLimit.declined
        }
        
        var appealapproved = tckapp
        appealapproved.status = "Approved"
        print("Your Ticket is Approved !!")
        
        
    }
}
