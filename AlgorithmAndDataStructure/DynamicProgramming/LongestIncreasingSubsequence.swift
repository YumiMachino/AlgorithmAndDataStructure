//
//  LongestIncreasingSubsequence.swift
//  AlgorithmAndDataStructure
//
//  Created by Yumi Machino on 2021/04/20.
//

import Foundation

/*
 - LeetCode #300 Longest Increasing Subsequence
 https://leetcode.com/problems/longest-increasing-subsequence/
 */

/* 1. define the subproblem
 d[n] = the length of the longest increasing subsequence where the last element is arr[n]
 arr = [10,9,2,5,3,7,101,18]
   d = [ 1,1,1,2,2,3, 4, 4]
 2. guessing
 a[0], a[1], ..., a[j], a[i]
 3. recurrence
 d[i] = max(d[j] + 1, 1) where 0 <= j <= i-1  && (a[i] > a[j])
 (d[i] = 1 if there's no elements less than a[i] for all 0 <= j <= i-1)
 Time complexity = O(n^2)
*/

func lengthOfLIS(_ nums: [Int]) -> Int {
    var d = [Int](repeating: 1, count: nums.count + 1)
    for i in 1...nums.count {
        d[i] = 1
        for j in 0...i-1 {
            if nums[j] < nums[i] && d[i] < d[j] + 1 {
                d[i] = d[j] + 1
            }
        }
    }
    return d.max()!
}

