//
//  977-c3.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/3.
//  Updated by nuomi1 on 2021/5/18.
//

// Squares of a Sorted Array
// https://leetcode.com/explore/learn/card/fun-with-arrays/521/introduction/3240/
// https://leetcode.com/explore/learn/card/fun-with-arrays/523/conclusion/3574/
// https://leetcode.com/problems/squares-of-a-sorted-array/

// 有序数组的平方
// https://leetcode-cn.com/problems/squares-of-a-sorted-array/

// MARK: 双指针

func sortedSquares(_ nums: [Int]) -> [Int] {
    var leftIndex = nums.startIndex
    var rightIndex = nums.index(before: nums.endIndex)

    var result = Array(repeating: 0, count: nums.count)
    var currentIndex = result.index(before: result.endIndex)

    while leftIndex <= rightIndex {
        let lhs = nums[leftIndex] * nums[leftIndex]
        let rhs = nums[rightIndex] * nums[rightIndex]

        if lhs > rhs {
            result[currentIndex] = lhs
            nums.formIndex(after: &leftIndex)
        } else {
            result[currentIndex] = rhs
            nums.formIndex(before: &rightIndex)
        }

        result.formIndex(before: &currentIndex)
    }

    return result
}
