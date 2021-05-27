//
//  941-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/9.
//

// Valid Mountain Array
// https://leetcode.com/explore/learn/card/fun-with-arrays/527/searching-for-items-in-an-array/3251/
// https://leetcode.com/problems/valid-mountain-array/

// 有效的山脉数组
// https://leetcode-cn.com/problems/valid-mountain-array/

// MARK: One Pass

func validMountainArray(_ arr: [Int]) -> Bool {
    var index = arr.startIndex

    while arr.index(after: index) < arr.endIndex, arr[index] < arr[arr.index(after: index)] {
        arr.formIndex(after: &index)
    }

    if index == arr.startIndex || index == arr.index(before: arr.endIndex) {
        return false
    }

    while arr.index(after: index) < arr.endIndex, arr[index] > arr[arr.index(after: index)] {
        arr.formIndex(after: &index)
    }

    return index == arr.index(before: arr.endIndex)
}
