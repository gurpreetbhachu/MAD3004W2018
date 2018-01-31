//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var nameOfIntegers = [Int: String]()    //nameofinteger ia an empty dic.

nameOfIntegers[15] = "Fifteen"  //contains 1 key-value pair

print("NOI: \(nameOfIntegers)")

nameOfIntegers[14] = "Fourteen" //inserting diff entries
nameOfIntegers[13] = "Thirteen"
nameOfIntegers[12] = "Twelve"

print ("My Dictionay contains \(nameOfIntegers.count) elements")
print("NOI: \(nameOfIntegers)")
//nameOfIntegers = [:]    // namesOfIntegers is once again an empty dictionary of type [Int: String]

if nameOfIntegers.isEmpty
{
    print("Dictionary Empty")
}
else
{
    print(nameOfIntegers)
}

//

var airport: [String:String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print ("Airports: ",airport)

print("The airports dictionary contains \(airport.count) items.")   //printing total no. of element in dic.

airport["LHR"] = "London Heathrow"  // the airports dictionary now contains 3 items

airport["YYZ"] = "TP International"
airport["AMD"] = "SVP International"

print("Airport: ",airport)

let oldvalue = airport.updateValue("Dublin Airport", forKey: "DUB") //second method to update any entry
print("Airport: ",airport)

print("Old value of DUB was \(oldvalue)")

if let airportName = airport["AMD"]
{
    print("The name of the airport is \(airportName)")
}
else
{
    print("Airport N.A.")
}

airport["Mars"] = "Range Rover"  // "RR" is not the real airport for Mars, so delete it

airport["Mars"] = nil   // APL has now been removed from the dictionary

if let removedValue = airport.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}
// Prints "The removed airport's name is Dublin Airport."


for (airportCode, airportName) in airport
{
    print("\(airportCode): \(airportName)")
}

for airportCode in airport.keys
{
    print("Airport Code: \(airportCode)")
}

for airportName in airport.values
{
    print("Airport Name: \(airportName)")
}

let airportCode = [String](airport.keys)
// airportCodes is ["YYZ", "LHR"]
print("Airport Code: \(airportCode)")
let airportName = [String](airport.values)
// airportNames is ["Toronto Pearson", "London Heathrow"]
print("Airport Name: \(airportName)")


//

var d1 : Dictionary<String, String> = ["IND":"Punjabi","Canada":"English"]
print(d1)
print(d1.description)
print(d1["IND"]!)
print(d1["Canada"]!)    // shows the value from key
print(d1["USA"])        // ! is used to convert the value if nil
d1["UK"] = "London"

for (k,v) in d1
{
    print("\(k) -> \(v)")
}

// Dic with any value type

var d3 = [String: AnyObject]()
d3["FirstName"] = "GS" as AnyObject
d3["LastName"] = "B" as AnyObject
d3["age"] = Int(26) as AnyObject
d3["Salary"]=nil


//Declaring tuples

var x = (10, 20, "GSB")
print(x.0)
print(x.1)
print(x.2)

let http404Error = (404, "Not Found")
print(http404Error)

let (statusCode, statusMessage) = http404Error
print("StatusCode:",statusCode)
print("Status Message:",statusMessage)

let (codeOnly, _) = http404Error
print("Code Only: ",codeOnly)

let errorDescription = (Code: 404, Message: "Not Found!!")
print(errorDescription.Code, errorDescription.Message)

//Simple Declaration

func add()
{
    print("Function : ADD")
}

add()

// Single Parameter

func welcome(name:String)
{
    print("Hello, \(name) Ji")
}

welcome(name: "Gurpreet")

//Two Parameter

func add(n1:Int, n2:Int)
{
var sum : Int
sum = n1 + n2
print("Sum :",sum)
}

//add(n1:20,n2:10)

//making parameter label optional

func sub(aa:Int, _ bb:Int)
{
    let c = aa - bb
    print ("Sub: ",c)
}
sub(aa: 10,5)

//single return type

func mul(a:Int, b:Int) -> Int
{
    let c = a + b
    print("Mul :",c)
    return c
}
mul(a: 2, b: 2)

//multi return value and define new label name
func swipe(number1 a:Int, b:Int) -> (Int,Int)
{
    //function parameter are constant by default
    //var temp = a
    //a = b
    //b = temp
    return(b,a)
}

/*(a,b) = swipe(number1: 10, b:20)
print("a: \(a), b: \(b)")
(_, c)=swipe(number1: 10, b:20)
print(c)*/

//inout concept
func swipe(aa: inout Double, bb: inout Double)
{
    let temp = aa
    aa = bb
    bb = temp
}

var x1 = 8.0, y1=9.0
swipe(aa:&x1 , bb:&y1)
print("X: \(x1), Y: \(y1)")

//Default Parameter
func simpleInterest(amount:Double, noOfYears: Double, rate:Double = 5.0) -> Double
{
    let si = amount * rate * noOfYears / 100
    return si
}

print("SI : \(simpleInterest(amount: 1000, noOfYears: 5))")
print("SI : \(simpleInterest(amount: 1000, noOfYears: 5, rate: 10))")

//Variadic Parameter

func display(n:Int...)
{
    for i in n
    {
        print(i)
    }
}
display(n: 1,2,3,4,5)
display(n: 10,20,30,40)


//passing array as parameter

func display(numberValue:Int, parameter:[Int]...)
{
    print("Number of Values",numberValue)
    for i in parameter
    {
        print("i",i)
    }
}

var arr = [1,2,3,4,5]
display(numberValue: 3, parameter: arr,arr,arr)

//sum of two array

func display(arrayList:[Int]...) -> [Int]
{
    var array1 = arrayList[0]
    var array2 = arrayList[1]
    var result = [Int]()
    
    if array1.count == array2.count
    {
        for i in 0..<array1.count
        {
        result.append(array1[i] + array2[i])
        }
    }
    return result
}
