//
//  Error.swift
//  Day 10 - 9 Feb - ClassActivity
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

enum SpeedLimit: Error
{
    case declined
    case approved
}

struct ticketAppeal
{
    var speed: Double
    var date: Double
    var passenger: Bool
    var status: String
}
