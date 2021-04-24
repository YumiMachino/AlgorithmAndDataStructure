//
//  Pokemon.swift
//  AlgorithmAndDataStructure
//
//  Created by Yumi Machino on 2021/04/20.
//

import Foundation
// dp[i][j] = max(dp[i-1][j] + a[i][j], dp[i][j-1] + a[i][j])
func pokemon() {
}
// d[n] = the number of ways to decode n digits
func numDecodings(_ s: String) -> Int {
    let n = s.count
    let arr = Array(s)
    var d = [Int](repeating: 0, count: s.count + 1)
    d[0] = 1
    if arr[0] == "0" {
        d[1] = 0
    } else {
        d[1] = 1
    }

    if n >= 2 {
        for i in 2...n {
            let firstDigit = Int(String(arr[i - 1]))! // one digit
            if firstDigit >= 1 {
                d[i] += d[i-1]
            }
            let twoDigits = firstDigit + Int(String(arr[i - 2]))! * 10 // two digits
            if twoDigits >= 10 && twoDigits <= 26 {
                d[i] += d[i-2]
            }
        }
    }
    return d[n]
}
