//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a = [10,20,30,40,50]
print("a[0] : \(a[0])") // prints first entry in array which starts from zero
print("Array: ",a)  // prints whole array

let j1 = [10,20]
print("J1: ",j1)

var b = [Int]();
print("Size of array b: \(b.count)")
b.append(100)
print("b[0]: \(b[0])")

b[0] = 1000
print("Aray B:",b)

b[0] = 1000
print("b[0]: \(b[0])")

//assigning the default value
var num1 = [Int](repeating: 1, count: 3)
print("num1 array: \(num1)")
var num2 = [Int](repeating: 5, count: 3)
print("num2 array: \(num2)")
var nummerge = num1 + num2
print("Merged Array: \(nummerge)")

//Declare to store any data type vale
var c = [Any]()
print("Size of array c: \(c.count)")
c.append(100)
c.append("Singh")
c.append(100.23)
print("C Array: \(c)")

var x = a[1...3]
for t in x
{
    print("x : \(t)")
}

// string array and for each with(key,value)

var shoppinglist:[String] = ["Eggs","Milk"]
for (index,value) in shoppinglist.enumerated()
{
    print("Items \(index): \(value)")
}
print("The Shopping List Contains \(shoppinglist.count) items")

if shoppinglist.isEmpty
{
    print("List is empty")
}
else
{
    print("List is not empty")
}

shoppinglist.append("Flour")
print("Shopping List Array \(shoppinglist)")

shoppinglist += ["Chocolate","Cheese","Butter"]

shoppinglist.insert("Maple syrup",at: 0)
print("Shopping List Array \(shoppinglist)")

let maplesyrup = shoppinglist.remove(at: 2)
let apple = shoppinglist.removeLast()
print("Shopping List Array \(shoppinglist)")

//

//Declare set in swift
var grades: Set<Character> = []
grades.insert("A")
grades.insert("B")
print("Grade: \(grades)")
print("Grades no of elements",grades.count)

var favoriteGenres: Set<String> = ["Rock","Clasical", "Hip Hop"]
print("Fav Gen: \(favoriteGenres)")

print("I Have \(favoriteGenres.count) Fav music genres")

if favoriteGenres.isEmpty
{
    print("not picky")
}
else
{
    print("i have particular pref.")
}

favoriteGenres.insert("Jazz")
print("Fav Gen. \(favoriteGenres)")
if let removeGenre = favoriteGenres.remove("Rock")
{
    print("\(removeGenre)? I am over it")
}
else
{
    print("Never Cared for that")
}

print("fav gen: \(favoriteGenres)")
for genre in favoriteGenres.sorted()
{
    print("\(genre)")
}


let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

print(oddDigits.union(evenDigits).sorted()) //merges both
print(oddDigits.intersection(evenDigits).sorted()) //prints same entry from both
print(oddDigits.subtract(singleDigitPrimeNumbers).sorted()) //compare both values and display the which are not common (show first set of info which are uncommon in second set)
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())  //

