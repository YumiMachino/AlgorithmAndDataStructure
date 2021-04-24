//
//  nonDecreasingOrderDigits.swift
//  AlgorithmAndDataStructure
//
//  Created by Yumi Machino on 2021/04/19.
//

import Foundation
// 1. define the subproblem
// d[n][l] = the total number of pretter numbers with n digits, ends with l
// d[1][1] = 1  // 1 digit long, ends with 1 -> 1
// d[1][2] = 1
// d[1][3] = 1
// 2. guess how it ends
// 3. recurrence
// d[n][l] = sum(d[n-1][k]) where 0 <= k <= l
func nonDecreasingDigits(_ n: Int) -> Int {
    var d = [[Int]](repeating: [Int](repeating: 0, count: 10), count: n + 1)
    /// base case
    for i in 0...9 {
        d[1][i] = 1
    }
    for i in 2...n {
        for j in 0...9 {
            for k in 0...j {
                d[i][j] += d[i-1][k]
            }
        }
    }
    var ans = 0
    for i in 0...9 {
        ans += d[n][i]
    }
    return ans
}


// 1. define the subproblem
// d[n] = the total number of subsequence with index?

// d[1][0] = 1  // 1 digit long, ends with 1 -> 1
// d[1][1] = 1
// d[1][3] = 1


// 2. guess how it ends
// 3. recurrence
// d[n][l] = sum(d[n-1][k]) where 0 <= k <= l


