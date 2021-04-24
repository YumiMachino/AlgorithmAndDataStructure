//
//  ClimbStairs.swift
//  AlgorithmAndDataStructure
//
//  Created by Yumi Machino on 2021/04/19.
//

import Foundation
/*
How to solve in dynamic programming way?
 
1. define the subproblem
    d[n] = # of distict ways to reach the top for n stairs
    d[1] = 1
    d[2] = 2
...
2. guess (find the range)
    : let's see how it ends...
    - there are only 2 ways to reach the top
    d[n-2]
    d[n-1]
3. recurrence
    d[n] = d[n-1] + d[n-2]
*/

class Solution {
    public func climbStairs(n: Int) -> Int {
        if (n <= 2) {
            return n;
        }
        var d = [Int](repeating: 0, count: n + 1)
        /// set the base case
        d[1] = 1;
        d[2] = 2;
        /// loop through the rest to fill d
        for i in 3...n {
            d[i] = d[i-1] + d[i-2]
        }
        return d[n];
    }
}
