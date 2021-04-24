//
//  prettyNumber.swift
//  AlgorithmAndDataStructure
//
//  Created by Yumi Machino on 2021/04/19.
//

import Foundation

// 1. define the subproblem
// d[n][l] = the total number of pretter numbers with n digits, ends with l
// d[1][1] = 1  // 1 digit long, ends with 1 -> 1 way
// d[1][2] = 1  // 1 digit long, ends with 2 -> 1 way
// d[1][3] = 1
// 2. guess how it ends
// 3. recurrence
// d[n][l] = d[n-1][l-1] + d[n-1][l+1]  where 1 <= l <= 8
// d[n][l] = d[n-1][l+1]  where l = 0
// d[n][l] = d[n-1][l-1]  where l = 9
func prettyNumbers(_ n: Int) -> Int {
    var d = [[Int]](repeating: [Int](repeating: 0, count: 10), count: 101)
    /// 一桁の時は0~ 9のみ、全部1way
    for i in 1...9 {
        d[1][i] = 1
    }
    /// n桁目で0で終わる   ....[n-1][0]
    for i in 2...n {
        for j in 0...9 {
            d[i][j] = 0
            /// n桁目で1以上の数字で終わる   ....[n-1][1],
            if j >= 1 {
                d[n][j] += d[n-1][j-1]
            }
            if j <= 8 {
                d[n][j] += d[n-1][j+1]
            }
        }
    }
    var ans = 0
    ///n桁の時のそれぞれのカウントはn[0]...n[9]の合計である
    for i in 0...9 {
        // the number of pretty numbers with n digits that end with 0...9
        ans += d[n][i]
    }
    return ans
}
