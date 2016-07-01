//: Playground - noun: a place where people can play

import UIKit

//Given a set of N numebrs in the range 0-100 make a count of the numner of students that passed the examination 50 or above = pass

func numberOfPassing (testScores: [Int]) -> Int {

    var count = 0

    for score in testScores {
        if (score >= 50){
            count+=1
        }
    }
    return count
}

var exArray = [40, 30, 90, 100, 35]
numberOfPassing(testScores: exArray)