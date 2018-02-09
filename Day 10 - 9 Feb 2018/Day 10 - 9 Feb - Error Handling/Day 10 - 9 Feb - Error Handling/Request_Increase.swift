//
//  Request_Increase.swift
//  Day 10 - 9 Feb - Error Handling
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class RequestLimitIncrease
{
    var requestReceived = [
        "S110": requestsFromAccount(type: "Saving", balance: 1245.65, reqStatus: "In Process"),
        "S111": requestsFromAccount(type: "Saving", balance: 3242.65, reqStatus: "In Process"),
        "S112": requestsFromAccount(type: "Saving", balance: 10425.65, reqStatus: "In Process"),
        "S113": requestsFromAccount(type: "Saving", balance: 5565.65, reqStatus: "Approved")]


func increaseLimit(accountNo acno: String)
throws
{
    guard let reqAcc = requestReceived[acno]
    else
        {
        throw limitIncreaseError.ineligible
        }
    
    guard reqAcc.type == "Saving"
    else
    {
        throw limitIncreaseError.noSavingAccount
    }
    
    guard reqAcc.balance >= 5000
    else
    {
        throw limitIncreaseError.insufficientBalance(balanceNeeded: 5000 - reqAcc.balance)
    }
    
    var approvedRequest = reqAcc
    approvedRequest.reqStatus = "Approved"
    print("Your Request is Approved !!")
}
}
