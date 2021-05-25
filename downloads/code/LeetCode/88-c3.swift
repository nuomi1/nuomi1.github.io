//
//  88-c3.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/17.
//  Updated by nuomi1 on 2021/5/5.
//

// Merge Sorted Array
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/96/sorting-and-searching/587/
// https://leetcode.com/explore/learn/card/fun-with-arrays/525/inserting-items-into-an-array/3253/
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
    // nums1 赋值下标
    var indexTail = m + n - 1

    while indexI >= nums1.startIndex || indexJ >= nums2.startIndex {
        if indexI < nums1.startIndex {
            nums1[indexTail] = nums2[indexJ]
            nums2.formIndex(before: &indexJ)
        } else if indexJ < nums2.startIndex {
            nums1[indexTail] = nums1[indexI]
            nums1.formIndex(before: &indexI)
        } else if nums1[indexI] > nums2[indexJ] {
            nums1[indexTail] = nums1[indexI]
            nums1.formIndex(before: &indexI)
        } else {
            nums1[indexTail] = nums2[indexJ]
            nums2.formIndex(before: &indexJ)
        }
        nums1.formIndex(before: &indexTail)
    }
}
