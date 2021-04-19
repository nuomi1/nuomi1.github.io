//
//  26-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/17.
//

// Remove Duplicates from Sorted Array
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/727/
// https://leetcode.com/problems/remove-duplicates-from-sorted-array/

// 删除排序数组中的重复项
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2gy9m/
// https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/

// MARK: Two Pointers

func removeDuplicates(_ nums: inout [Int]) -> Int {
    // 数组元素个数小于 2 时不需要处理
    guard nums.count > 1 else {
        return nums.count
    }

    // 对比下标
    var leftIndex = nums.startIndex

    // 扫描下标，跳过初始的对比下标
    for rightIndex in nums.indices.dropFirst() {
        // 对比下标与扫描下标的元素不相等，对比下标前进
        if nums[leftIndex] != nums[rightIndex] {
            nums.formIndex(after: &leftIndex)
            nums[leftIndex] = nums[rightIndex]
        }
    }

    // 返回个数为扫描下标加一
    let distance = nums.distance(from: nums.startIndex, to: nums.index(after: leftIndex))
    return distance
}
