//
//  905-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/13.
//

// Sort Array By Parity
// https://leetcode.com/explore/learn/card/fun-with-arrays/511/in-place-operations/3260/
// https://leetcode.com/problems/sort-array-by-parity/

// 按奇偶排序数组
// https://leetcode-cn.com/problems/sort-array-by-parity/

func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var result = nums

    var leftIndex = nums.startIndex
    var rightIndex = nums.index(before: nums.endIndex)

    for number in nums {
        if number.isMultiple(of: 2) {
            result[leftIndex] = number
            result.formIndex(after: &leftIndex)
        } else {
            result[rightIndex] = number
            result.formIndex(before: &rightIndex)
        }
    }

    return result
}
