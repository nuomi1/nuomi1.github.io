//
//  412-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/25.
//

// Fizz Buzz
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/102/math/743/
// https://leetcode.com/problems/fizz-buzz/

// Fizz Buzz
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xngt85/
// https://leetcode-cn.com/problems/fizz-buzz/

// MARK: Naive Approach

func fizzBuzz(_ n: Int) -> [String] {
    var result = [String]()
    result.reserveCapacity(n)

    for index in 1 ... n {
        switch index {
        case _ where index.isMultiple(of: 3) && index.isMultiple(of: 5):
            result.append("FizzBuzz")
        case _ where index.isMultiple(of: 3):
            result.append("Fizz")
        case _ where index.isMultiple(of: 5):
            result.append("Buzz")
        default:
            result.append("\(index)")
        }
    }

    return result
}
