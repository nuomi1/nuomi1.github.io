//
//  27-e2.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/6.
//

// Remove Element
// https://leetcode.com/explore/learn/card/fun-with-arrays/526/deleting-items-from-an-array/3247/
// https://leetcode.com/problems/remove-element/

// 移除元素
// https://leetcode-cn.com/problems/remove-element/

// MARK: Two Pointers - when elements to remove are rare

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var leftIndex = nums.startIndex
    var rightIndex = nums.index(before: nums.endIndex)

    while leftIndex < nums.index(after: rightIndex) {
        if nums[leftIndex] == val {
            nums[leftIndex] = nums[rightIndex]
            nums.formIndex(before: &rightIndex)
        } else {
            nums.formIndex(after: &leftIndex)
        }
    }

    let distance = nums.distance(from: nums.startIndex, to: rightIndex)
    return distance + 1
}
