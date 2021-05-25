//
//  1089-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/4.
//

// Duplicate Zeros
// https://leetcode.com/explore/learn/card/fun-with-arrays/525/inserting-items-into-an-array/3245/
// https://leetcode.com/problems/duplicate-zeros/

// 复写零
// https://leetcode-cn.com/problems/duplicate-zeros/

// MARK: Two pass, O(1) space

func duplicateZeros(_ arr: inout [Int]) {
    var fastIndex = arr.index(before: arr.startIndex)
    var slowIndex = arr.index(before: arr.startIndex)
    var duplicateLast = false

    while arr.index(after: fastIndex) < arr.endIndex {
        arr.formIndex(after: &fastIndex)
        arr.formIndex(after: &slowIndex)

        if arr[slowIndex] == 0 {
            if arr.index(after: fastIndex) == arr.endIndex {
                duplicateLast = true
            } else {
                arr.formIndex(after: &fastIndex)
            }
        }
    }

    while arr.index(before: fastIndex) >= arr.startIndex {
        arr[fastIndex] = arr[slowIndex]

        if arr[slowIndex] == 0 {
            if duplicateLast {
                duplicateLast = false
            } else {
                arr.formIndex(before: &fastIndex)
                arr[fastIndex] = 0
            }
        }

        arr.formIndex(before: &fastIndex)
        arr.formIndex(before: &slowIndex)
    }
}
