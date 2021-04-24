//
//  oneTwoThree.swift
//  AlgorithmAndDataStructure
//
//  Created by Yumi Machino on 2021/04/19.
//

import Foundation

/*
 1. define the subproblem
    d[n] = # of possible ways to represent sum of n using 1, 2, and 3
    d[1] = 1
    d[2] = 2
    d[3] = 4
 2. guess
    end
 3. recurrence
    d[n] = d[n-1] + d[n-2]
 */

func oneTwoThree() {
    var d = [Int](repeating: 0, count: 12)
    /// set up base case
    d[1] = 1
    d[2] = 2
    d[3] = 4
    /// fill the d using for loop
    for i in 4...11 {
        d[i] = d[i - 1] + d[i - 2] + d[i - 3]
    }
    var t = Int(readLine()!)!
    while t > 0 {
        let n = Int(readLine()!)!
        print(d[n])
        t -= 1
    }
}
