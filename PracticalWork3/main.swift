//
//  main.swift
//  PracticalWork3
//
//  Created by Artemy Volkov on 19.09.2022.
//

import Foundation

//Task 1

print("Enter the numbers separated by a space: ")

var textOfNumbers = ""

if let input = readLine() {
    textOfNumbers = input
}

let numbers = textOfNumbers.split(separator: " ").map {
    if let number = Int($0) {
        return number
    } else { fatalError("Bad input") }
}

//Task 2.1 and 3

var sumOfNumbers = 0

for number in numbers {
    sumOfNumbers += number
}

print("Sum of numbers in array using for-loop equals: \(sumOfNumbers)")

//Task 2.2 and 3

sumOfNumbers = 0

var counter = 0

while counter < numbers.count {
    sumOfNumbers += numbers[counter]
    counter += 1
}

print("Sum of numbers in array using while-loop equals: \(sumOfNumbers)")

//Task 2.3 and 3

sumOfNumbers = 0

counter = 0

//repeat-while in Swift is the same as do-while in other languages

repeat {
    sumOfNumbers += numbers[counter]
    counter += 1
} while counter < numbers.count

print("Sum of numbers in array using repeat-while-loop equals: \(sumOfNumbers)")

//Task 4

print("The smallest element of the array: \(numbers.min() ?? 0)")

print("The largest element of the array: \(numbers.max() ?? 0)")

//Task 5

let arithmeticMean = sumOfNumbers / numbers.count

print("Arithmetic mean of an array equals: \(arithmeticMean)")

//Task 6

print("Array sorted in ascending order: \(numbers.sorted(by: <))")

print("Array sorted in descending order: \(numbers.sorted(by: >))")
