//
//  SumOfSquareNum.swift
//  AlgorithmAndDataStructure
//
//  Created by Yumi Machino on 2021/04/20.
//

import Foundation
// Cannot do DP, no overlapping subproblems
// Since both a and b  0 <= a, b <= int(sqrt(c))
// Time Complexity: O(sqrt(N))
func judgeSquareSum(_ c: Int) -> Bool {
  let sqrtc = Int(Double(c).squareRoot()) + 1
  var a = 0
  var b = sqrtc
  while a <= b {
    if a * a + b * b < c {
      a += 1
    } else if a * a + b * b > c {
      b -= 1
    } else {
      return true
    }
  }
  return false
}
