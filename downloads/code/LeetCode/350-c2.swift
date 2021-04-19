//
//  350-c2.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/22.
//

// Intersection of Two Arrays II
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/674/
// https://leetcode.com/problems/intersection-of-two-arrays-ii/

// 两个数组的交集 II
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2y0c2/
// https://leetcode-cn.com/problems/intersection-of-two-arrays-ii/

// MARK: 排序 + 双指针

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    // 排序
    let nums1 = nums1.sorted()
    let nums2 = nums2.sorted()

    // 扫描下标
    var iIndex = nums1.startIndex
    var jIndex = nums2.startIndex

    var result = [Int]()

    // 比较 nums1[iIndex] 与 nums2[jIndex] 的大小
    // 不相等时较小者的扫描下标前进
    // 相等时即为重复元素且扫描下标同时前进
    while iIndex < nums1.endIndex, jIndex < nums2.endIndex {
        switch nums1[iIndex] - nums2[jIndex] {
        case ...(-1):
            nums1.formIndex(after: &iIndex)
        case 0:
            result.append(nums1[iIndex])
            nums1.formIndex(after: &iIndex)
            nums2.formIndex(after: &jIndex)
        case 1...:
            nums2.formIndex(after: &jIndex)
        default:
            fatalError()
        }
    }

    return result
}
