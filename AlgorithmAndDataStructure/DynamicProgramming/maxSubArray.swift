//
//  maxSubArray.swift
//  AlgorithmAndDataStructure
//
//  Created by Yumi Machino on 2021/04/20.
//

import Foundation
//
// d[i] = the largest sum where nums[i] is the last element
// recurrence
// d[n] = max(d[n-1] + nums[n], nums[n])
// - shoud I restart from n?
// - should I keep adding from n-1th?
func maxSubArray(_ nums: [Int]) -> Int {
    let n = nums.count
    var d = [Int](repeating: 0, count: n + 1)
    for i in 0..<n {
        d[i] = nums[i]
        if i == 0 { continue }
        if d[i] < d[i - 1] + nums[i] {
            d[i] = d[i - 1] + nums[i]
        }
    }
    return d.max()!
}
