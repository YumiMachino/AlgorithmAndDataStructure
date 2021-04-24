//
//  makeOne.swift
//  AlgorithmAndDataStructure
//
//  Created by Yumi Machino on 2021/04/19.
//

import Foundation

// 1. define the subproblem
// d[n] = for n, the min number of operations to make 1
// 2. guess
// how this starts?
// 3. recurrence
// d[n] = min(d[n/3] + 1, d[n/2] + 1, d[n-1] + 1)
func makeOne(_ n: Int) -> Int {
    var d = [Int](repeating: 0, count: n + 1)
    d[1] = 0
    for i in 2...n {
        d[i] = d[i - 1] + 1
        if i % 2 == 0 && d[i] > d[i / 2] + 1 {
            d[i] = d[i / 2] + 1
        }
        if i % 3 == 0 && d[i] > d[i / 3] + 1 {
            d[i] = d[i / 3] + 1
        }
    }
    return d[n]
}
var d = [Int](repeating: 0, count: 1000001)
func makeOneTopBottom(_ n: Int) -> Int {
    if n == 1 {
        return 0;
    }
    if d[n] > 0 {
        return d[n]
    }
    d[n] = makeOneTopBottom(n - 1) + 1
    if n % 2 == 0 {
        let tmp = makeOneTopBottom(n / 2) + 1
        d[n] = d[n] > tmp ? tmp : d[n]
    }
    if n % 3 == 0 {
        let tmp = makeOneTopBottom(n / 3) + 1
        d[n] = d[n] > tmp ? tmp : d[n]
    }
    return d[n]
}



