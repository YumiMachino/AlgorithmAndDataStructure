//
//  SumOfSquareNum2.swift
//  AlgorithmAndDataStructure
//
//  Created by Yumi Machino on 2021/04/20.
//

import Foundation
// 1. define the subproblem
// d[n] = the minimum number of squares needed to sum to N
// 2. guessing
// d[0] = 0
// d[1] = 1
// d[2] = 2
// d[3] = 3
// d[4] = 1
// ...
//
// d[n]     = a^2 + b^2 + ... + d^2 + i^2 + j^2   1 <= j * j <= n
// d[n-j^2] = a^2 + b^2 + ... + d^2 + i^2
// 3. recurrence relation
// d[n] = min(d[n - j^2] + 1) where 1 <= j * j <= n
// Time Complexity: O(N sqrt(N))
func minSquareSum(_ n: Int) -> Int {
    var d = [Int](repeating: 0, count: n + 1)
    for i in 1...n {
        d[i] = i
        var j = 1
        while j * j <= i {
            if d[i] > d[i - j * j]  + 1 {
                d[i] = d[i - j * j] + 1
            }
            j += 1
        }
    }
    return d[n]
}
