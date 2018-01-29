//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground" + " SWIFT."

print(str) //to print any particular string declared before

print("This is our String:  \(str)",terminator: " ") //to terminate the by-default (\n) and replace to any of our parameter/string.

print("A","B","C","1","2","3",separator: " ~ ") //to seperate various text entries

var n1 = 10 //declaring variable

print("Number 1 :",n1) //printing the variable with a string

print("Number 1: ",n1,"String: ",str)

var n2 = 20
print ("Number 2 :",n2)

var sum = n1 + n2
print("SUM: ",sum)
print("SUM =",n1+n2)

/*
 n1 = "test"
print("n1 :",n1)  ------- this code wont work because swift declare the n1 as INT
 */

var a:Int = 10
print ("a= ",a)

var greet:String = "Good Morning"
print("Very",greet)

var b:Float=50/45
print("b= ",b)

var emoji="🤪";  //for emoji - ctrl+win+space
print("Crazy Emoji: ",emoji)


let pi = 3.14
print ("Value of Pi: ",pi)


let pie:Float = 22/7
print ("Value of Pie: ",pi)

let myNum:Int?  // --- ? is for optional
myNum=10

if myNum != nil{
    print("myNum: ",myNum!)
}
else{
    print("myNum is NIL")
}

let possiblenumber="456"
let convertednumber:Int?
convertednumber = Int(possiblenumber)
if convertednumber != nil
{
    print("Converted number",convertednumber!)
}
else
{
    print("Converted Number is NIL")
}

/*let possiblenumber="Hello"
let convertednumber:Int?
convertednumber = Int(possiblenumber)
if convertednumber != nil
{
    print("Converted number",convertednumber!)
}
else
{
    print("Converted Number is NIL")
}*/

for i in 1...5  // FOR loop - range id defined with 3 dots
{
    print("i = ",i)
    
}

for i in 1..<5  // FOR loop - range id defined with 3 dots
{
    print("New i = ",i)
    
}

let languages:[String]  //array
languages = ["English", "Spanish", "French", "ਪੰਜਾਬੀ"]

for i in languages
{
    print("Language :",i)
}

var answer: Int = 1
for _ in 1...5
{
    answer *= 5;
}
print("answer = ",answer)



var fact:Int = 1
var input:Int = 20
var n:Int = input + 1
if input < 10
{
    for i in 1...10
    {
        print(i*5)
    }
}
else
{
for i in 1...5

    {
        fact = fact * i
    }
    print ("Factorial : ",fact)
}

