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

