//
//  main.swift
//  Day 9 - 8 Feb - Part2
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//print("Hello, World!")

//======== Topic - Subscripts ========

struct Timetable
{
    let multiplier: Int
    
    subscript(index: Int) -> Int
    {
        return multiplier * index
    }
}

let threeTimetable = Timetable(multiplier: 3)
print("six times three is \(threeTimetable[6])")

print("===========================")

    struct Matrix
    {
    
        let rows: Int, columns: Int
        var grid: [Double]
    
        init(rows: Int, columns: Int)
        {
            self.rows = rows
            self.columns = columns
            grid = Array(repeating: 0.0, count: rows * columns)
        }
    
        func indexIsValid(row: Int, column: Int) -> Bool
        {
            return row >= 0 && row < rows && column >= 0 && column < columns
        }
        
        subscript(row: Int, column: Int) -> Double
        {
            get
            {
                assert(indexIsValid(row: row, column: column), "Index out of range")
                return grid[(row * columns) + column]
            }
            set
            {
                assert(indexIsValid(row: row, column: column), "Index out of range")
                grid[(row * columns) + column] = newValue
            }
        }
    }

var matrix = Matrix(rows: 2, columns: 2)

matrix[0, 0] = 1
matrix[0, 1] = 2
matrix[1, 0] = 3
matrix[1, 1] = 4

print(matrix.grid)
