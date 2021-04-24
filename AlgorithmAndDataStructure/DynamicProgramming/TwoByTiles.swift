//
//  TwoByTiles.swift
//  AlgorithmAndDataStructure
//
//  Created by Yumi Machino on 2021/04/19.
//

import Foundation

// 1. define the subproblem
// d[n] = # of possible ways to fill up 2xN (垂直は考えず平行の数だけ考慮する)
// d[1] = 1
// d[2] = 2
// 2. guess
// end
// 3. recurrence
// d[n] = d[n-1] + d[n-2]
func twoByNTiles(_ n: Int) -> Int {
    if n <= 2 { return n }
    var d = [Int](repeating: 0, count: n + 1)
    d[1] = 1
    d[2] = 2
    for i in 3...n {
        d[i] = d[i - 1] + d[i - 2]
    }
    return d[n]
}

func twoByNTiles2(_ n: Int) -> Int {
    if n <= 1 { return n }
    var d = [Int](repeating: 0, count: n + 1)
    d[1] = 1
    d[2] = 3
    for i in 3...n {
        d[i] = d[i - 1] + d[i - 2] * 2
    }
    return d[n]
}
