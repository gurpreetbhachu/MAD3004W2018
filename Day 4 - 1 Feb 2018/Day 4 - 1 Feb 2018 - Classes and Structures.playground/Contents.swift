//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// =========== Classes and Structures in Swift ===============

// =========== Declaring a Struct ==============

struct project
{
    var title = ""
    var hours = 0
    
    func display()
    {
    print("Project Title : ",title)
        print("Total Hours : ",hours)
    }
}
//Declaring instance of Structure
var LMSProject = project(title: "Moodle", hours: 200)

//print(LMSProject)

LMSProject.display()

// ======= Class Declaration =========

class Manager
{
    var name: String = ""
    var productOwner : Bool = true
    var currentProjects = project()
}

//creating instance
let mgrCanada = Manager()
mgrCanada.name = "GS"
mgrCanada.productOwner = true
mgrCanada.currentProjects = project(title: "Sales Reporting", hours: 20)

print("mgrCanada Name: ",mgrCanada.name)
print("mgrCanada PO : ",mgrCanada.productOwner)
print("mgrCanada CP : ",mgrCanada.currentProjects.title)
print("mgrCanada CP Hours : ",mgrCanada.currentProjects.hours)

//calling function of structure project
mgrCanada.currentProjects.display()

//structures are VALUE TYPES
struct address
{
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}

var Lambton = address()
print("Lambton: ", Lambton)
var cestar = Lambton

print("Cestar :",Lambton)

cestar.street = "265 Yorkland Blvd"
cestar.postalCode = "M1H3Y3"

print ("New Cestar: ", cestar)
print("Lambton: ",Lambton)

//Classes are reference type
class Institute
{
    var street = "265 Yorkland Blvd"
    var city = "NY"
    var postalcode = "M1H1Y1"
}

var myLambton = Institute()
print ("myLambton Street: ",myLambton.street)
print("myLambton city: ",myLambton.city)

var myCestar = myLambton
print("myCes Street: ",myCestar.street)
print("myCes City: ",myCestar.city)

print("myLam Street: ",myLambton.street)
print("myLam PCode: ",myLambton.postalcode)

//identical to "==="

if myLambton === myCestar
{
    print("Both are same")
}
else
{
    print ("Both are not same")
}

