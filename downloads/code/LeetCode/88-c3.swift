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
    var indexI = m - 1
    // nums2 扫描下标
    var indexJ = n - 1

    while indexI >= nums1.startIndex || indexJ >= nums2.startIndex {
        let distance = nums2.distance(from: nums2.startIndex, to: indexJ)
        let currentIndex = nums1.index(indexI, offsetBy: distance + 1)
        if indexJ < nums2.startIndex || (indexI >= nums1.startIndex && nums1[indexI] > nums2[indexJ]) {
            nums1[currentIndex] = nums1[indexI]
            nums1.formIndex(before: &indexI)
        } else {
            nums1[currentIndex] = nums2[indexJ]
            nums2.formIndex(before: &indexJ)
        }
    }
}
