//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func twoSum ( sumsArr:[Int], n:Int) -> ([Int]) {
    
    var sumsArr = sumsArr
    var sumsArray = [Int]()

    for num in 0 ..< sumsArr.count {
        for j in num + 1 ..< sumsArr.count {
            if (sumsArr[num] + sumsArr[j] == n) {
                sumsArray.append(sumsArr[num])
                sumsArray.append(sumsArr[j])
            }
        }
    }
    return sumsArray
}



twoSum(sumsArr: [3, 5, 2, -4, 8, 11], n: 5)

//Alternative Solution to TwoSum

struct Inputs {
    let indx: Int
    let num: Int

    init(_ indx: Int, _ num: Int) {
        self.indx = indx
        self.num = num
    }
}

func altTwoSum(numbers: [Int], target: Int) -> (Int, Int)? {
    for (index, digit) in numbers.enumerated() {
        if let other = numbers.index(of: target - digit) {
            return (index + 1, Int(other) + 1)
        }
    }
    return nil
}

altTwoSum(numbers: [1, 2, 3, 4], target: 6)

