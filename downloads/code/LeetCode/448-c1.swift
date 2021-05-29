//
//  448-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/17.
//

// Find All Numbers Disappeared in an Array
// https://leetcode.com/explore/learn/card/fun-with-arrays/523/conclusion/3270/
// https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/

// 找到所有数组中消失的数字
// https://leetcode-cn.com/problems/find-all-numbers-disappeared-in-an-array/

// MARK: 原地修改

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var numbers = nums

    for number in numbers {
        let index = number - 1
        numbers[index] += nums.count
    }

    var result: [Int] = []

    for index in numbers.indices {
        if numbers[index] <= nums.count {
            result.append(index + 1)
        }
    }

    return result
}
