//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var address = [String:AnyObject]()
address["street"] = "265 yorkland blvd" as AnyObject
address["area"] = "North York" as AnyObject
address["postal code"] = "M1H1Y1" as AnyObject

var person = [String:AnyObject]()
person["firstname"] = "Gurpreet" as AnyObject
person["lastname"] = "Singh" as AnyObject
person["age"] = 23 as AnyObject
person["address"] = address as AnyObject
person["total amount"] = 2000 as AnyObject

print(person)

//

// ========= CLosures in SWIFT ==============

//Sorted closure

var months = [4,3,1,6,5,2]
print(months.sorted()) //display in sorted increasing order

//creating function for sorting (comparing sorting - compairs 2 valus and if it comes false dn swiping occur and sorting starts from the begining)
func reverse(_ s1: Int, _ s2: Int) -> Bool
{
    return s1 > s2
}
var reversedMonths = months.sorted(by: reverse)
print("Reversed Months: ",reversedMonths)

func increasing(_ s1:Int, _ s2: Int) -> Bool
{
    return s1 < s2
}
var increasingMonths = months.sorted(by: increasing)
print("Increasing Months: ",increasingMonths)

//========= Closure Expression Syntax =============

var reverseClosure = months.sorted(by: {
    (s1: Int, s2: Int) -> Bool in
    return s1 > s2
})
print("Reversed CLosure: ",reverseClosure)

//inferring parameter type from context

var inferType = months.sorted(by: {
 //(s1, s2) in return s1 < s2
    (s1 , s2) in s1 < s2 //implicit return
})

print("InferType: ",inferType)

//shorthand argument names
print("Short Hand Argument: ", months.sorted(by: {$0 < $1}))


//operator method
print("Op M: " , months.sorted(by: <))

var three = [1,3,4,5,6,8,9,12,15]
print("three: ", three)

var modThree = three.filter({$0 % 3 == 0})
print("Mod Three: ",modThree)

//nested function closure
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}


//

let incrementByTen = makeIncrementer(forIncrement: 10)

print("first call: ",incrementByTen())  //10
print("second call: ",incrementByTen()) //20
print("third call: ",incrementByTen()) //30

let incrementBySeven = makeIncrementer(forIncrement: 7)
print("Inc by seven -> 1 : ",incrementBySeven()) //7
print("Inc by seven -> 2 : ",incrementBySeven()) //14

print("fourth call: ",incrementByTen()) //40

//CLosure are reference type

let incrementBySevenAgain = incrementBySeven
print("Increment by Seven -> 3: ",incrementBySevenAgain())


//Auto closures
var errorList = [404,414,402,432,455,440]
print("Total Error : ",errorList.count)

let debugger = {errorList.remove(at: 0)}
print("Total Error after removing : ",errorList.count)

print("Now solving \(debugger())!")
print("Total Error after removing : ",errorList.count)
print("Error List : ", errorList)


func solve(error debugger: @autoclosure () -> Int)
{
    print("Now Solving \(debugger())!")
}

solve(error: errorList.remove(at: 0))
print("Error List : ", errorList)


