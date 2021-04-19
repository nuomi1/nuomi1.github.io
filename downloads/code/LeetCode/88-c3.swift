//
//  88-c3.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/17.
//

// Merge Sorted Array
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/96/sorting-and-searching/587/
// https://leetcode.com/problems/merge-sorted-array/

// 合并两个有序数组
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnumcr/
// https://leetcode-cn.com/problems/merge-sorted-array/

// MARK: 逆向双指针

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    // nums1 扫描下标
    var i = m - 1
    // nums2 扫描下标
    var j = n - 1

    while i >= 0 || j >= 0 {
        if j < 0 || (i >= 0 && nums1[i] > nums2[j]) {
            nums1[i + j + 1] = nums1[i]
            i -= 1
        } else {
            nums1[i + j + 1] = nums2[j]
            j -= 1
        }
    }
}
