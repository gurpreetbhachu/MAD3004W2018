//: Playground - noun: a place where people can play

//import UIKit

//var str = "Hello, playground"

//classes

class Employee
{
    var EmpID: Int?
    var EmpName: String?
    var BasicPay: Double?
    
    //Initilizer for default values
    init()
    {
        self.EmpID=0
        self.EmpName=""
        self.BasicPay=0
    }
    
    init(ID: Int, name: String, BasicPay: Double)
    {
        self.EmpID = ID
        self.EmpName = name
        self.BasicPay = BasicPay
    }
    
    func display()
    {
        print("Emp ID: ", self.EmpID!) //when we are refering with in the class use self
        print("Emp Name: ", self.EmpName!)  // use "!" when we declared the datatype as optional
        print("Basic Pay: ", self.BasicPay!)
    }
}

var emp1 = Employee()
emp1.EmpID = 101
emp1.EmpName = "Gurpreet"
emp1.BasicPay = 5000
emp1.display()

class permanentEmployee: Employee
{
    var vacationWeeks: Int?
    
    //dafault initializer
    override init()
    {
        super.init()
        self.vacationWeeks = 0
    }
    
    //parametrized initializer of subclass
    init(eID: Int, eName: String, eBasicPay: Double, week: Int)
    {
        super.init(ID: eID, name: eName, BasicPay: eBasicPay)
        self.vacationWeeks = week
    }
    
   override func display()  //when 2 func are same, use override only in sub class
    {
        super.display()
        print("Vacation Weeks: ",vacationWeeks!)
    }
}

var obj2 = permanentEmployee()
obj2.EmpID = 102
obj2.EmpName = "Singh"
obj2.BasicPay = 6000
obj2.vacationWeeks = 20
obj2.display()

print("--------------------")


var emp3 = Employee()
emp3.display()

print("--------------------")

var emp4 = Employee(ID: 105, name: "ABC", BasicPay: 4523.25)
emp4.display()

print("--------------------")

var emp5 = permanentEmployee(eID: 106, eName: "XYZ", eBasicPay: 5623.89, week: 10)
emp5.display()

print("--------------------")

class Payroll: permanentEmployee
{
    var finalpay: Double?
    override init()
    {
        super.init()
        self.finalpay = 0
    }
    
    override init(eID: Int,eName: String, eBasicPay: Double, week: Int){
        super.init(eID: eID, eName: eName, eBasicPay: eBasicPay, week: week)
        self.finalpay = 0
        
    }
    override func display() {
        super.display()
        self.calculate()
        print("net pay: ",self.finalpay)
    }
    
    func calculate() {
        var vw = self.vacationWeeks!
        if vw > 5 {
            self.finalpay! = self.BasicPay! - 10
        }
        else {
            self.finalpay! = self.BasicPay!
        }
    }
}

var obj7 = Payroll(eID: 105, eName: "Bob", eBasicPay: 5000, week: 8)
obj7.display()

//manipulate  object array[]

var janPayroll = [Payroll]()
let noOfEmployees = 2

for i in 0..<2
{
    janPayroll.append(Payroll(eID: 107, eName: "GS", eBasicPay: 6655.25, week: 7))
    janPayroll[i].display()
}



