//
//  main.swift
//  Day 10 - 9 Feb - Error Handling
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//print("Hello, World!")

//throw limitIncreaseError.ineligible

//var obj1 = RequestLimitIncrease()
//try obj1.increaseLimit(accountNo: "S110")

var processRequest = RequestLimitIncrease()
do
{
    try processRequest.increaseLimit(accountNo: "S110")
}

catch limitIncreaseError.insufficientBalance
{
    print("Insuficient Balance 😱")
}

catch limitIncreaseError.ineligible
{
    print("Ineligible 😢")
}

catch limitIncreaseError.noSavingAccount
{
    print("You have no Saving Account with us")
}

catch
{
    print("Unexpected Error 🤬")
}
